using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Threading.Tasks;
using System.Xml.Serialization;
using Chess;
using Chess.EngineWrappers;
using GalaSoft.MvvmLight.Command;
using GalaSoft.MvvmLight.Threading;
using TextCopy;

namespace ChessVM.GameViewModels
{

	public abstract class GameViewModel : ViewModelBase, IDisposable
	{
		public bool IsBoardFlipped { get; private set; }


		protected GameViewModel(Game game)
		{
			_game = game ?? throw new ArgumentNullException(nameof(game));
			StartPosition = new PositionViewModel(_game.StartPosition, IsBoardFlipped);
			CurrentPosition = StartPosition;
			DisplayPosition = CurrentPosition;
			InitializeChessEngine();
			AnalyzeCommand = new RelayCommand(() => { AnalyzeAsync(); });
		}

		private readonly Game _game;

		public string WhitePlayer
		{
			get => _game.WhitePlayer;
			set => _game.WhitePlayer = value;
		}

		public string BlackPlayer
		{
			get => _game.BlackPlayer;
			set => _game.BlackPlayer = value;
		}

		public string Event
		{
			get => _game.Event;
			set => _game.Event = value;
		}

		public string Site
		{
			get => _game.Site;
			set => _game.Site = value;
		}


		public PositionViewModel StartPosition { get; }
		public PositionViewModel CurrentPosition { get; private set; }
		public PositionViewModel DisplayPosition { get; set; }

			public IEngineWrapper Engine { get; private set; }

		private readonly ObservableCollection<string> _engineOutput = new();
		public ReadOnlyObservableCollection<string> EngineOutput { get; private set; }

		private readonly ObservableCollection<string> _engineLines = new();
		public ReadOnlyObservableCollection<string> EngineLines { get; private set; }

		private string[] _engineMoves;
		private readonly Random _rand = new();

		public RelayCommand FlipBoardCommand => new(FlipBoard);

		public GameState State => _game.State;
		public GameStateReason StateReason => _game.StateReason;

		public string FEN => CurrentPosition?.FEN;

		private void InitializeChessEngine()
		{
			var serializer = new XmlSerializer(typeof(List<EngineDefinition>));
			using (var strm = File.OpenRead("engine_config.xml"))
			{
				var engines = (List<EngineDefinition>)serializer.Deserialize(strm);
				var definition = engines.First();

				Engine = definition.Type switch
				{
					EngineType.Uci => new UciEngineWrapper(definition.ExecutablePath),
					_ => throw new ApplicationException($"Invalid engine type {definition.Type}"),
				};
				SetEngineOptions(definition);
			}

			for (int i = 0; i < 5; i++)
				_engineLines.Add("-");

			EngineOutput = new ReadOnlyObservableCollection<string>(_engineOutput);
			EngineLines = new ReadOnlyObservableCollection<string>(_engineLines);
			_engineMoves = new string[_engineLines.Count];
			Engine.EngineOutput += Engine_EngineOutput;
		}

		protected abstract void SetEngineOptions(EngineDefinition definition);

		private int _depth = -1, _seldepth = -1;

		private void Engine_EngineOutput(object sender, DataReceivedEventArgs e)
		{
			int index = -1;
			string line = "";
			var output = e.Data.Split(' ');
			for (int i = 0; i < output.Length; i++)
			{
				if (output[i].ToUpperInvariant() == "MULTIPV" && i < output.Length - 1)
					if (!int.TryParse(output[i + 1], out index))
						break;
				if (output[i].ToUpperInvariant() == "PV")
					line = string.Join(" ", output.Skip(i + 1));
			}

			DispatcherHelper.CheckBeginInvokeOnUI(() =>
			{
				if (index > 0 && index <= _engineLines.Count)
				{
					_engineLines[index - 1] = line;
					_engineMoves[index - 1] = e.Data;
				}

				_engineOutput.Insert(0, e.Data);
				while (_engineOutput.Count > 200)
					_engineOutput.RemoveAt(_engineOutput.Count - 1);

				string dp = GetLastEngineValue("depth");
				string sd = GetLastEngineValue("seldepth");

				if (int.TryParse(dp, out _depth) && int.TryParse(sd, out _seldepth) && _seldepth > 0 && _depth > 2 * _seldepth)
					Engine.Stop();
			});
		}


		protected abstract void OnHumanMove();
		protected abstract void OnEngineMove();

		protected virtual void RaiseEngineMove()
		{
			_depth = -1;
			_seldepth = -1;
			OnEngineMove();
		}

		protected virtual bool ApplyMove(MoveViewModel move)
		{
			if (move == null) throw new ArgumentNullException(nameof(move));
			_game.ApplyMove(move.Move);
			CurrentPosition = new PositionViewModel(_game.CurrentPosition, IsBoardFlipped, move.Move);
			OnPropertyChanged(nameof(State));
			OnPropertyChanged(nameof(StateReason));
			OnPropertyChanged(nameof(PGN));
			return _game.CurrentPosition.CanPlay;
		}

		public Task ApplyBestEngineMove(int moveTime, int accuracy)
		{
			return Task.Run(delegate
				{
					DispatcherHelper.CheckBeginInvokeOnUI(_engineOutput.Clear);
					Engine.SetPosition(CurrentPosition.FEN);
					//GetBestMove() muss gecallt werden, damit wir MultiPV lines bekommen
					var move = CurrentPosition.Position.GetGameMove(Engine.GetBestMove(moveTime));
					if (accuracy > 0)
						move = GetRandomEngineMove(accuracy) ?? move;
					if (ApplyMove(new MoveViewModel(move, IsBoardFlipped)))
						RaiseEngineMove();
				});
		}

		private GameMove GetRandomEngineMove(int accuracy)
		{
			if (!_engineMoves[0].Contains("score cp"))
				return null;

			var moves = _engineMoves
						.Where(m => m.Contains("score cp"))
						.Distinct().Select(li => new
						{
							Score = Convert.ToInt32(li.Substring(li.IndexOf("score cp") + 9, li.IndexOf(" ", li.IndexOf("score cp") + 10) - li.IndexOf("score cp") - 9)),
							Depth = Convert.ToInt32(li.Substring(li.IndexOf(" depth ") + 7, li.IndexOf(" ", li.IndexOf(" depth ") + 8) - li.IndexOf(" depth ") - 7)),
							Line = li[(li.IndexOf(" pv ") + 4)..].Split(' '),
							Description = li[(li.IndexOf(" pv ") + 4)..]
						})
						.OrderByDescending(s => s.Score)
						.ToList();

			if (moves.Count == 0)
				return null;

			int top = moves[0].Score;
			var candidates = moves.Where(m => m.Score >= top - accuracy).ToArray();
			string lan = candidates[_rand.Next(candidates.Length)].Line[0];
			return CurrentPosition.Position.GetGameMove(lan);
		}

		public void FlipBoard()
		{
			IsBoardFlipped = !IsBoardFlipped;
			DisplayPosition.IsBoardFlipped = IsBoardFlipped;
		}

		public void Dispose()
		{
			Engine?.Dispose();
			GC.SuppressFinalize(this);
		}

		public string PGN => _game.GetPGN();

		#region Repertoire Reader

		private const string WHITE_REPERTOIRE_PGN = @"Repertoire\white.pgn";
		private const string BLACK_REPERTOIRE_PGN = @"Repertoire\black.pgn";

		private static Dictionary<string, Move> _repertoire;
		protected static IReadOnlyDictionary<string, Move> Repertoire => _repertoire ??= LoadRepertoire();

		private static Dictionary<string, Move> LoadRepertoire()
		{
			_repertoire = new Dictionary<string, Move>();
			LoadRepertoire(Side.White, WHITE_REPERTOIRE_PGN);
			LoadRepertoire(Side.Black, BLACK_REPERTOIRE_PGN);
			return _repertoire;
		}

		private static void LoadRepertoire(Side side, string repertoireFilePath)
		{
			try
			{
				string dir = Path.GetDirectoryName(Assembly.GetExecutingAssembly().Location);
				string file = Path.Combine(dir, repertoireFilePath);
				string pgn = File.ReadAllText(file);
				var rep = Game.FromPGN(pgn);
				AddToRepertoire(rep.StartPosition, side);
			}
			catch
			{
				//Ignored intentionally
			}
		}

		private static void AddToRepertoire(GamePosition position, Side side)
		{
			if (position == null)
				return;

			if (position.NextMove != null)
			{
				if (position.Position.SideToPlay == side)
					_repertoire.Add(position.FEN, position.NextMove.Move);
				AddToRepertoire(position.NextMove.NextPosition, side);
			}

			if (position.Analysis != null)
				foreach (var move in position.Analysis)
					AddToRepertoire(move.NextPosition, side);
		}

		#endregion

		#region Engine Analysis

		public Side[] ValidAnalysisSides => new[] { Side.White, Side.Black };
		public Side AnalyzeForSide { get; set; } = Side.White;
		public RelayCommand AnalyzeCommand { get; }
		public int AnalysisMoveTime { get; set; } = 60000;

		public Task AnalyzeAsync()
		{
			return AnalyzeAsync(AnalyzeForSide);
		}

		public Task AnalyzeAsync(Side side)
		{
			return Task.Run(() => Analyze(side));
		}

		public void Analyze(Side side)
		{
			var position = StartPosition;
			Engine.NewGame();

			while (position.NextMove != null)
			{
				if (position.SideToPlay == side)
					AnalyzeMove(position, position.NextMove);
				position = position.NextMove.LeadsTo;
			}
		}

		private void AnalyzeMove(PositionViewModel position, MoveViewModel move)
		{
			DisplayPosition = position;
			OnPropertyChanged(nameof(DisplayPosition));

			if (Repertoire.TryGetValue(position.FEN, out var repertoireMove) && repertoireMove.Equals(move.Move.Move))
			{
				move.Comment = "Repertoire";
				OnPropertyChanged(nameof(PGN));
				return;
			}

			move.Comment = "Analysing...";
			OnPropertyChanged(nameof(PGN));

			DispatcherHelper.CheckBeginInvokeOnUI(_engineOutput.Clear);
			Engine.SetPosition(position.FEN);
			var best = position.Position.GetGameMove(Engine.GetBestMove(AnalysisMoveTime));

			if (!int.TryParse(GetLastEngineValue("cp"), out int bestCp))
				bestCp = int.MaxValue;

			if (!int.TryParse(GetLastEngineValue("mate"), out int bestMate))
				bestMate = int.MaxValue;

			string comment = "";
			int.TryParse(GetLastEngineValue("depth"), out int depth);

			if (!best.Move.Equals(move.Move.Move))
			{
				comment = $"Best move: {best.SAN}";
				OnPropertyChanged(nameof(PGN));
				DispatcherHelper.CheckBeginInvokeOnUI(_engineOutput.Clear);
				Engine.SetPosition(move.LeadsTo.FEN);
				Engine.GetBestMove($"depth {depth - 1} movetime {AnalysisMoveTime}");

				if (int.TryParse(GetLastEngineValue("cp"), out int thisCp))
					thisCp = -thisCp;
				else
					thisCp = int.MaxValue;

				if (int.TryParse(GetLastEngineValue("mate"), out int thisMate))
					thisMate = -thisMate;
				else
					thisMate = int.MaxValue;

				if (Math.Abs(thisCp) < 999 && Math.Abs(bestCp) < 999)
				{
					if (thisCp == bestCp)
						comment = "";
					else
						comment += $" ({bestCp / 100.0:+0.00;-0.00;0}; {bestCp - thisCp} cp)";
				}
				else if (Math.Abs(thisMate) < 999 && Math.Abs(bestMate) < 999)
				{
					if (thisMate == bestMate)
						comment = "";
					else
						comment += $" (#{bestMate})";
				}
				else
					comment += " (no score)";

				if (Math.Abs(thisMate) < 999)
					move.Comment = $"#{thisMate,-7} {comment}";
				else
					move.Comment = $"{thisCp / 100.0,-7:+0.00;-0.00;0} {comment}";
			}
			else
			{
				if (Math.Abs(bestMate) < 999)
					move.Comment = $"#{bestMate,-7} {comment}";
				else
					move.Comment = $"{bestCp / 100.0,-7:+0.00;-0.00;0} {comment}";
			}

			OnPropertyChanged(nameof(PGN));
		}

		#endregion

		protected string GetLastEngineValue(string key)
		{
			string line = EngineOutput.FirstOrDefault(li => li.StartsWith("info") && li.Contains(" pv "));
			if (line == null || !line.Contains($" {key} "))
				return null;

			int cps = line.IndexOf($" {key} ", StringComparison.Ordinal) + key.Length + 2;
			int cpe = line.IndexOf(" ", cps, StringComparison.Ordinal);
			return line[cps..cpe];
		}

		public RelayCommand CopyPgnToClipBoardCommand => new(CopyPgnToClipBoard);
		public void CopyPgnToClipBoard()
		{
			ClipboardService.SetText(PGN);
		}
	}
}

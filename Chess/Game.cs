using System;
using System.Collections.Generic;
using System.Data;
using System.Diagnostics;
using System.Linq;
using System.Text.RegularExpressions;

namespace Chess
{
	public class Game
	{
		private static readonly string[] EndIndicators = { "0-1", "1-0", "1/2-1/2", "*" };
		private static readonly Regex FirstMoveNumberMatcher = new Regex("^\\s*({.*?})?\\s*[0-9]+");
		private static readonly Regex MoveNumberMatcher = new Regex("[0-9]+");
		private static readonly Regex BlackMatcher = new Regex(@"^[0-9]+\.\.\.");

		private Game(Position startPosition, bool isSetup)
		{
			StartPosition = new GamePosition(startPosition);
			CurrentPosition = StartPosition;
			IsSetup = isSetup;
		}

		public bool IsSetup { get; }
		public string WhitePlayer { get; set; }
		public string BlackPlayer { get; set; }
		public short WhiteElo { get; set; }
		public short BlackElo { get; set; }
		public string Site { get; set; }
		public string Round { get; set; }
		public string Event { get; set; }
		public DateTime Date { get; set; } = DateTime.MinValue;
		public short Year { get; set; }
		public string EcoCode { get; set; }

		public GamePosition StartPosition { get; }
		public GamePosition CurrentPosition { get; private set; }

		private GameState _state = GameState.Unknown;
		public GameState State
		{
			get
			{
				if (_state != GameState.Unknown)
					return _state;

				switch (StateReason)
				{
					case GameStateReason.Running:
						return GameState.Running;
					case GameStateReason.Checkmate:
					case GameStateReason.Time:
						return CurrentPosition.Position.SideToPlay == Side.White ? GameState.BlackWon : GameState.WhiteWon;
					case GameStateReason.Resignation:
						return CurrentPosition.Position.SideToPlay == Side.Black ? GameState.BlackWon : GameState.WhiteWon;
					case GameStateReason.Stalemate:
					case GameStateReason.FiftyMovesRule:
					case GameStateReason.InsufficientMaterial:
						return GameState.Drawn;
					case GameStateReason.Unknown:
						return GameState.Unknown;
					default:
						return GameState.Running;
				}
			}
		}

		private GameStateReason _stateReason = GameStateReason.Unknown;
		public GameStateReason StateReason => _stateReason == GameStateReason.Unknown ? TechnicalReason : _stateReason;

		private GameStateReason TechnicalReason
		{
			get
			{
				if (CurrentPosition.Position.IsCheckMate)
					return GameStateReason.Checkmate;
				if (CurrentPosition.Position.IsStaleMate)
					return GameStateReason.Stalemate;
				if (CurrentPosition.Position.PlysTo50Moves >= 99)
					return GameStateReason.FiftyMovesRule;
				if (!CurrentPosition.Position.HasEnoughMaterialForCheckMate)
					return GameStateReason.InsufficientMaterial;
				return GameStateReason.Running;
			}
		}

		public static Game CreateNew()
		{
			return new Game(Position.GetStartPosition(), false);
		}

		public static Game CreateNew(string startPositionFEN)
		{
			return new Game(Position.FromFEN(startPositionFEN), true);
		}

		public static Game CreateNew(Position startPosition)
		{
			return new Game(startPosition, true);
		}

		public static Game FromPGN(string pgn)
		{
			Position position;
			var lines = pgn.Replace("\r", "")
				.Replace("\t", " ")
				.Split('\n')
				.Select(li => li.Trim())
				.ToList();

			var info = lines.Where(li => li.StartsWith("[") && li.Contains("\""))
				.Select(li => new { line = li, pos = li.IndexOf("\"", StringComparison.Ordinal) })
				.ToDictionary(t => t.line.Substring(1, t.pos - 1).Trim().ToLower(),
					t => t.line.Substring(t.pos + 1, t.line.Length - t.pos - 3).Trim());

			if (info.TryGetValue("setup", out string setup) && setup == "1" && info.TryGetValue("fen", out string fen))
				position = Position.FromFEN(fen);
			else
				position = Position.GetStartPosition();

			var retval = new Game(position, setup == "1");

			if (info.TryGetValue("white", out string white))
				retval.WhitePlayer = white;
			if (info.TryGetValue("whiteelo", out white) && short.TryParse(white, out short elo))
				retval.WhiteElo = elo;
			if (info.TryGetValue("black", out string black))
				retval.BlackPlayer = black;
			if (info.TryGetValue("blackelo", out black) && short.TryParse(black, out elo))
				retval.BlackElo = elo;
			if (info.TryGetValue("event", out string ev))
				retval.Event = ev;
			if (info.TryGetValue("site", out string site))
				retval.Site = site;
			if (info.TryGetValue("round", out string round))
				retval.Round = round;
			if (info.TryGetValue("eco", out string eco))
				retval.EcoCode = eco;

			if (info.TryGetValue("date", out string date))
			{
				var spl = date.Split('.');
				if (spl.Length == 3
					 && short.TryParse(spl[0], out short year)
					 && short.TryParse(spl[1], out short month)
					 && short.TryParse(spl[2], out short day))
				{
					try
					{
						retval.Date = new DateTime(year, month, day);
					}
					catch (ArgumentOutOfRangeException)
					{
						//Invalid dates like '2004-06-31' are intentionally ignored
					}
					retval.Year = year;
				}
				else if (spl.Length > 0 && short.TryParse(spl[0], out year))
					retval.Year = year;
			}

			if (info.TryGetValue("result", out string result))
			{
				retval._stateReason = GameStateReason.Notation;

				switch (result)
				{
					case "1-0":
						retval._state = GameState.WhiteWon;
						break;

					case "0-1":
						retval._state = GameState.BlackWon;
						break;

					case "1/2-1/2":
						retval._state = GameState.Drawn;
						break;

					case "*":
						retval._state = GameState.Running;
						break;

					default:
						retval._state = GameState.Unknown;
						break;
				}
			}

			//Strip away the line comments
			var movelines = new List<string>();
			foreach (string line in lines.Where(li => !li.StartsWith("[")))
				movelines.Add(line.Contains(";") ? line.Substring(0, line.IndexOf(";", StringComparison.Ordinal)).Trim() : line);

			retval.AddVariation(retval.StartPosition, string.Join(" ", movelines), true);
			retval._notationPGN = pgn;
			return retval;
		}

		private void AddVariation(GamePosition position, string line, bool main)
		{
			_notationPGN = null;
			line = StripVariationsAndComments(line, out var variations, out string comment);

			foreach (string origToken in line.Split(' ').Where(t => !string.IsNullOrWhiteSpace(t)))
			{
				string token = origToken;

				//Strip away the number from notations like 14. Nxf4
				int dot = token.LastIndexOf(".", StringComparison.Ordinal);
				if (dot >= 0)
					token = token.Substring(dot + 1);

				if (!string.IsNullOrWhiteSpace(token))
				{
					token = token.Replace(" ", "");
					if (EndIndicators.Contains(token))
						break;

					var move = Move.FromSAN(position.Position, token);
					GameMove gameMove;

					if (main)
					{
						position.SetMove(move);
						gameMove = position.NextMove;
					}
					else
					{
						gameMove = position.GetGameMove(move);
						position.Analysis.Add(gameMove);
						main = true;
					}

					foreach (var variation in variations.Where(v =>
						v.Side == position.Position.SideToPlay && v.Start == position.MoveNumber))
						AddVariation(position, variation.Content, false);

					position = gameMove.NextPosition;
				}
			}
		}

		private static string StripVariationsAndComments(string pgn, out List<Variation> variations, out string comment)
		{
			if (pgn == null)
				throw new ArgumentNullException(nameof(pgn));

			while (pgn.Contains("  "))
				pgn = pgn.Replace("  ", " ");

			variations = new List<Variation>();
			comment = "";

			string retval = "";
			int par = 0, curly = 0;
			string parContent = null, curlyContent = null;

			for (int i = 0; i < pgn.Length; i++)
				switch (pgn[i])
				{
					case '(':
						if (curly > 0)
						{
							curlyContent += "(";
						}
						else
						{
							if (par > 0)
								parContent += "(";
							par++;
						}

						break;

					case ')':
						if (curly > 0)
						{
							curlyContent += ")";
						}
						else
						{
							par--;
							if (par > 0)
							{
								parContent += ")";
							}
							else
							{
								if (parContent == null)
									throw new SyntaxErrorException("Unexpected ')' while parsing PGN.");
								parContent = parContent.Trim();
								if (!FirstMoveNumberMatcher.IsMatch(parContent))
									throw new SyntaxErrorException("Start move number is missing for variation.");
								var match = FirstMoveNumberMatcher.Match(parContent);
								variations.Add(new Variation
								{
									Start = int.Parse(MoveNumberMatcher.Match(match.Value).Value),
									Side = BlackMatcher.IsMatch(parContent) ? Side.Black : Side.White,
									Content = parContent
								});
								parContent = null;
							}
						}

						break;

					case '{':
						if (par > 0)
						{
							parContent += "{";
						}
						else
						{
							if (curly > 0)
								curlyContent += "{";
							curly++;
						}

						break;

					case '}':
						if (par > 0)
						{
							parContent += "}";
						}
						else
						{
							curly--;
							if (curly == 0)
							{
								comment = curlyContent ?? throw new SyntaxErrorException("Unexpected '}' while parsing PGN.");
								curlyContent = null;
							}
							else
							{
								curlyContent += "}";
							}
						}

						break;

					default:
						if (par > 0)
							parContent += pgn[i];
						else if (curly > 0)
							curlyContent += pgn[i];
						else
							retval += pgn[i];
						break;
				}

			return retval;
		}

		public void ApplyMove(GameMove move)
		{
			if (move == null) throw new ArgumentNullException(nameof(move));
			_notationPGN = null;
			CurrentPosition.SetMove(move);
			CurrentPosition = CurrentPosition.NextMove.NextPosition;
			ScanForRepetition();
		}

		public void ApplyMove(Move move)
		{
			if (move == null) throw new ArgumentNullException(nameof(move));
			_notationPGN = null;
			CurrentPosition.SetMove(move);
			CurrentPosition = CurrentPosition.NextMove.NextPosition;
			ScanForRepetition();
		}

		private void ScanForRepetition()
		{
			var position = StartPosition;
			var fenstubs = new List<string>();
			while (position.NextMove != null)
			{
				position = position.NextMove.NextPosition;
				fenstubs.Add(position.FEN.Split(' ').First());
			}
			if (fenstubs.GroupBy(f => f).Any(g => g.Count() > 2))
			{
				_state = GameState.Drawn;
				_stateReason = GameStateReason.ThreeFoldRepetition;
			}
		}

		public void Resign(Side side)
		{
			switch (side)
			{
				case Side.White:
					_state = GameState.BlackWon;
					break;
				case Side.Black:
					_state = GameState.WhiteWon;
					break;
				default:
					throw new ArgumentOutOfRangeException(nameof(side), side, "Resigning side must be either white or black");
			}

			_stateReason = GameStateReason.Resignation;
		}

		public void Clockflag(Side side)
		{
			switch (side)
			{
				case Side.White:
					_state = GameState.BlackWon;
					break;
				case Side.Black:
					_state = GameState.WhiteWon;
					break;
				default:
					throw new ArgumentOutOfRangeException(nameof(side), side, "Flagged side must be either white or black");
			}

			_stateReason = GameStateReason.Time;
		}

		public void DrawnAgreed()
		{
			_state = GameState.Drawn;
			_stateReason = GameStateReason.Agreement;
		}

		public string Result
		{
			get
			{
				switch (State)
				{
					case GameState.Drawn:
						return "1/2-1/2";
					case GameState.WhiteWon:
						return "1-0";
					case GameState.BlackWon:
						return "0-1";
					default:
						return "*";
				}
			}
		}

		private string _notationPGN;

		public string GetPGN()
		{
			if (!string.IsNullOrEmpty(_notationPGN))
				return _notationPGN;

			string comment = "";
			string pgn =
				$"[Event \"{Event}\"]\r\n[Site \"{Site}\"]\r\n[Date \"{Date:yyyy.MM.dd}\"]\r\n[Variant \"Standard\"]\r\n[Termination \"Normal\"]\r\n[Round \"\"]\r\n[White \"{WhitePlayer}\"]\r\n[Black \"{BlackPlayer}\"]\r\n[Result \"{Result}\"]\r\n[CurrentPosition \"{CurrentPosition.Position.FEN}\"]\r\n";

			if (IsSetup)
				pgn += $"[FEN \"{StartPosition.FEN}\"]\r\n[Setup \"1\"]\r\n";

			var move = StartPosition.NextMove;
			bool first = true;

			while (move != null)
			{
				comment += $" {move.Comment}";

				if (move.Side == Side.White)
				{
					string num = $"{move.MoveNumber}.";
					pgn += $"\r\n{num,-5}{move.SAN,-8}";
				}
				else
				{
					if (first)
						pgn += $"\r\n1.   ...     ";

					pgn += $"{move.SAN,-8}";
					if (!string.IsNullOrWhiteSpace(comment))
						pgn += $"{{ {comment} }}";
					comment = "";
				}

				move = move.NextPosition.NextMove;
				first = false;
			}

			pgn += $"\r\n{Result}";
			return pgn;
		}

		[DebuggerDisplay("Start = {Start}, Side = {Side}, Content = {Content}")]
		private class Variation
		{
			public string Content;
			public Side Side;
			public int Start;
		}
	}
}
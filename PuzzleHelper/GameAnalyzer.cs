using Chess;
using Chess.EngineWrappers;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;

namespace PuzzleHelper
{
	public class GameAnalyzer : IDisposable
	{
		private UciEngineWrapper _stockFish;
		private readonly string[][] _multiData = new string[20][];
		private readonly string _cacheFile;
		private Dictionary<string, int> _fenCache;

		public static IReadOnlyDictionary<Piece, int> PieceValues { get; } = new Dictionary<Piece, int>
		{
			{ Piece.Pawn, 1 },
			{ Piece.Bishop, 3 },
			{ Piece.Knight, 3 },
			{ Piece.Rook, 5 },
			{ Piece.Queen, 9 },
			{ Piece.King, 0 }
		};


		public GameAnalyzer(string pathToUciEngineExecutable, int engineThreads = 4, string cacheFile = null)
		{
			if (string.IsNullOrWhiteSpace(pathToUciEngineExecutable))
				throw new ArgumentException($"'{nameof(pathToUciEngineExecutable)}' cannot be null or whitespace.", nameof(pathToUciEngineExecutable));

			if (engineThreads < 1)
				throw new ArgumentOutOfRangeException(nameof(engineThreads), "Engine thread count must be greater then zero.");

			_cacheFile = cacheFile;
			if (File.Exists(cacheFile))
				ReadCache();
			else
				_fenCache = new Dictionary<string, int>();

			_stockFish = new UciEngineWrapper(pathToUciEngineExecutable);
			_stockFish.SetEngineOption("Skill Level", "20");
			_stockFish.SetEngineOption("Threads", engineThreads.ToString());
			_stockFish.SetEngineOption("Hash", "1000");
			_stockFish.EngineOutput += StockFish_EngineOutput;
		}

		private void ReadCache()
		{
			_fenCache = File.ReadAllLines(_cacheFile)
								.Select(l => l.Split(';'))
								.ToDictionary(s => s[0], s => Convert.ToInt32(s[1]));
		}

		private void WriteCache()
		{
			if (!string.IsNullOrEmpty(_cacheFile))
				File.WriteAllLines(_cacheFile,
										_fenCache.OrderByDescending(kvp => kvp.Value)
													.Take(1000000)
													.Select(kvp => $"{kvp.Key};{kvp.Value}"));
		}

		private void StockFish_EngineOutput(object sender, System.Diagnostics.DataReceivedEventArgs e)
		{
			if (e.Data.Contains("multipv"))
			{
				var split = e.Data.Split(' ');
				for (int i = 0; i < split.Length - 1; i++)
					if (split[i] == "multipv")
					{
						int index = Convert.ToInt32(split[i + 1]) - 1;
						_multiData[index] = split;
						break;
					}
			}
		}

		public IEnumerable<GamePosition> Analyze(string pgnData, Func<GamePosition, bool> preFilter)
		{
			var game = Game.FromPGN(pgnData);
			return Analyze(game, preFilter);
		}

		public IEnumerable<GamePosition> Analyze(Game game, Func<GamePosition, bool> preFilter)
		{
			if (game is null)
				throw new ArgumentNullException(nameof(game));

			if (preFilter is null)
				throw new ArgumentNullException(nameof(preFilter));

			var position = game.StartPosition;

			while (true)
			{
				var fen = position.FEN;
				if (_fenCache.ContainsKey(fen))
				{
					_fenCache[fen]++;
				}
				else if (preFilter(position))
				{
					_fenCache.Add(fen, 1);
					yield return position;
				}

				if (position.NextMove == null)
					break;

				position = position.NextMove.NextPosition;
			}

			WriteCache();
		}

		public EvaluationResult EvaluatePosition(Position position, int multiPv, int msec)
		{
			if (position is null)
				throw new ArgumentNullException(nameof(position));

			if (multiPv < 1 || multiPv > _multiData.Length)
				throw new ArgumentOutOfRangeException(nameof(multiPv), $"multi-PV must be greater then zero and up to {_multiData.Length}.");

			if (msec < 1)
				throw new ArgumentOutOfRangeException(nameof(msec), "Engine evaluation time must be greater then zero.");

			_stockFish.SetEngineOption("MultiPV", multiPv.ToString());
			_stockFish.SetPosition(position.FEN);
			var bestMove = _stockFish.GetBestMove(msec, false);

			return new EvaluationResult
			{
				Move = bestMove,
				PV = GetMultiPvValues(multiPv)
			};
		}


		private List<int> GetMultiPvValues(int multiPv)
		{
			var vals = new List<int>();

			for (int pv = 0; pv < multiPv; pv++)
			{
				for (int i = 0; i < _multiData[pv].Length - 1; i++)
				{
					if (_multiData[pv][i] == "cp")
					{
						int score = Convert.ToInt32(_multiData[pv][i + 1]);
						vals.Add(score);
						break;
					}
					else if (_multiData[pv][i] == "mate")
					{
						int score = Convert.ToInt32(_multiData[pv][i + 1]);
						vals.Add(Math.Sign(score) * 10000 - score);
						break;
					}
				}
			}

			return vals;
		}

		public void Dispose()
		{
			if (_stockFish != null)
			{
				_stockFish.Dispose();
				_stockFish = null;
			}
			GC.SuppressFinalize(this);
		}
	}
}

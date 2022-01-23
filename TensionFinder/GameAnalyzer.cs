using Chess;
using Chess.EngineWrappers;
using System;
using System.Collections.Generic;
using System.Linq;

namespace TensionFinder
{
	public class GameAnalyzer : IDisposable
	{
		private const string StockFishExecutable = @"e:\Stockfish\stockfish.exe";
		private const int MultiPV = 3;

		private UciEngineWrapper _stockFish;
		private readonly string[][] _multiData = new string[MultiPV][];

		public GameAnalyzer()
		{
			_stockFish = new UciEngineWrapper(StockFishExecutable);
			_stockFish.SetEngineOption("Skill Level", "20");
			_stockFish.SetEngineOption("Threads", "4");
			_stockFish.SetEngineOption("Hash", "1000");
			_stockFish.SetEngineOption("MultiPV", MultiPV.ToString());
			_stockFish.EngineOutput += StockFish_EngineOutput;
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

		public void Analyze(string pgnData)
		{
			//Console.WriteLine($"[{_game.WhitePlayer} - {_game.BlackPlayer}]");
			var game = Game.FromPGN(pgnData);
			var position = game.StartPosition;
			while (true)
			{
				AnalyzePosition(position);
				if (position.NextMove == null)
					break;
				position = position.NextMove.NextPosition;
			}
		}

		private void AnalyzePosition(GamePosition position)
		{
			if (position.Position.IsCheck || position.Position.IsCheckMate || position.Position.IsStaleMate)
				return;

			int whiteCaptureCount = position
				 .Position
				 .GetValidMoves(Side.White)
				 .Count(m => position.Position.Squares[m.To.File, m.To.Rank].Piece != Piece.None && position.Position.Squares[m.To.File, m.To.Rank].Piece >= position.Position.Squares[m.From.File, m.From.Rank].Piece);

			int blackCaptureCount = position
				 .Position
				 .GetValidMoves(Side.Black)
				 .Count(m => position.Position.Squares[m.To.File, m.To.Rank].Piece != Piece.None && position.Position.Squares[m.To.File, m.To.Rank].Piece >= position.Position.Squares[m.From.File, m.From.Rank].Piece);

			if (whiteCaptureCount < 3 || blackCaptureCount < 3)
				return;

			EvaluatePosition(position.Position);
		}

		private void EvaluatePosition(Position position)
		{
			_stockFish.SetPosition(position.FEN);
			var bestMove = _stockFish.GetBestMove(1000, false);
			if (_multiData.Any(s => s.Contains("score") && !s.Contains("cp")))
				return;

			var vals = GetMultiPvValues();
			if (vals.Any(v => Math.Abs(v) > 200))
				return;

			//bestMove = _stockFish.GetBestMove(10000, false);
			//vals = GetMultiPvValues();
			//if (Math.Abs(vals[0]) > 200)
			//    return;
			//if (vals.Max() - vals.Min() > 200)
			//    return;
			//if (vals.Max() - vals.Min() < 100)
			//    return;

			Console.WriteLine(position.FEN);
		}

		private List<int> GetMultiPvValues()
		{
			var vals = new List<int>();

			for (int pv = 0; pv < MultiPV; pv++)
			{
				for (int i = 0; i < _multiData[pv].Length - 1; i++)
				{
					if (_multiData[pv][i] == "cp")
					{
						int score = Convert.ToInt32(_multiData[pv][i + 1]) - 1;
						vals.Add(score);
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

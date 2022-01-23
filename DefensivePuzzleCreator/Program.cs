using Chess;
using PuzzleHelper;
using System;
using System.IO;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;

namespace DefensivePuzzleCreator
{
   class Program
   {
      private const string PGN_PATH = @"E:\Downloads";
		private const string StockFishExecutable = @"e:\Stockfish\stockfish.exe";
		private const int MultiPV = 2;
		private const int MSec = 1000;
		private const int Threads = 8;

		static void Main()
      {
			using var analyzer = new GameAnalyzer(StockFishExecutable, Threads);

			foreach (var game in GameReader.GetGamesFromDirectory(PGN_PATH))
				foreach(var position in analyzer.Analyze(game, AnalyzePosition))
					EvaluatePosition(analyzer, position);
      }

		public static bool AnalyzePosition(GamePosition position)
		{
			if (position.Position.IsCheck || position.Position.IsCheckMate || position.Position.IsStaleMate)
				return false;

			var allPieces = position.Position.GetPiecePositions();
			var whiteValue = allPieces
				.Where(p => p.Item2.Side == Side.White)
				.Sum(p => GameAnalyzer.PieceValues[p.Item2.Piece]);
			var blackValue = allPieces
				.Where(p => p.Item2.Side == Side.Black)
				.Sum(p => GameAnalyzer.PieceValues[p.Item2.Piece]);

			if (position.Position.SideToPlay == Side.White && whiteValue < blackValue)
				return false;

			if (position.Position.SideToPlay == Side.Black && whiteValue > blackValue)
				return false;

			return true;
		}
		private static void EvaluatePosition(GameAnalyzer analyzer, GamePosition position)
		{
			var vals = analyzer.EvaluatePosition(position.Position, MultiPV, MSec);
			if (vals[0] < 0)
				return;

			if (vals.All(v => v > -300))
				return;

			Console.WriteLine(position.FEN);
		}


	}
}

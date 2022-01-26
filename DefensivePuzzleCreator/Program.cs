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
		private const int Threads = 16;

		static void Main()
      {
			using var analyzer = new GameAnalyzer(StockFishExecutable, Threads, "fencache.txt");

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
			var vals = analyzer.EvaluatePosition(position.Position, 2, 1000);
			if (vals[0] < 0)
				return;

			if (vals.All(v => v > -200))
				return;

			vals = analyzer.EvaluatePosition(position.Position, 2, 20000);
			if (vals[0] < 0)
				return;

			if (vals.All(v => v > -200))
				return;

			Console.WriteLine(position.FEN);
		}


	}
}

using Chess;
using PuzzleHelper;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;

namespace DefensivePuzzleCreator
{
   class Program
   {
      private const string PGN_PATH = @"E:\tmp";
		private const string StockFishExecutable = @"e:\Stockfish\stockfish.exe";
		private const int Threads = 16;
		private const int THINK_TIME_LONG = 10000;
		private const int THINK_TIME_SHORT = 1000;
		private const int EVAL_TRESHOLD = 200;

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
		
		private static void EvaluatePosition(GameAnalyzer analyzer, GamePosition gamePosition)
		{
			EvaluationResult eval = analyzer.EvaluatePosition(gamePosition.Position, 2, THINK_TIME_SHORT);
			if (eval.PV[0] < 0)
				return;

			if (eval.PV.All(v => v > -EVAL_TRESHOLD))
				return;

			eval = analyzer.EvaluatePosition(gamePosition.Position, 2, THINK_TIME_LONG);
			if (eval.PV[0] < 0)
				return;

			if (eval.PV.All(v => v > -EVAL_TRESHOLD))
				return;

			Console.Write($"{gamePosition.FEN};{eval.Move.ToLAN()}");

			var history = new HashSet<string>{ GameAnalyzer.GetPseudoFEN(gamePosition.FEN) };

			var position = gamePosition.Position;
			while (true)
			{
				//Opponent move - does not need to be forcing
				position = position.ApplyMove(eval.Move);
				eval = analyzer.EvaluatePosition(position, 2, THINK_TIME_LONG);
				if (eval.Move == null)
				{
					Console.Write(",#");
					break;
				}

				Console.Write($",{eval.Move.ToLAN()}");

				string pseudoFen = GameAnalyzer.GetPseudoFEN(position.FEN);
				if (history.Contains(pseudoFen))
					break;
				history.Add(pseudoFen);

				//Is our next move forcing?
				position = position.ApplyMove(eval.Move);
				eval = analyzer.EvaluatePosition(position, 2, THINK_TIME_LONG);
				if (eval.PV.All(v => v > -EVAL_TRESHOLD))
					break;

				Console.Write($",{eval.Move.ToLAN()}");
			}

			Console.WriteLine();
		}


	}
}

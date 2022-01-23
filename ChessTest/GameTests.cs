using System;
using System.IO;
using System.Linq;
using Chess;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace ChessTest
{
	[TestClass]
	public class GameTests
	{
		private const string CHECKMATE_WHITE_WINS_FEN = "4k3/4Q3/4K3/8/8/8/8/8 b - - 0 1";
		private const string CHECKMATE_BLACK_WINS_FEN = "8/8/8/8/8/7k/8/5q1K w - - 0 1";
		private const string INSUFFICIENT_MATERIAL_FEN = "8/8/8/3k4/8/4KN2/8/8 w - - 0 1";

		[TestMethod]
		public void WhitePlayer_GetterSetter_PreservesValue()
		{
			string data = new Guid().ToString();
			var game = Game.CreateNew();
			game.WhitePlayer = data;
			Assert.AreEqual(data, game.WhitePlayer);
		}

		[TestMethod]
		public void BlackPlayer_GetterSetter_PreservesValue()
		{
			string data = new Guid().ToString();
			var game = Game.CreateNew();
			game.BlackPlayer = data;
			Assert.AreEqual(data, game.BlackPlayer);
		}

		[TestMethod]
		public void Event_GetterSetter_PreservesValue()
		{
			string data = new Guid().ToString();
			var game = Game.CreateNew();
			game.Event = data;
			Assert.AreEqual(data, game.Event);
		}

		[TestMethod]
		public void Site_GetterSetter_PreservesValue()
		{
			string data = new Guid().ToString();
			var game = Game.CreateNew();
			game.Site = data;
			Assert.AreEqual(data, game.Site);
		}

		[TestMethod]
		public void Date_GetterSetter_PreservesValue()
		{
			var data = new DateTime(1980, 11, 7);
			var game = Game.CreateNew();
			game.Date = data;
			Assert.AreEqual(data, game.Date);
		}

		[TestMethod]
		public void IsSetup_StandardPosition_YieldsFalse()
		{
			var game = Game.CreateNew();
			Assert.IsFalse(game.IsSetup);
		}

		[TestMethod]
		public void IsSetup_NonStandardPosition_YieldsTrue()
		{
			var position = Position.FromFEN("4k3/8/8/4K3/4P3/8/8/8 w - - 0 1");
			var game = Game.CreateNew(position);
			Assert.IsTrue(game.IsSetup);
		}

		[TestMethod]
		public void IsSetup_NonStandardPositionViaFEN_YieldsTrue()
		{
			var game = Game.CreateNew("4k3/8/8/4K3/4P3/8/8/8 w - - 0 1");
			Assert.IsTrue(game.IsSetup);
		}

		[TestMethod]
		public void State_FreshPosition_YieldsRunning()
		{
			var game = Game.CreateNew();
			Assert.AreEqual(GameState.Running, game.State);
		}

		[TestMethod]
		public void StateReason_FreshPosition_YieldsRunning()
		{
			var game = Game.CreateNew();
			Assert.AreEqual(GameStateReason.Running, game.StateReason);
		}

		[TestMethod]
		public void State_InsufficientMaterial_YieldsDrawn()
		{
			var game = Game.CreateNew(INSUFFICIENT_MATERIAL_FEN);
			Assert.AreEqual(GameState.Drawn, game.State);
		}

		[TestMethod]
		public void StateReason_InsufficientMaterial_YieldsInsufficientMaterial()
		{
			var game = Game.CreateNew(INSUFFICIENT_MATERIAL_FEN);
			Assert.AreEqual(GameStateReason.InsufficientMaterial, game.StateReason);
		}

		[TestMethod]
		public void State_CheckmateBlack_YieldsBlack()
		{
			var game = Game.CreateNew(CHECKMATE_BLACK_WINS_FEN);
			Assert.AreEqual(GameState.BlackWon, game.State);
		}

		[TestMethod]
		public void StateReason_CheckmateBlack_YieldsCheckmate()
		{
			var game = Game.CreateNew(CHECKMATE_BLACK_WINS_FEN);
			Assert.AreEqual(GameStateReason.Checkmate, game.StateReason);
		}

		[TestMethod]
		public void State_CheckmateWhite_YieldsWhite()
		{
			var game = Game.CreateNew(CHECKMATE_WHITE_WINS_FEN);
			Assert.AreEqual(GameState.WhiteWon, game.State);
		}

		[TestMethod]
		public void StateReason_CheckmateWhite_YieldsCheckmate()
		{
			var game = Game.CreateNew(CHECKMATE_WHITE_WINS_FEN);
			Assert.AreEqual(GameStateReason.Checkmate, game.StateReason);
		}

		[TestMethod]
		public void State_AgreedDraw_YieldsDrawn()
		{
			var game = Game.CreateNew();
			game.DrawnAgreed();
			Assert.AreEqual(GameState.Drawn, game.State);
		}

		[TestMethod]
		public void Result_AgreedDraw_YieldsDrawn()
		{
			var game = Game.CreateNew();
			game.DrawnAgreed();
			Assert.AreEqual("1/2-1/2", game.Result);
		}

		[TestMethod]
		public void Result_WhiteResigned_YieldsCorrectResult()
		{
			var game = Game.CreateNew();
			game.Resign(Side.White);
			Assert.AreEqual("0-1", game.Result);
		}

		[TestMethod]
		public void Result_BlackResigned_YieldsCorrectResult()
		{
			var game = Game.CreateNew();
			game.Resign(Side.Black);
			Assert.AreEqual("1-0", game.Result);
		}

		[TestMethod]
		public void StateReason_AgreedDraw_YieldsAgreedDraw()
		{
			var game = Game.CreateNew();
			game.DrawnAgreed();
			Assert.AreEqual(GameStateReason.Agreement, game.StateReason);
		}

		[TestMethod]
		public void State_WhiteResigns_YieldsBlackWins()
		{
			var game = Game.CreateNew();
			game.Resign(Side.White);
			Assert.AreEqual(GameState.BlackWon, game.State);
		}

		[TestMethod]
		public void StateReason_WhiteResigns_YieldsResigns()
		{
			var game = Game.CreateNew();
			game.Resign(Side.White);
			Assert.AreEqual(GameStateReason.Resignation, game.StateReason);
		}

		[TestMethod]
		public void State_BlackResigns_YieldsWhiteWins()
		{
			var game = Game.CreateNew();
			game.Resign(Side.Black);
			Assert.AreEqual(GameState.WhiteWon, game.State);
		}

		[TestMethod]
		public void StateReason_BlackResigns_YieldsResigns()
		{
			var game = Game.CreateNew();
			game.Resign(Side.Black);
			Assert.AreEqual(GameStateReason.Resignation, game.StateReason);
		}


		[TestMethod]
		public void State_WhiteClockflag_YieldsBlackWins()
		{
			var game = Game.CreateNew();
			game.Clockflag(Side.White);
			Assert.AreEqual(GameState.BlackWon, game.State);
		}

		[TestMethod]
		public void StateReason_WhiteClockflag_YieldsClockflags()
		{
			var game = Game.CreateNew();
			game.Clockflag(Side.White);
			Assert.AreEqual(GameStateReason.Time, game.StateReason);
		}

		[TestMethod]
		public void State_BlackClockflags_YieldsWhiteWins()
		{
			var game = Game.CreateNew();
			game.Clockflag(Side.Black);
			Assert.AreEqual(GameState.WhiteWon, game.State);
		}

		[TestMethod]
		public void StateReason_BlackClockflags_YieldsClockflags()
		{
			var game = Game.CreateNew();
			game.Clockflag(Side.Black);
			Assert.AreEqual(GameStateReason.Time, game.StateReason);
		}

		[TestMethod]
		public void ApplyMove_Move_YeldsCorrectPosition()
		{
			var game = Game.CreateNew();
			game.ApplyMove(Move.FromLAN("e2e4"));
			Assert.AreEqual("rnbqkbnr/pppppppp/8/8/4P3/8/PPPP1PPP/RNBQKBNR b KQkq e3 0 1", game.CurrentPosition.FEN);
		}

		[TestMethod]
		public void ApplyMove_GameMove_YeldsCorrectPosition()
		{
			var game = Game.CreateNew();
			game.ApplyMove(game.CurrentPosition.GetGameMove(Move.FromLAN("e2e4")));
			Assert.AreEqual("rnbqkbnr/pppppppp/8/8/4P3/8/PPPP1PPP/RNBQKBNR b KQkq e3 0 1", game.CurrentPosition.FEN);
		}

		[TestMethod]
		public void GetPGN_Example1_YieldsCorrectResult()
		{
			var game = Game.CreateNew();
			game.Event = "Example Tournament";
			game.Site = "Palazzo Esempio";
			game.WhitePlayer = "René Exemple";
			game.BlackPlayer = "Ernesto Ejemplo";
			game.Date = new DateTime(1975, 9, 4);

			game.ApplyMove(game.CurrentPosition.GetGameMove(Move.FromLAN("e2e4")));
			game.ApplyMove(game.CurrentPosition.GetGameMove(Move.FromLAN("e7e5")));
			game.Resign(Side.White);

			const string expectedPgn = "[Event \"Example Tournament\"]\r\n[Site \"Palazzo Esempio\"]\r\n[Date \"1975.09.04\"]\r\n[Variant \"Standard\"]\r\n[Termination \"Normal\"]\r\n[Round \"\"]\r\n[White \"René Exemple\"]\r\n[Black \"Ernesto Ejemplo\"]\r\n[Result \"0-1\"]\r\n[CurrentPosition \"rnbqkbnr/pppp1ppp/8/4p3/4P3/8/PPPP1PPP/RNBQKBNR w KQkq e6 0 2\"]\r\n\r\n1.   e4      e5      \r\n0-1";
			string pgn = game.GetPGN();
			Assert.AreEqual(expectedPgn, pgn);
		}

		[TestMethod]
		public void FromPGN_Example1_YiedlsCorrectResult()
		{
			string pgn = File.ReadAllText(@"ExamplePGN\example1.pgn");
			var game = Game.FromPGN(pgn);
			Assert.IsNotNull(game);
			Assert.AreEqual(GameState.Running, game.State);
			Assert.AreEqual(GameStateReason.Running, game.StateReason);
			Assert.AreEqual("Whitey", game.WhitePlayer);
			Assert.AreEqual("Blackey", game.BlackPlayer);
			Assert.IsTrue(game.IsSetup);
			Assert.AreEqual(3, game.CurrentPosition.MoveNumber);
			Assert.AreEqual("Bb5", game.StartPosition.NextMove.SAN);
			Assert.AreEqual("Bc4", game.StartPosition.Analysis.First().SAN);
		}

		[TestMethod]
		public void FromPGN_Example2_YiedlsCorrectResult()
		{
			string pgn = File.ReadAllText(@"ExamplePGN\example2.pgn");
			var game = Game.FromPGN(pgn);
			Assert.IsNotNull(game);
		}

		[TestMethod]
		public void FromPGN_Example3_YiedlsCorrectResult()
		{
			string pgn = File.ReadAllText(@"ExamplePGN\example2.pgn");
			var game = Game.FromPGN(pgn);
			Assert.IsNotNull(game);
		}

		[TestMethod]
		public void FromPGN_Example4_YiedlsCorrectResult()
		{
			string pgn = File.ReadAllText(@"ExamplePGN\example2.pgn");
			var game = Game.FromPGN(pgn);
			Assert.IsNotNull(game);
		}
	}
}

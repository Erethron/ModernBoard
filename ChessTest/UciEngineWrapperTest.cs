using System.Diagnostics;
using Chess;
using Chess.EngineWrappers;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace ChessTest
{
	[TestClass]
	public class UciEngineWrapperTest
	{
		private const string STOCKFISH_PATH = @"d:\Stockfish\Windows\stockfish_9_x64.exe";

		[TestMethod]
		public void UciTest()
		{
			using (var engine = new UciEngineWrapper(STOCKFISH_PATH))
			{
				engine.EngineOutput += Engine_OutputReceived;
				engine.NewGame();
				var move = engine.GetBestMove();
				Assert.IsNotNull(move);
			}
		}

		[TestMethod]
		public void PromotablePawn_PromotesQueen()
		{
			using (var engine = new UciEngineWrapper(STOCKFISH_PATH))
			{
				engine.EngineOutput += Engine_OutputReceived;
				engine.NewGame();
				engine.SetPosition("8/3KPk2/8/8/8/8/8/8 w - - 0 1");
				var move = engine.GetBestMove();
				Assert.IsNotNull(move);
				Assert.AreEqual(4, move.From.File);
				Assert.AreEqual(6, move.From.Rank);
				Assert.AreEqual(4, move.To.File);
				Assert.AreEqual(7, move.To.Rank);
				Assert.AreEqual(Piece.Queen, move.Promotion);
			}
		}

		private void Engine_OutputReceived(object sender, DataReceivedEventArgs e)
		{
			Debug.WriteLine(e.Data);
		}
	}
}

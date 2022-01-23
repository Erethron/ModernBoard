using System.Linq;
using Chess;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace ChessTest
{
	[TestClass]
	public class PositionTests
	{
		[TestMethod]
		public void StartPos_YieldsValidPosition()
		{
			var pos = Position.GetStartPosition();
			Assert.IsNotNull(pos);
		}

		[TestMethod]
		public void StartPosTest()
		{
			var pos = Position.GetStartPosition();
			var moves = pos.GetValidMoves();
			Assert.IsNotNull(moves);
			var list = moves.ToList();
			Assert.AreEqual(20, list.Count);
		}

		[TestMethod]
		public void HasEnoughMaterialForCheckMate_StartPosition_YieldsTrue()
		{
			var pos = Position.GetStartPosition();
			Assert.IsTrue(pos.HasEnoughMaterialForCheckMate);
		}

		[TestMethod]
		public void HasEnoughMaterialForCheckMate_KingsOnly_YieldsFalse()
		{
			var pos = Position.FromFEN("4k3/8/8/8/8/8/4K3/8 w - - 0 1");
			Assert.IsFalse(pos.HasEnoughMaterialForCheckMate);
		}

		[TestMethod]
		public void HasEnoughMaterialForCheckMate_TwoBishopsBlack_YieldsTrue()
		{
			var pos = Position.FromFEN("4k3/3bb3/8/8/8/8/4K3/8 w - - 0 1");
			Assert.IsTrue(pos.HasEnoughMaterialForCheckMate);
		}

		[TestMethod]
		public void HasEnoughMaterialForCheckMate_TwoBishopsWhite_YieldsTrue()
		{
			var pos = Position.FromFEN("4k3/8/8/8/8/3BB3/4K3/8 w - - 0 1");
			Assert.IsTrue(pos.HasEnoughMaterialForCheckMate);
		}

	}
}

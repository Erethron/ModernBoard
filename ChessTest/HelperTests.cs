using System;
using Chess;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace ChessTest
{
	[TestClass]
	public class HelperTests
	{
		[TestMethod]
		public void PiecesByChar_IsNotNull()
		{
			Assert.IsNotNull(Helper.PiecesByChar);
		}

		[TestMethod]
		public void CastleIndices_IsNotNull()
		{
			Assert.IsNotNull(Helper.CastleIndices);
		}

		[TestMethod]
		public void CharsByPiece_IsNotNull()
		{
			Assert.IsNotNull(Helper.CharsByPiece);
		}

		[TestMethod]
		public void FileNameByFil_IsNotNulle()
		{
			Assert.IsNotNull(Helper.FileNameByFile);
		}

		[TestMethod]
		public void HomeRanks_IsNotNull()
		{
			Assert.IsNotNull(Helper.HomeRanks);
		}
		[TestMethod]
		public void PromotionOptions_IsNotNull()
		{
			Assert.IsNotNull(Helper.PromotionOptions);
		}
	}
}

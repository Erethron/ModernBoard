using System;
using Chess;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace ChessTest
{
	[TestClass]
	public class MoveTests
	{
		[TestMethod]
		public void FromSAN_Promotion()
		{
			var position = Position.FromFEN("8/6kP/8/8/1Kp5/2N5/8/8 w - - 0 55");
			var move = Move.FromSAN(position, "h8=Q");
			Assert.IsNotNull(move);
		}

		[TestMethod,ExpectedException(typeof(ArgumentNullException))]
		public void FromSAN_NullPosition_ThrowsArgumentNullException()
		{
			var dummy = Move.FromSAN(null, "h8=Q");
		}


		[TestMethod, ExpectedException(typeof(ArgumentOutOfRangeException))]
		public void FromSAN_Whitespace_ThrowsArgumentOutOfRangeException()
		{
			var position = Position.FromFEN("8/6kP/8/8/1Kp5/2N5/8/8 w - - 0 55");
			var dummy = Move.FromSAN(position, " ");
		}
		
		[TestMethod]
		public void FromSA_PromotionWithCheckmate_YieldsCorrectResult()
		{
			var from = Position.FromFEN("8/8/8/8/8/7k/5p2/7K b - - 0 1");
			var data = Move.FromSAN(from, "f1=Q#");
			Assert.AreEqual(new Coordinate(5, 1), data.From, "From coordinate is wrong");
			Assert.AreEqual(new Coordinate(5, 0), data.To, "To coordinate is wrong");
			Assert.AreEqual(Piece.Queen, data.Promotion, "Promotion is wrong");
		}

		[TestMethod]
		public void FromSAN_ShortCastlingWhite_YieldsCorrectResult()
		{
			var from = Position.FromFEN("r1bqk1br/ppp2ppp/2np4/1B2p3/4P3/5N2/PPPP1PPP/RNBQK2R w KQkq - 0 1");
			var data = Move.FromSAN(from, "O-O");
			Assert.AreEqual(new Coordinate(4,0), data.From, "From coordinate is wrong");
			Assert.AreEqual(new Coordinate(6, 0), data.To, "To coordinate is wrong");
			Assert.AreEqual(Piece.None, data.Promotion, "Promotion is wrong");
		}

		[TestMethod]
		public void FromSAN_MultiplePiecesSameTypeToSquare_YieldsCorrectResult()
		{
			var from = Position.FromFEN("1R6/7k/8/8/8/8/6K1/5R2 w - - 0 1");
			var data = Move.FromSAN(from, "Rfb1");
			Assert.AreEqual(new Coordinate(5, 0), data.From, "From coordinate is wrong");
			Assert.AreEqual(new Coordinate(1, 0), data.To, "To coordinate is wrong");
			Assert.AreEqual(Piece.None, data.Promotion, "Promotion is wrong");
		}

		[TestMethod]
		public void FromSAN_ShortCastlingBlack_YieldsCorrectResult()
		{
			var from = Position.FromFEN("rnbqk2r/ppppppbp/5np1/8/3PPB2/2N5/PPP2PPP/R2QKBNR b KQkq e3 0 4");
			var data = Move.FromSAN(from, "0-0");
			Assert.AreEqual(new Coordinate(4, 7), data.From, "From coordinate is wrong");
			Assert.AreEqual(new Coordinate(6, 7), data.To, "To coordinate is wrong");
			Assert.AreEqual(Piece.None, data.Promotion, "Promotion is wrong");
		}

		[TestMethod]
		public void FromSAN_LongCastlingWhite_YieldsCorrectResult()
		{
			var from = Position.FromFEN("rnbq1rk1/ppp1ppbp/3p1np1/8/3PPB2/2N5/PPPQ1PPP/R3KBNR w KQ - 0 6");
			var data = Move.FromSAN(from, "0-0-0");
			Assert.AreEqual(new Coordinate(4, 0), data.From, "From coordinate is wrong");
			Assert.AreEqual(new Coordinate(2, 0), data.To, "To coordinate is wrong");
			Assert.AreEqual(Piece.None, data.Promotion, "Promotion is wrong");
		}

		[TestMethod]
		public void FromSAN_LongCastlingBlack_YieldsCorrectResult()
		{
			var from = Position.FromFEN("r3kbnr/pbp1pppp/1pnq4/3p4/3P4/2NBPN2/PPP2PPP/R1BQ1RK1 b kq - 5 6");
			var data = Move.FromSAN(from, "O-O-O");
			Assert.AreEqual(new Coordinate(4, 7), data.From, "From coordinate is wrong");
			Assert.AreEqual(new Coordinate(2, 7), data.To, "To coordinate is wrong");
			Assert.AreEqual(Piece.None, data.Promotion, "Promotion is wrong");
		}

		[TestMethod]
		public void FromLAN_ValidLAN_YieldsValidData()
		{
			const string lan = "c2d4";
			var move = Move.FromLAN(lan);
			Assert.IsNotNull(move);
			Assert.AreEqual(new Coordinate(2, 1), move.From);
			Assert.AreEqual(new Coordinate(3, 3), move.To);
			Assert.AreEqual(Piece.None, move.Promotion);
		}

		[TestMethod]
		public void FromLAN_UppercasePromotionLAN_YieldsValidData()
		{
			const string lan = "c7c8R";
			var move = Move.FromLAN(lan);
			Assert.IsNotNull(move);
			Assert.AreEqual(new Coordinate(2, 6), move.From);
			Assert.AreEqual(new Coordinate(2, 7), move.To);
			Assert.AreEqual(Piece.Rook, move.Promotion);
		}

		[TestMethod]
		public void FromLAN_LowercasePromotionLAN_YieldsValidData()
		{
			const string lan = "c7c8b";
			var move = Move.FromLAN(lan);
			Assert.IsNotNull(move);
			Assert.AreEqual(new Coordinate(2, 6), move.From);
			Assert.AreEqual(new Coordinate(2, 7), move.To);
			Assert.AreEqual(Piece.Bishop, move.Promotion);
		}

		[TestMethod]
		public void ToLAN_NonPromotion_YieldsValidLAN()
		{
			const string lan = "c2d4";
			var move = Move.FromLAN(lan);
			Assert.IsNotNull(move);
			Assert.AreEqual(lan.ToLower(), move.ToLAN());
		}

		[TestMethod]
		public void ToLAN_Promotion_YieldsValidLAN()
		{
			const string lan = "f2f1N";
			var move = Move.FromLAN(lan);
			Assert.IsNotNull(move);
			Assert.AreEqual(lan.ToLower(), move.ToLAN());
		}


		[TestMethod]
		public void Equals_IdenticalObjects_YieldsTrue()
		{
			var data1 = Move.FromLAN("d2f4");
			var data2 = Move.FromLAN("d2f4");
			Assert.IsTrue(data1.Equals(data2));
		}

		[TestMethod]
		public void Equals_DifferentObjects_YieldsFalse()
		{
			var data1 = Move.FromLAN("d2f4");
			var data2 = Move.FromLAN("c5f6");
			Assert.IsFalse(data1.Equals(data2));
		}

		[TestMethod]
		public void Equals_WrongObjectType_YieldsFalse()
		{
			var data1 = Move.FromLAN("d2f4");
			var data2 = new Coordinate(1, 2);
			// ReSharper disable once SuspiciousTypeConversion.Global
			Assert.IsFalse(data1.Equals(data2));
		}

		[TestMethod]
		public void Equality_IdenticalObjects_YieldsTrue()
		{
			var data1 = Move.FromLAN("d2f4");
			var data2 = Move.FromLAN("d2f4");
			Assert.IsTrue(data1 == data2);
		}

		[TestMethod]
		public void Equality_DifferentObjects_YieldsFalse()
		{
			var data1 = Move.FromLAN("d2f4");
			var data2 = Move.FromLAN("c5f6");
			Assert.IsFalse(data1 == data2);
		}

		[TestMethod]
		public void Inequality_IdenticalObjects_YieldsFalse()
		{
			var data1 = Move.FromLAN("d2f4");
			var data2 = Move.FromLAN("d2f4");
			Assert.IsFalse(data1 != data2);
		}

		[TestMethod]
		public void Inequality_DifferentObjects_YieldsTrue()
		{
			var data1 = Move.FromLAN("d2f4");
			var data2 = Move.FromLAN("c5f6");
			Assert.IsTrue(data1 != data2);
		}

		[TestMethod]
		public void GetHashCode_DoesNotCrash()
		{
			var data = Move.FromLAN("d2f4");
			int dummy = data.GetHashCode();
		}

		[TestMethod, ExpectedException(typeof(ArgumentNullException))]
		public void ToSAN_NullFromPosition_ThrowsArgumentNullException()
		{
			var data = Move.FromLAN("d2f4");
			data.ToSAN(null);
		}

		[TestMethod, ExpectedException(typeof(ArgumentNullException))]
		public void ToSAN_NullToPosition_ThrowsArgumentNullException()
		{
			var from = Position.FromFEN("2K1k3/1P6/8/8/8/8/8/8 w - - 0 1");
			var data = Move.FromLAN("b7b8q");
			data.ToSAN(from, null);
		}

		[TestMethod]
		public void ToSAN_Promotion_YieldsCorrectResult()
		{
			var from = Position.FromFEN("2K1k3/1P6/8/8/8/8/8/8 w - - 0 1");
			var data = Move.FromLAN("b7b8q");
			Assert.AreEqual("b8=Q", data.ToSAN(from));
		}

		[TestMethod]
		public void ToSAN_PromotionWithCheck_YieldsCorrectResult()
		{
			var from = Position.FromFEN("2K2k2/3P4/8/8/8/8/8/8 w - - 0 1");
			var data = Move.FromLAN("d7d8r");
			Assert.AreEqual("d8=R+", data.ToSAN(from));
		}

		[TestMethod]
		public void ToSAN_PromotionWithCheckmate_YieldsCorrectResult()
		{
			var from = Position.FromFEN("8/8/8/8/8/7k/5p2/7K b - - 0 1");
			var data = Move.FromLAN("f2f1q");
			Assert.AreEqual("f1=Q#", data.ToSAN(from));
		}

		[TestMethod]
		public void ToSAN_PawnAdvance_YieldsCorrectResult()
		{
			var from = Position.FromFEN("8/7k/8/8/8/8/3P4/7K w - - 0 1");
			var data = Move.FromLAN("d2d4");
			Assert.AreEqual("d4", data.ToSAN(from));
		}

		[TestMethod]
		public void ToSAN_PawnTakesPawn_YieldsCorrectResult()
		{
			var from = Position.FromFEN("8/6k1/8/2p5/3P4/8/6K1/8 w - - 0 1");
			var data = Move.FromLAN("d4c5");
			Assert.AreEqual("dxc5", data.ToSAN(from));
		}

		[TestMethod]
		public void ToSAN_PawnTakesPawnInDoubleDoubledPawns_YieldsCorrectResult()
		{
			var from = Position.FromFEN("6k1/8/8/2p5/1Pp5/1P6/8/6K1 w - - 0 1");
			var data = Move.FromLAN("b3c4");
			Assert.AreEqual("bxc4", data.ToSAN(from));
		}

		[TestMethod]
		public void ToSAN_TwoPiecesSameRank_YieldsCorrectResult()
		{
			var from = Position.FromFEN("6nn/7k/8/8/8/8/1N1N2K1/8 w - - 0 1");
			var data = Move.FromLAN("b2c4");
			Assert.AreEqual("Nbc4", data.ToSAN(from));
		}

		[TestMethod]
		public void ToSAN_FileTakesPrecedence_YieldsCorrectResult()
		{
			var from = Position.FromFEN("1R6/7k/8/8/8/8/6K1/5R2 w - - 0 1");
			var data = Move.FromLAN("f1b1");
			Assert.AreEqual("Rfb1", data.ToSAN(from));
		}

		[TestMethod]
		public void ToSAN_ShortCastlingWhite_YieldsCorrectResult()
		{
			var from = Position.FromFEN("r1bqk1br/ppp2ppp/2np4/1B2p3/4P3/5N2/PPPP1PPP/RNBQK2R w KQkq - 0 1");
			var data = Move.FromLAN("e1g1");
			Assert.AreEqual("O-O", data.ToSAN(from));
		}

		[TestMethod]
		public void ToSAN_ShortCastlingBlack_YieldsCorrectResult()
		{
			var from = Position.FromFEN("rnbqk2r/ppppppbp/5np1/8/3PPB2/2N5/PPP2PPP/R2QKBNR b KQkq e3 0 4");
			var data = Move.FromLAN("e8g8");
			Assert.AreEqual("O-O", data.ToSAN(from));
		}

		[TestMethod]
		public void ToSAN_LongCastlingWhite_YieldsCorrectResult()
		{
			var from = Position.FromFEN("rnbq1rk1/ppp1ppbp/3p1np1/8/3PPB2/2N5/PPPQ1PPP/R3KBNR w KQ - 0 6");
			var data = Move.FromLAN("e1c1");
			Assert.AreEqual("O-O-O", data.ToSAN(from));
		}

		[TestMethod]
		public void ToSAN_LongCastlingBlack_YieldsCorrectResult()
		{
			var from = Position.FromFEN("r3kbnr/pbp1pppp/1pnq4/3p4/3P4/2NBPN2/PPP2PPP/R1BQ1RK1 b kq - 5 6");
			var data = Move.FromLAN("e8c8");
			Assert.AreEqual("O-O-O", data.ToSAN(from));
		}

		[TestMethod, ExpectedException(typeof(InvalidOperationException))]
		public void ToSAN_InvalidMove_ThrowsInvalidOperationException()
		{
			var from = Position.FromFEN("7k/3PK3/8/8/8/8/8/8 w - - 0 1");
			var data = Move.FromLAN("a1a2");
			string dummy = data.ToSAN(from);
		}

		[TestMethod]
		public void ToSAN_EnPassant_YieldsCorrectResult()
		{
			var from = Position.FromFEN("rnbqkbnr/1p1ppppp/p7/2pP4/8/8/PPP1PPPP/RNBQKBNR w KQkq c6 0 3");
			var data = Move.FromLAN("d5c6");
			Assert.AreEqual("dxc6", data.ToSAN(from));
		}

	}
}

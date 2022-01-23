using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Chess;

namespace ChessTest
{
	[TestClass]
	public class CoordinateTests
	{
		[TestMethod]
		public void Constructor_CorrectRankAndFile_ContrcutsValidObject()
		{
			var data = new Coordinate(1,5);
			Assert.AreEqual(1, data.File);
			Assert.AreEqual(5, data.Rank);
		}

		[TestMethod]
		public void ToString_ValidData_YieldsValidString()
		{
			var data = new Coordinate(2, 1);
			Assert.AreEqual("c2", data.ToString());
		}

		[TestMethod]
		public void Parse_CorrectPositionString_ContrcutsValidObject()
		{
			var data = Coordinate.Parse("b6");
			Assert.AreEqual(1, data.File);
			Assert.AreEqual(5, data.Rank);
		}

		[TestMethod, ExpectedException(typeof(ArgumentOutOfRangeException))]
		public void Parse_WeirdString_ThrowsArgumentOutOfRangeException()
		{
			var data = Coordinate.Parse("b6a");
			Assert.AreEqual(1, data.File);
			Assert.AreEqual(5, data.Rank);
		}

		[TestMethod, ExpectedException(typeof(ArgumentOutOfRangeException))]
		public void Constructor_FileTooLow_ThrowsArgumentOutOfRangeException()
		{
			var dummy = new Coordinate(-1, 5);
		}

		[TestMethod, ExpectedException(typeof(ArgumentOutOfRangeException))]
		public void Constructor_FileTooHigh_ThrowsArgumentOutOfRangeException()
		{
			var dummy = new Coordinate(8, 5);
		}

		[TestMethod, ExpectedException(typeof(ArgumentOutOfRangeException))]
		public void Constructor_RankTooLow_ThrowsArgumentOutOfRangeException()
		{
			var dummy = new Coordinate(1, -1);
		}

		[TestMethod, ExpectedException(typeof(ArgumentOutOfRangeException))]
		public void Constructor_RankTooHigh_ThrowsArgumentOutOfRangeException()
		{
			var dummy = new Coordinate(1, 8);
		}

		[TestMethod]
		public void Equals_IdenticalObjects_YieldsTrue()
		{
			var data1 = new Coordinate(1, 7);
			var data2 = new Coordinate(1, 7);
			Assert.IsTrue(data1.Equals(data2));
		}

		[TestMethod]
		public void Equals_DifferentObjects_YieldsFalse()
		{
			var data1 = new Coordinate(1, 7);
			var data2 = new Coordinate(2, 7);
			Assert.IsFalse(data1.Equals(data2));
		}

		[TestMethod]
		public void Equals_WrongObjectType_YieldsFalse()
		{
			var data1 = new Coordinate(1, 7);
			var data2 = Move.FromLAN("a1b1");
			// ReSharper disable once SuspiciousTypeConversion.Global
			Assert.IsFalse(data1.Equals(data2));
		}

		[TestMethod]
		public void Equality_IdenticalObjects_YieldsTrue()
		{
			var data1 = new Coordinate(1, 7);
			var data2 = new Coordinate(1, 7);
			Assert.IsTrue(data1 == data2);
		}

		[TestMethod]
		public void Equality_DifferentObjects_YieldsFalse()
		{
			var data1 = new Coordinate(1, 7);
			var data2 = new Coordinate(2, 7);
			Assert.IsFalse(data1 == data2);
		}

		[TestMethod]
		public void Inequality_IdenticalObjects_YieldsFalse()
		{
			var data1 = new Coordinate(1, 7);
			var data2 = new Coordinate(1, 7);
			Assert.IsFalse(data1 != data2);
		}

		[TestMethod]
		public void Inequality_DifferentObjects_YieldsTrue()
		{
			var data1 = new Coordinate(1, 7);
			var data2 = new Coordinate(2, 7);
			Assert.IsTrue(data1 != data2);
		}

		[TestMethod]
		public void GetHashCode_DoesNotCrash()
		{
			var data = new Coordinate(1, 7);
			int dummy = data.GetHashCode();
		}

	}
}

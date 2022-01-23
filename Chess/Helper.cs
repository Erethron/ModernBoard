using System.Collections.Generic;

namespace Chess
{
	public static class Helper
	{
		public static readonly Dictionary<string, Piece> PromotionOptions = new Dictionary<string, Piece>
		{
			{ "N", Piece.Knight },
			{ "B", Piece.Bishop },
			{ "R", Piece.Rook },
			{ "Q", Piece.Queen },
		};

		public static readonly Dictionary<string, Piece> PiecesByChar = new Dictionary<string, Piece>
		{
			{ "N", Piece.Knight },
			{ "B", Piece.Bishop },
			{ "R", Piece.Rook },
			{ "Q", Piece.Queen },
			{ "K", Piece.King },
			{ "P", Piece.Pawn }
		};

		public static readonly Dictionary<Piece, string> CharsByPiece = new Dictionary<Piece, string>
		{
			{ Piece.Knight, "N" },
			{ Piece.Bishop, "B" },
			{ Piece.Rook, "R" },
			{ Piece.Queen, "Q" },
			{ Piece.King, "K" },
			{ Piece.Pawn, "P" }
		};

		public static readonly Dictionary<int, string> FileNameByFile = new Dictionary<int, string>
		{
			{ 0, "a" },
			{ 1, "b" },
			{ 2, "c" },
			{ 3, "d" },
			{ 4, "e" },
			{ 5, "f" },
			{ 6, "g" },
			{ 7, "h" }
		};

		public static readonly Dictionary<Side, int> HomeRanks = new Dictionary<Side, int>
		{
			{Side.White, 0 },
			{Side.Black, 7 }
		};

		public static readonly Dictionary<Side, int> CastleIndices = new Dictionary<Side, int>
		{
			{Side.White, 0 },
			{Side.Black, 1 }
		};


	}
}

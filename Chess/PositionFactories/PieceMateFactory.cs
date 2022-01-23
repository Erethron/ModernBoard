using System.Linq;

namespace Chess.PositionFactories
{
	internal static class PieceMateFactory
	{
		internal static Position GetRookMate()
		{
			while (true)
			{
				var pos = PositionFactory.GetRandomPosition(new[] { Piece.Rook }, PositionFactory.NoPieces);
				var pieces = pos.GetPiecePositions();
				var bpos = pieces.Where(p => p.Item2.Side == Side.Black).ToArray();
				if (PositionFactory.CheckPiecesAreConnected(bpos))
					return PositionFactory.GetRandomFlipped(pos);
			}
		}

		internal static Position GetQueenMate()
		{
			while (true)
			{
				var pos = PositionFactory.GetRandomPosition(new[] { Piece.Queen }, PositionFactory.NoPieces);
				var pieces = pos.GetPiecePositions();
				var bpos = pieces.Where(p => p.Item2.Side == Side.Black).ToArray();
				if (PositionFactory.CheckPiecesAreConnected(bpos))
					return PositionFactory.GetRandomFlipped(pos);
			}
		}

		internal static Position GetDoubleBishopMate()
		{
			var bishops = new[] { Piece.Bishop, Piece.Bishop };
			while (true)
			{
				var pos = PositionFactory.GetRandomPosition(bishops, PositionFactory.NoPieces);
				var pieces = pos.GetPiecePositions();
				var bishpos = pieces.Where(p => p.Item2.Piece == Piece.Bishop).ToArray();
				if (((bishpos[0].Item1.File + bishpos[0].Item1.Rank) % 2) != ((bishpos[1].Item1.File + bishpos[1].Item1.Rank) % 2))
					return PositionFactory.GetRandomFlipped(pos);
			}
		}

		internal static Position GetQueenVsBishopMate()
		{
			while (true)
			{
				var pos = PositionFactory.GetRandomPosition(new[] { Piece.Queen }, new[] { Piece.Bishop });
				var pieces = pos.GetPiecePositions();
				var bpos = pieces.Where(p => p.Item2.Side == Side.Black).ToArray();
				if (PositionFactory.CheckPiecesAreConnected(bpos))
					return PositionFactory.GetRandomFlipped(pos);
			}
		}

		internal static Position GetQueenVsKnightMate()
		{
			while (true)
			{
				var pos = PositionFactory.GetRandomPosition(new[] { Piece.Queen }, new[] { Piece.Knight });
				var pieces = pos.GetPiecePositions();
				var bpos = pieces.Where(p => p.Item2.Side == Side.Black).ToArray();
				if (PositionFactory.CheckPiecesAreConnected(bpos))
					return PositionFactory.GetRandomFlipped(pos);
			}
		}
	}
}

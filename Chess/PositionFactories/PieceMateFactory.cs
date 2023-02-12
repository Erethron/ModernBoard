using System.Linq;

namespace Chess.PositionFactories
{
	internal static class PieceMateFactory
	{
		internal static Position GetRookMate(PositionFactory factory)
		{
			while (true)
			{
				var pos = factory.GetRandomPosition(new[] { Piece.Rook }, factory.NoPieces);
				var pieces = pos.GetPiecePositions();
				var bpos = pieces.Where(p => p.Item2.Side == Side.Black).ToArray();
				if (factory.CheckPiecesAreConnected(bpos))
					return factory.GetRandomFlipped(pos);
			}
		}

		internal static Position GetQueenMate(PositionFactory factory)
		{
			while (true)
			{
				var pos = factory.GetRandomPosition(new[] { Piece.Queen }, factory.NoPieces);
				var pieces = pos.GetPiecePositions();
				var bpos = pieces.Where(p => p.Item2.Side == Side.Black).ToArray();
				if (factory.CheckPiecesAreConnected(bpos))
					return factory.GetRandomFlipped(pos);
			}
		}

		internal static Position GetDoubleBishopMate(PositionFactory factory)
		{
			var bishops = new[] { Piece.Bishop, Piece.Bishop };
			while (true)
			{
				var pos = factory.GetRandomPosition(bishops, factory.NoPieces);
				var pieces = pos.GetPiecePositions();
				var bishpos = pieces.Where(p => p.Item2.Piece == Piece.Bishop).ToArray();
				if (((bishpos[0].Item1.File + bishpos[0].Item1.Rank) % 2) != ((bishpos[1].Item1.File + bishpos[1].Item1.Rank) % 2))
					return factory.GetRandomFlipped(pos);
			}
		}

		internal static Position GetQueenVsBishopMate(PositionFactory factory)
		{
			while (true)
			{
				var pos = factory.GetRandomPosition(new[] { Piece.Queen }, new[] { Piece.Bishop });
				var pieces = pos.GetPiecePositions();
				var bpos = pieces.Where(p => p.Item2.Side == Side.Black).ToArray();
				if (factory.CheckPiecesAreConnected(bpos))
					return factory.GetRandomFlipped(pos);
			}
		}

		internal static Position GetQueenVsKnightMate(PositionFactory factory)
		{
			while (true)
			{
				var pos = factory.GetRandomPosition(new[] { Piece.Queen }, new[] { Piece.Knight });
				var pieces = pos.GetPiecePositions();
				var bpos = pieces.Where(p => p.Item2.Side == Side.Black).ToArray();
				if (factory.CheckPiecesAreConnected(bpos))
					return factory.GetRandomFlipped(pos);
			}
		}
	}
}

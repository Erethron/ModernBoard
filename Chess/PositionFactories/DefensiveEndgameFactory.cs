using System.Linq;

namespace Chess.PositionFactories
{
	internal static class DefensiveEndgameFactory
	{
		internal static Position GetQueenVsPromotingPawn()
		{
			while (true)
			{
				int file = 1 + PositionFactory.GetRand(6);
				if (file == 2 || file == 5)
					continue;

				int rank = 1;
				var pos = PositionFactory.GetRandomPosition(new[] { Piece.Queen }, PositionFactory.NoPieces, Side.White, false);
				if (pos.Squares[file,rank] != Occupation.Empty)
					continue; ;

				pos.Squares[file, rank] = new Occupation(Side.Black, Piece.Pawn);
				pos.CalculateFEN();
				var pieces = pos.GetPiecePositions();
				var bpos = pieces.Where(p => p.Item2.Side == Side.Black).ToArray();
				if (PositionFactory.CheckPiecesAreConnected(bpos))
					return pos;
			}
		}
	}
}

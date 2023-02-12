using System;
using System.Linq;

namespace Chess.PositionFactories
{
	internal static class OffensiveEndgameFactory
	{
		internal static Position GetRandomLucena(PositionFactory factory)
		{
			int file = 1 + factory.GetRand(6);
			var position = Position.GetEmpty();
			position.Squares[file, 6] = new Occupation(Side.White, Piece.Pawn);
			position.Squares[file, 7] = new Occupation(Side.White, Piece.King);

			int bfile = file >= 5 ? file - 2 : file <= 2 ? file + 2 : file + 2 - 4 * factory.GetRand(2);
			position.Squares[bfile, 6] = new Occupation(Side.Black, Piece.King);

			int rank = factory.GetRand(2);
			position.Squares[(file + bfile) / 2, rank] = new Occupation(Side.White, Piece.Rook);
			position.Squares[file - Math.Sign(bfile - file), 1 - rank] = new Occupation(Side.Black, Piece.Rook);
			position.CalculateFEN();
			return factory.GetRandomFlipped(position); 
		}

		internal static Position GetRandom32PawnWin(PositionFactory factory)
		{
			var position = Position.GetEmpty();
			for (int file = 5; file <8;file++)
				position.Squares[file, 1 + factory.GetRand(2)] = new Occupation(Side.White, Piece.Pawn);

			int bo = factory.GetRand(2);
			for (int file = 5; file < 7; file++)
				position.Squares[file + bo, 5 + factory.GetRand(2)] = new Occupation(Side.Black, Piece.Pawn);

			position.Squares[5 + factory.GetRand(3), 0] = new Occupation(Side.White, Piece.King);
			position.Squares[5 + factory.GetRand(3), 7] = new Occupation(Side.Black, Piece.King);
			return factory.GetRandomFlipped(position); 
		}

		internal static Position GetRandomPlusOnePawnWin(PositionFactory factory)
		{
			var position = Position.GetEmpty();

			int pawns = 2 + factory.GetRand(2);
			int startFile = factory.GetRand(3);

			for (int file = 0; file <= pawns; file++)
				position.Squares[startFile + file, 1 + factory.GetRand(3)] = new Occupation(Side.White, Piece.Pawn);

			for (int file = 0; file < pawns; file++)
				position.Squares[startFile + file, 4 + factory.GetRand(3)] = new Occupation(Side.Black, Piece.Pawn);

			position.Squares[startFile + factory.GetRand(3), 0] = new Occupation(Side.White, Piece.King);
			position.Squares[startFile + factory.GetRand(3), 7] = new Occupation(Side.Black, Piece.King);
			return factory.GetRandomFlipped(position);
		}

		internal static Position GetRooksWithConnectedPassersEdge(PositionFactory factory)
		{
			return GetRooksWithConnectedPassers(factory, true);
		}

        internal static Position GetRooksWithConnectedPassersMiddle(PositionFactory factory)
        {
            return GetRooksWithConnectedPassers(factory, false);
        }

        private static Position GetRooksWithConnectedPassers(PositionFactory factory, bool onEdge)
		{
			var position = Position.GetEmpty();

			//Place connected pawns on random files
			int file;
			if (onEdge)
				file = 6 * factory.GetRand(2);
			else
				file = 1 + factory.GetRand(5);

			int rank = 1 + factory.GetRand(3);
			position.Squares[file, rank] = new Occupation(Side.White, Piece.Pawn);
			rank = 1 + factory.GetRand(3);
			position.Squares[file + 1, rank] = new Occupation(Side.White, Piece.Pawn);

			//Put attacking king in random position
			while (true)
			{
				int kfile = file + factory.GetRand(2);
				int krank = 1 + factory.GetRand(3);
				if (position.Squares[kfile, krank].Side == Side.None)
				{
					position.Squares[kfile, krank] = new Occupation(Side.White, Piece.King);
					break;
				}
			}

			//Put defending king in random position
			int dkfile = file + factory.GetRand(2);
			int dkrank = 5 + factory.GetRand(3);
			position.Squares[dkfile, dkrank] = new Occupation(Side.Black, Piece.King);

			int arfile, arrank;

			//Place white rook in the open
			while (true)
			{
				arfile = factory.GetRand(8);
				if (arfile != file && arfile != file + 1)
				{
					arrank = factory.GetRand(2);
					position.Squares[arfile, arrank] = new Occupation(Side.White, Piece.Rook);
					break;
				}
			}

			//Place black rook in the open
			while (true)
			{
				int drfile = factory.GetRand(8);
				int drrank = 4 + factory.GetRand(4);
				if (drfile != file && drfile != file + 1 && drfile != arfile && drrank != arrank)
				{
					position.Squares[drfile, drrank] = new Occupation(Side.Black, Piece.Rook);
					break;
				}
			}

			return factory.GetRandomFlipped(position);
		}

        internal static Position GetKnightsWithConnectedPassersEdge(PositionFactory factory)
        {
            return GetKnightsWithConnectedPassers(factory, true);
        }

        internal static Position GetKnightsWithConnectedPassersMiddle(PositionFactory factory)
        {
            return GetKnightsWithConnectedPassers(factory, false);
        }

        private static Position GetKnightsWithConnectedPassers(PositionFactory factory, bool onEdge)
		{
			var position = Position.GetEmpty();

			//Place connected pawns on random files
			int file;
			if (onEdge)
				file = 6 * factory.GetRand(2);
			else
				file = 1 + factory.GetRand(5);

			int rank = 1 + factory.GetRand(3);
			position.Squares[file, rank] = new Occupation(Side.White, Piece.Pawn);
			rank = 1 + factory.GetRand(3);
			position.Squares[file + 1, rank] = new Occupation(Side.White, Piece.Pawn);

			//Put attacking king in random position
			while (true)
			{
				int kfile = file + factory.GetRand(2);
				int krank = 1 + factory.GetRand(3);
				if (position.Squares[kfile, krank].Side == Side.None)
				{
					position.Squares[kfile, krank] = new Occupation(Side.White, Piece.King);
					break;
				}
			}

			//Put defending king in random position
			int dkfile = file + factory.GetRand(2);
			int dkrank = 5 + factory.GetRand(3);
			position.Squares[dkfile, dkrank] = new Occupation(Side.Black, Piece.King);

			int arfile, arrank;

			//Place white rook in the open
			while (true)
			{
				arfile = factory.GetRand(8);
				if (arfile != file && arfile != file + 1)
				{
					arrank = factory.GetRand(2);
					position.Squares[arfile, arrank] = new Occupation(Side.White, Piece.Knight);
					break;
				}
			}

			//Place black rook in the open
			while (true)
			{
				int drfile = factory.GetRand(8);
				int drrank = 4 + factory.GetRand(4);
				if (drfile != file && drfile != file + 1 && drfile != arfile && drrank != arrank)
				{
					position.Squares[drfile, drrank] = new Occupation(Side.Black, Piece.Knight);
					break;
				}
			}

			return factory.GetRandomFlipped(position);
		}

        internal static Position GetQueensWithConnectedPassersEdge(PositionFactory factory)
        {
            return GetQueensWithConnectedPassers(factory, true);
        }

        internal static Position GetQueensWithConnectedPassersMiddle(PositionFactory factory)
        {
            return GetQueensWithConnectedPassers(factory, false);
        }

        private static Position GetQueensWithConnectedPassers(PositionFactory factory, bool onEdge)
		{
			while (true)
			{
				var position = Position.GetEmpty();

				//Place connected pawns on random files
				int file;
				if (onEdge)
					file = 6 * factory.GetRand(2);
				else
					file = 1 + factory.GetRand(5);

				int rank = 1 + factory.GetRand(3);
				position.Squares[file, rank] = new Occupation(Side.White, Piece.Pawn);
				rank = 1 + factory.GetRand(3);
				position.Squares[file + 1, rank] = new Occupation(Side.White, Piece.Pawn);

				//Put attacking king in random position
				while (true)
				{
					int kfile = file + factory.GetRand(2);
					int krank = 1 + factory.GetRand(3);
					if (position.Squares[kfile, krank].Side == Side.None)
					{
						position.Squares[kfile, krank] = new Occupation(Side.White, Piece.King);
						break;
					}
				}

				//Put defending king in random position
				int dkfile = file + factory.GetRand(2);
				int dkrank = 5 + factory.GetRand(3);
				position.Squares[dkfile, dkrank] = new Occupation(Side.Black, Piece.King);

				int arfile, arrank;

				//Place white rook in the open
				while (true)
				{
					arfile = factory.GetRand(8);
					if (arfile != file && arfile != file + 1)
					{
						arrank = factory.GetRand(2);
						position.Squares[arfile, arrank] = new Occupation(Side.White, Piece.Queen);
						break;
					}
				}

				//Place black rook in the open
				while (true)
				{
					int drfile = factory.GetRand(8);
					int drrank = 4 + factory.GetRand(4);
					if (drfile != file && drfile != file + 1 && drfile != arfile && drrank != arrank)
					{
						position.Squares[drfile, drrank] = new Occupation(Side.Black, Piece.Queen);
						break;
					}
				}

				if (!position.IsCheck)
					return factory.GetRandomFlipped(position);
			}
		}

		internal static Position GetRooksWithDisconnectedPassers(PositionFactory factory)
		{
			var position = Position.GetEmpty();

			//Place disconnected pawns on random files
			int file1 = 1 + factory.GetRand(5);
			int rank1 = 1 + factory.GetRand(2);
			position.Squares[file1, rank1] = new Occupation(Side.White, Piece.Pawn);
			int file2 = file1;

			while (Math.Abs(file2 - file1) < 3)
				file2 = factory.GetRand(6);


			int rank2 = rank1 + 1 + factory.GetRand(2);
			if (rank1 == rank2 - 1)
				rank2 += 1 + factory.GetRand(2);
			if (rank2 == rank1 - 1)
				rank1 += 1 + factory.GetRand(2);
			position.Squares[file2, rank2] = new Occupation(Side.White, Piece.Pawn);

			//Put defending king around the not-so-advanced pawn and the rook behind the other
			position.Squares[file1, rank1+1] = new Occupation(Side.Black, Piece.King);
			position.Squares[file2, 5 + factory.GetRand(3)] = new Occupation(Side.Black, Piece.Rook);

			//Put attacking king and rook in random positions
			int kfile, rfile, krank;
			if (factory.GetRand(2) == 0)
			{
				kfile = Math.Min(7,Math.Max(0, file1 - 1 + factory.GetRand(3)));
				krank = rank1 - 1;
				rfile = file2;
			}
			else
			{
				kfile = Math.Min(7, Math.Max(0, file2 - 1 + factory.GetRand(3)));
				krank = rank2 - 1;
				rfile = file1;
			}


			position.Squares[kfile, krank] = new Occupation(Side.White, Piece.King);
			position.Squares[rfile, 0] = new Occupation(Side.White, Piece.Rook);

			return factory.GetRandomFlipped(position);
		}

		internal static Position GetRooksAndPawnVersusKnight(PositionFactory factory)
		{
			return GetRooksAndPawnVersusSingleDefender(factory, Piece.Knight);
		}

		internal static Position GetRooksAndPawnVersusBishop(PositionFactory factory)
		{
			return GetRooksAndPawnVersusSingleDefender(factory, Piece.Bishop);
		}

		internal static Position GetRooksAndPawnVersusSingleDefender(PositionFactory factory, Piece defender)
		{
			while (true)
			{
				var position = Position.GetEmpty();

				//Place Pawn
				int file = 1 + factory.GetRand(6);
				int rank = 1 + factory.GetRand(3);
				position.Squares[file, rank] = new Occupation(Side.White, Piece.Pawn);

				//Put attacking king in random position
				while (true)
				{
					int kfile = factory.GetRand(8);
					int krank = factory.GetRand(4);
					if (position.Squares[kfile, krank].Side == Side.None)
					{
						position.Squares[kfile, krank] = new Occupation(Side.White, Piece.King);
						break;
					}
				}

				//Put attacking rook in random position
				while (true)
				{
					int kfile = factory.GetRand(8);
					int krank = factory.GetRand(4);
					if (position.Squares[kfile, krank].Side == Side.None)
					{
						position.Squares[kfile, krank] = new Occupation(Side.White, Piece.Rook);
						break;
					}
				}

				//Put defending king in random position (but before the pawn)
				while (true)
				{
					int kfile = file - 1 + factory.GetRand(2);
					int krank = 4 + factory.GetRand(4);
					if (position.Squares[kfile, krank].Side == Side.None)
					{
						position.Squares[kfile, krank] = new Occupation(Side.Black, Piece.King);
						break;
					}
				}

				//Put defender in random position
				while (true)
				{
					int kfile = factory.GetRand(7);
					int krank = 6 + factory.GetRand(2);
					if (position.Squares[kfile, krank].Side == Side.None)
					{
						position.Squares[kfile, krank] = new Occupation(Side.Black, defender);
						break;
					}
				}

				if (position.IsCheck || position.IsStaleMate)
					continue;

				var moves = position.GetValidMoves();
				if (moves.All(m => position.Squares[m.To.File, m.To.Rank].Piece == Piece.None))
					return factory.GetRandomFlipped(position);
			}
		}

		internal static Position GetRandomDoubleRooksVersusSingleRook(PositionFactory factory)
		{
			return factory.GetRandomFlipped(factory.GetRandomPosition(new[] { Piece.Rook, Piece.Rook }, new[] { Piece.Rook }));
		}

		internal static Position GetRookAgainstKnightWithManyPawns(PositionFactory factory)
		{
			var position = Position.GetEmpty();

			//Place pawns on random files
			for (int file = 0; file < 8; file++)
				if (factory.GetRand(100) < 70)
				{
					int rnd = factory.GetRand(5);
					position.Squares[file, rnd == 0 ? 3 : rnd == 1 ? 2 : 1] = new Occupation(Side.White, Piece.Pawn);
					rnd = factory.GetRand(5);
					position.Squares[file, rnd == 0 ? 4 : rnd == 1 ? 5 : 6] = new Occupation(Side.Black, Piece.Pawn);
				}

			//Put defending king in random position
			int kfile = factory.GetRand(7);
			position.Squares[kfile, 7] = new Occupation(Side.Black, Piece.King);

			//Put defending knight in random position
			while (true)
			{
				int file = kfile - 1 + factory.GetRand(3);
				int rank = 7 - factory.GetRand(2);
				if (file >= 0 && file < 8 && position.Squares[file, rank].Side == Side.None)
				{
					position.Squares[file, rank] = new Occupation(Side.Black, Piece.Knight);
					break;
				}
			}

			//Put attacking king in random position
			kfile = factory.GetRand(7);
			position.Squares[kfile, 0] = new Occupation(Side.White, Piece.King);

			//Put attacking rook in random position
			while (true)
			{
				int file = kfile - 1 + factory.GetRand(3);
				int rank = factory.GetRand(2);
				if (file >= 0 && file < 8 && position.Squares[file, rank].Side == Side.None)
				{
					position.Squares[file, rank] = new Occupation(Side.White, Piece.Rook);
					break;
				}
			}

			return factory.GetRandomFlipped(position);
		}

		internal static Position GetRandomQueenVersusRook(PositionFactory factory)
		{
			return factory.GetRandomFlipped(factory.GetRandomPosition(new[] { Piece.Queen }, new[] { Piece.Rook }));
		}

		internal static Position GetRandom6vs5PawnsWin(PositionFactory factory)
		{
			var position = Position.GetEmpty();
			int offset = factory.GetRand(1);

			for (int f = 0; f < 3; f++)
			{
				int file = f + offset;
				int rank = 1 + factory.GetRand(3);
				position.Squares[file, rank] = new Occupation(Side.White, Piece.Pawn);

				if (f > 0)
				{ 
					rank = 6 - factory.GetRand(3);
					position.Squares[file, rank] = new Occupation(Side.Black, Piece.Pawn);
				}
			}

			offset = 4 + factory.GetRand(1);

			for (int f = 0; f < 3; f++)
			{
				int file = f + offset;
				int rank = 1 + factory.GetRand(3);
				position.Squares[file, rank] = new Occupation(Side.White, Piece.Pawn);
				rank = 6 - factory.GetRand(3);
				position.Squares[file, rank] = new Occupation(Side.Black, Piece.Pawn);
			}
			
			offset = factory.GetRand(1);
			position.Squares[4 + offset, 0] = new Occupation(Side.White, Piece.King);
			offset = factory.GetRand(1);
			position.Squares[4 + offset, 7] = new Occupation(Side.Black, Piece.King);

			return factory.GetRandomFlipped(position);
		}

        internal static Position GetRektPawnsWin(PositionFactory factory)
        {
            var position = Position.GetEmpty();

			//6 nice white pawns
			for (int file = 0; file < 3; file++)
			{
				position.Squares[file, 1 + factory.GetRand(3)] = new Occupation(Side.White, Piece.Pawn);
				position.Squares[7 - file, 1 + factory.GetRand(3)] = new Occupation(Side.White, Piece.Pawn);
			}

            //Pawns on rook files
            position.Squares[0, 6 - factory.GetRand(3)] = new Occupation(Side.Black, Piece.Pawn);
            position.Squares[7, 6 - factory.GetRand(3)] = new Occupation(Side.Black, Piece.Pawn);

			//Double pawns on c file
            int rank = 6 - factory.GetRand(2);
            position.Squares[2, rank] = new Occupation(Side.Black, Piece.Pawn);
			rank = --rank == 4 ? rank : rank - factory.GetRand(2);
            position.Squares[2, rank] = new Occupation(Side.Black, Piece.Pawn);

            //Double pawns on f file
            rank = 6 - factory.GetRand(2);
            position.Squares[5, rank] = new Occupation(Side.Black, Piece.Pawn);
            rank = --rank == 4 ? rank : rank - factory.GetRand(2);
            position.Squares[5, rank] = new Occupation(Side.Black, Piece.Pawn);

            //Random king positions
            position.Squares[2 + factory.GetRand(4), 0] = new Occupation(Side.White, Piece.King);
            position.Squares[2 + factory.GetRand(4), 7] = new Occupation(Side.Black, Piece.King);

            return factory.GetRandomFlipped(position);
        }

    }
}

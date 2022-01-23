using System;
using System.Linq;

namespace Chess.PositionFactories
{
	internal static class OffensiveEndgameFactory
	{
		internal static Position GetRandomLucena()
		{
			int file = 1 + PositionFactory.GetRand(6);
			var position = Position.GetEmpty();
			position.Squares[file, 6] = new Occupation(Side.White, Piece.Pawn);
			position.Squares[file, 7] = new Occupation(Side.White, Piece.King);

			int bfile = file >= 5 ? file - 2 : file <= 2 ? file + 2 : file + 2 - 4 * PositionFactory.GetRand(2);
			position.Squares[bfile, 6] = new Occupation(Side.Black, Piece.King);

			int rank = PositionFactory.GetRand(2);
			position.Squares[(file + bfile) / 2, rank] = new Occupation(Side.White, Piece.Rook);
			position.Squares[file - Math.Sign(bfile - file), 1 - rank] = new Occupation(Side.Black, Piece.Rook);
			position.CalculateFEN();
			return PositionFactory.GetRandomFlipped(position); 
		}

		internal static Position GetRandom32PawnWin()
		{
			var position = Position.GetEmpty();
			for (int file = 5; file <8;file++)
				position.Squares[file, 1 + PositionFactory.GetRand(2)] = new Occupation(Side.White, Piece.Pawn);

			int bo = PositionFactory.GetRand(2);
			for (int file = 5; file < 7; file++)
				position.Squares[file + bo, 5 + PositionFactory.GetRand(2)] = new Occupation(Side.Black, Piece.Pawn);

			position.Squares[5 + PositionFactory.GetRand(3), 0] = new Occupation(Side.White, Piece.King);
			position.Squares[5 + PositionFactory.GetRand(3), 7] = new Occupation(Side.Black, Piece.King);
			return PositionFactory.GetRandomFlipped(position); 
		}

		internal static Position GetRandomPlusOnePawnWin()
		{
			var position = Position.GetEmpty();

			int pawns = 2 + PositionFactory.GetRand(2);
			int startFile = PositionFactory.GetRand(3);

			for (int file = 0; file <= pawns; file++)
				position.Squares[startFile + file, 1 + PositionFactory.GetRand(3)] = new Occupation(Side.White, Piece.Pawn);

			for (int file = 0; file < pawns; file++)
				position.Squares[startFile + file, 4 + PositionFactory.GetRand(3)] = new Occupation(Side.Black, Piece.Pawn);

			position.Squares[startFile + PositionFactory.GetRand(3), 0] = new Occupation(Side.White, Piece.King);
			position.Squares[startFile + PositionFactory.GetRand(3), 7] = new Occupation(Side.Black, Piece.King);
			return PositionFactory.GetRandomFlipped(position);
		}

		internal static Position GetRooksWithConnectedPassers(bool onEdge)
		{
			var position = Position.GetEmpty();

			//Place connected pawns on random files
			int file;
			if (onEdge)
				file = 6 * PositionFactory.GetRand(2);
			else
				file = 1 + PositionFactory.GetRand(5);

			int rank = 1 + PositionFactory.GetRand(3);
			position.Squares[file, rank] = new Occupation(Side.White, Piece.Pawn);
			rank = 1 + PositionFactory.GetRand(3);
			position.Squares[file + 1, rank] = new Occupation(Side.White, Piece.Pawn);

			//Put attacking king in random position
			while (true)
			{
				int kfile = file + PositionFactory.GetRand(2);
				int krank = 1 + PositionFactory.GetRand(3);
				if (position.Squares[kfile, krank].Side == Side.None)
				{
					position.Squares[kfile, krank] = new Occupation(Side.White, Piece.King);
					break;
				}
			}

			//Put defending king in random position
			int dkfile = file + PositionFactory.GetRand(2);
			int dkrank = 5 + PositionFactory.GetRand(3);
			position.Squares[dkfile, dkrank] = new Occupation(Side.Black, Piece.King);

			int arfile, arrank;

			//Place white rook in the open
			while (true)
			{
				arfile = PositionFactory.GetRand(8);
				if (arfile != file && arfile != file + 1)
				{
					arrank = PositionFactory.GetRand(2);
					position.Squares[arfile, arrank] = new Occupation(Side.White, Piece.Rook);
					break;
				}
			}

			//Place black rook in the open
			while (true)
			{
				int drfile = PositionFactory.GetRand(8);
				int drrank = 4 + PositionFactory.GetRand(4);
				if (drfile != file && drfile != file + 1 && drfile != arfile && drrank != arrank)
				{
					position.Squares[drfile, drrank] = new Occupation(Side.Black, Piece.Rook);
					break;
				}
			}

			return PositionFactory.GetRandomFlipped(position);
		}

		internal static Position GetKnightsWithConnectedPassers(bool onEdge)
		{
			var position = Position.GetEmpty();

			//Place connected pawns on random files
			int file;
			if (onEdge)
				file = 6 * PositionFactory.GetRand(2);
			else
				file = 1 + PositionFactory.GetRand(5);

			int rank = 1 + PositionFactory.GetRand(3);
			position.Squares[file, rank] = new Occupation(Side.White, Piece.Pawn);
			rank = 1 + PositionFactory.GetRand(3);
			position.Squares[file + 1, rank] = new Occupation(Side.White, Piece.Pawn);

			//Put attacking king in random position
			while (true)
			{
				int kfile = file + PositionFactory.GetRand(2);
				int krank = 1 + PositionFactory.GetRand(3);
				if (position.Squares[kfile, krank].Side == Side.None)
				{
					position.Squares[kfile, krank] = new Occupation(Side.White, Piece.King);
					break;
				}
			}

			//Put defending king in random position
			int dkfile = file + PositionFactory.GetRand(2);
			int dkrank = 5 + PositionFactory.GetRand(3);
			position.Squares[dkfile, dkrank] = new Occupation(Side.Black, Piece.King);

			int arfile, arrank;

			//Place white rook in the open
			while (true)
			{
				arfile = PositionFactory.GetRand(8);
				if (arfile != file && arfile != file + 1)
				{
					arrank = PositionFactory.GetRand(2);
					position.Squares[arfile, arrank] = new Occupation(Side.White, Piece.Knight);
					break;
				}
			}

			//Place black rook in the open
			while (true)
			{
				int drfile = PositionFactory.GetRand(8);
				int drrank = 4 + PositionFactory.GetRand(4);
				if (drfile != file && drfile != file + 1 && drfile != arfile && drrank != arrank)
				{
					position.Squares[drfile, drrank] = new Occupation(Side.Black, Piece.Knight);
					break;
				}
			}

			return PositionFactory.GetRandomFlipped(position);
		}

		internal static Position GetQueensWithConnectedPassers(bool onEdge)
		{
			while (true)
			{
				var position = Position.GetEmpty();

				//Place connected pawns on random files
				int file;
				if (onEdge)
					file = 6 * PositionFactory.GetRand(2);
				else
					file = 1 + PositionFactory.GetRand(5);

				int rank = 1 + PositionFactory.GetRand(3);
				position.Squares[file, rank] = new Occupation(Side.White, Piece.Pawn);
				rank = 1 + PositionFactory.GetRand(3);
				position.Squares[file + 1, rank] = new Occupation(Side.White, Piece.Pawn);

				//Put attacking king in random position
				while (true)
				{
					int kfile = file + PositionFactory.GetRand(2);
					int krank = 1 + PositionFactory.GetRand(3);
					if (position.Squares[kfile, krank].Side == Side.None)
					{
						position.Squares[kfile, krank] = new Occupation(Side.White, Piece.King);
						break;
					}
				}

				//Put defending king in random position
				int dkfile = file + PositionFactory.GetRand(2);
				int dkrank = 5 + PositionFactory.GetRand(3);
				position.Squares[dkfile, dkrank] = new Occupation(Side.Black, Piece.King);

				int arfile, arrank;

				//Place white rook in the open
				while (true)
				{
					arfile = PositionFactory.GetRand(8);
					if (arfile != file && arfile != file + 1)
					{
						arrank = PositionFactory.GetRand(2);
						position.Squares[arfile, arrank] = new Occupation(Side.White, Piece.Queen);
						break;
					}
				}

				//Place black rook in the open
				while (true)
				{
					int drfile = PositionFactory.GetRand(8);
					int drrank = 4 + PositionFactory.GetRand(4);
					if (drfile != file && drfile != file + 1 && drfile != arfile && drrank != arrank)
					{
						position.Squares[drfile, drrank] = new Occupation(Side.Black, Piece.Queen);
						break;
					}
				}

				if (!position.IsCheck)
					return PositionFactory.GetRandomFlipped(position);
			}
		}

		internal static Position GetRooksWithDisconnectedPassers()
		{
			var position = Position.GetEmpty();

			//Place disconnected pawns on random files
			int file1 = 1 + PositionFactory.GetRand(5);
			int rank1 = 1 + PositionFactory.GetRand(2);
			position.Squares[file1, rank1] = new Occupation(Side.White, Piece.Pawn);
			int file2 = file1;

			while (Math.Abs(file2 - file1) < 3)
				file2 = PositionFactory.GetRand(6);


			int rank2 = rank1 + 1 + PositionFactory.GetRand(2);
			if (rank1 == rank2 - 1)
				rank2 += 1 + PositionFactory.GetRand(2);
			if (rank2 == rank1 - 1)
				rank1 += 1 + PositionFactory.GetRand(2);
			position.Squares[file2, rank2] = new Occupation(Side.White, Piece.Pawn);

			//Put defending king around the not-so-advanced pawn and the rook behind the other
			position.Squares[file1, rank1+1] = new Occupation(Side.Black, Piece.King);
			position.Squares[file2, 5 + PositionFactory.GetRand(3)] = new Occupation(Side.Black, Piece.Rook);

			//Put attacking king and rook in random positions
			int kfile, rfile, krank;
			if (PositionFactory.GetRand(2) == 0)
			{
				kfile = Math.Min(7,Math.Max(0, file1 - 1 + PositionFactory.GetRand(3)));
				krank = rank1 - 1;
				rfile = file2;
			}
			else
			{
				kfile = Math.Min(7, Math.Max(0, file2 - 1 + PositionFactory.GetRand(3)));
				krank = rank2 - 1;
				rfile = file1;
			}


			position.Squares[kfile, krank] = new Occupation(Side.White, Piece.King);
			position.Squares[rfile, 0] = new Occupation(Side.White, Piece.Rook);

			return PositionFactory.GetRandomFlipped(position);
		}

		internal static Position GetRooksAndPawnVersusKnight()
		{
			return GetRooksAndPawnVersusSingleDefender(Piece.Knight);
		}

		internal static Position GetRooksAndPawnVersusBishop()
		{
			return GetRooksAndPawnVersusSingleDefender(Piece.Bishop);
		}

		internal static Position GetRooksAndPawnVersusSingleDefender(Piece defender)
		{
			while (true)
			{
				var position = Position.GetEmpty();

				//Place Pawn
				int file = 1 + PositionFactory.GetRand(6);
				int rank = 1 + PositionFactory.GetRand(3);
				position.Squares[file, rank] = new Occupation(Side.White, Piece.Pawn);

				//Put attacking king in random position
				while (true)
				{
					int kfile = PositionFactory.GetRand(8);
					int krank = PositionFactory.GetRand(4);
					if (position.Squares[kfile, krank].Side == Side.None)
					{
						position.Squares[kfile, krank] = new Occupation(Side.White, Piece.King);
						break;
					}
				}

				//Put attacking rook in random position
				while (true)
				{
					int kfile = PositionFactory.GetRand(8);
					int krank = PositionFactory.GetRand(4);
					if (position.Squares[kfile, krank].Side == Side.None)
					{
						position.Squares[kfile, krank] = new Occupation(Side.White, Piece.Rook);
						break;
					}
				}

				//Put defending king in random position (but before the pawn)
				while (true)
				{
					int kfile = file - 1 + PositionFactory.GetRand(2);
					int krank = 4 + PositionFactory.GetRand(4);
					if (position.Squares[kfile, krank].Side == Side.None)
					{
						position.Squares[kfile, krank] = new Occupation(Side.Black, Piece.King);
						break;
					}
				}

				//Put defender in random position
				while (true)
				{
					int kfile = PositionFactory.GetRand(7);
					int krank = 6 + PositionFactory.GetRand(2);
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
					return PositionFactory.GetRandomFlipped(position);
			}
		}

		internal static Position GetRandomDoubleRooksVersusSingleRook()
		{
			return PositionFactory.GetRandomFlipped(PositionFactory.GetRandomPosition(new[] { Piece.Rook, Piece.Rook }, new[] { Piece.Rook }));
		}

		internal static Position GetRookAgainstKnightWithManyPawns()
		{
			var position = Position.GetEmpty();

			//Place pawns on random files
			for (int file = 0; file < 8; file++)
				if (PositionFactory.GetRand(100) < 70)
				{
					int rnd = PositionFactory.GetRand(5);
					position.Squares[file, rnd == 0 ? 3 : rnd == 1 ? 2 : 1] = new Occupation(Side.White, Piece.Pawn);
					rnd = PositionFactory.GetRand(5);
					position.Squares[file, rnd == 0 ? 4 : rnd == 1 ? 5 : 6] = new Occupation(Side.Black, Piece.Pawn);
				}

			//Put defending king in random position
			int kfile = PositionFactory.GetRand(7);
			position.Squares[kfile, 7] = new Occupation(Side.Black, Piece.King);

			//Put defending knight in random position
			while (true)
			{
				int file = kfile - 1 + PositionFactory.GetRand(3);
				int rank = 7 - PositionFactory.GetRand(2);
				if (file >= 0 && file < 8 && position.Squares[file, rank].Side == Side.None)
				{
					position.Squares[file, rank] = new Occupation(Side.Black, Piece.Knight);
					break;
				}
			}

			//Put attacking king in random position
			kfile = PositionFactory.GetRand(7);
			position.Squares[kfile, 0] = new Occupation(Side.White, Piece.King);

			//Put attacking rook in random position
			while (true)
			{
				int file = kfile - 1 + PositionFactory.GetRand(3);
				int rank = PositionFactory.GetRand(2);
				if (file >= 0 && file < 8 && position.Squares[file, rank].Side == Side.None)
				{
					position.Squares[file, rank] = new Occupation(Side.White, Piece.Rook);
					break;
				}
			}

			return PositionFactory.GetRandomFlipped(position);
		}

		internal static Position GetRandomQueenVersusRook()
		{
			return PositionFactory.GetRandomFlipped(PositionFactory.GetRandomPosition(new[] { Piece.Queen }, new[] { Piece.Rook }));
		}

		internal static Position GetRandom6vs5PawnsWin()
		{
			var position = Position.GetEmpty();
			int offset = PositionFactory.GetRand(1);

			for (int f = 0; f < 3; f++)
			{
				int file = f + offset;
				int rank = 1 + PositionFactory.GetRand(3);
				position.Squares[file, rank] = new Occupation(Side.White, Piece.Pawn);

				if (f > 0)
				{ 
					rank = 6 - PositionFactory.GetRand(3);
					position.Squares[file, rank] = new Occupation(Side.Black, Piece.Pawn);
				}
			}

			offset = 4 + PositionFactory.GetRand(1);

			for (int f = 0; f < 3; f++)
			{
				int file = f + offset;
				int rank = 1 + PositionFactory.GetRand(3);
				position.Squares[file, rank] = new Occupation(Side.White, Piece.Pawn);
				rank = 6 - PositionFactory.GetRand(3);
				position.Squares[file, rank] = new Occupation(Side.Black, Piece.Pawn);
			}
			
			offset = PositionFactory.GetRand(1);
			position.Squares[4 + offset, 0] = new Occupation(Side.White, Piece.King);
			offset = PositionFactory.GetRand(1);
			position.Squares[4 + offset, 7] = new Occupation(Side.Black, Piece.King);

			return PositionFactory.GetRandomFlipped(position);
		}
	}
}

using Chess.PositionFactories;
using System;
using System.Collections.Generic;
using System.Linq;

namespace Chess
{
	public class Position
	{
		public const string START_FEN = "rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR w KQkq - 0 1";
		public static Position GetStartPosition(PositionFactory _) => FromFEN(START_FEN);

		public Occupation[,] Squares { get; } = new Occupation[8, 8];
		public bool[,] Castles { get; } = new bool[2, 2];
		public Coordinate EnPassant { get; private set; }
		public Side SideToPlay { get; private set; }
		public int PlysTo50Moves { get; private set; }
		public int MoveNumber { get; private set; }
		public string FEN { get; private set; }

		private Position()
		{
		}

		public static Position GetEmpty(Side sideToMove = Side.White)
		{
			return sideToMove switch
			{
				Side.White => FromFEN("8/8/8/8/8/8/8/8 w - - 0 1"),
				Side.Black => FromFEN("8/8/8/8/8/8/8/8 b - - 0 1"),
				_ => throw new ArgumentOutOfRangeException(nameof(sideToMove), sideToMove, "Side to move must be either black or white"),
			};
		}

		public static Position FromFEN(string fen)
		{
			var retval = new Position();

			var fengroups = fen.Split(' ');
			if (fengroups.Length != 6)
				throw new ArgumentException("Invalid FEN string: Notation must consist of 6 groups separated by a single space char.");

			//We replace all the numerical representations for empty squares so that we get something nice to parse
			//This is ugly but effective
			fengroups[0] = fengroups[0]
				 .Replace("1", " ")
				 .Replace("2", "  ")
				 .Replace("3", "   ")
				 .Replace("4", "    ")
				 .Replace("5", "     ")
				 .Replace("6", "      ")
				 .Replace("7", "       ")
				 .Replace("8", "        ");

			//First FEN group is the board position -> split up ranks
			var ranks = fengroups[0].Split('/');
			if (ranks.Length != 8)
				throw new ArgumentException("Invalid FEN string: Board positions must consist of 8 ranks.");

			for (int r = 0; r < 8; r++)
			{
				if (ranks[r].Length != 8)
					throw new ArgumentException($"Invalid FEN string: Rank {r} of the first FEN group does not exist of 8 files.");

				for (int f = 0; f < 8; f++)
				{
					char c = ranks[r][f];
					Occupation occ = c switch
					{
						//empty space
						' ' => Occupation.Empty,
						//White pawn
						'P' => new Occupation(Side.White, Piece.Pawn),
						//White knight
						'N' => new Occupation(Side.White, Piece.Knight),
						//White bishop
						'B' => new Occupation(Side.White, Piece.Bishop),
						//White rook
						'R' => new Occupation(Side.White, Piece.Rook),
						//White queen
						'Q' => new Occupation(Side.White, Piece.Queen),
						//White king
						'K' => new Occupation(Side.White, Piece.King),
						//Black pawn
						'p' => new Occupation(Side.Black, Piece.Pawn),
						//Black knight
						'n' => new Occupation(Side.Black, Piece.Knight),
						//Black bishop
						'b' => new Occupation(Side.Black, Piece.Bishop),
						//Black rook
						'r' => new Occupation(Side.Black, Piece.Rook),
						//Black queen
						'q' => new Occupation(Side.Black, Piece.Queen),
						//Black king
						'k' => new Occupation(Side.Black, Piece.King),
						//Invalid char
						_ => throw new ArgumentException("Invalid FEN string: An invalid character ('" + c + "' is present in the FEN string."),
					};
					retval.Squares[f, 7 - r] = occ;
				}
			}

			//castling rights are in group #3 and are coded into byte #65 (=> signature[62])
			retval.Castles[0, 0] = fengroups[2].Contains('Q');
			retval.Castles[0, 1] = fengroups[2].Contains('K');
			retval.Castles[1, 0] = fengroups[2].Contains('q');
			retval.Castles[1, 1] = fengroups[2].Contains('k');

			//en passant possibilities are in group #4, we store only the file of the field into the upper half-byte of signature[64]
			if (fengroups[3].Length < 1 || fengroups[3].Length > 2)
				throw new ArgumentException("The en passant field of the FEN string must either equal '-' or represent a valid field on the board (eg f3).");

			if (fengroups[3] != "-")
				retval.EnPassant = Coordinate.Parse(fengroups[3]);

			//Now write the player to move to the two most significant bit of the last byte
			retval.SideToPlay = fengroups[1].ToLower() switch
			{
				"w" => Side.White,
				"b" => Side.Black,
				_ => throw new ArgumentException("Invalid FEN string: Player to move must either be w or b."),
			};

			//Finally get the number of turns since the last pawn move or capture for 50 turns rule
			retval.PlysTo50Moves = Convert.ToByte(fengroups[4]);
			if (retval.PlysTo50Moves > 100)
				throw new ArgumentException("Invalid FEN string: number of moves since last pawn move or capture may not exceed 50.");

			retval.MoveNumber = Convert.ToInt16(fengroups[5]);
			retval.FEN = fen;
			return retval;
		}

		internal void ClearCastles()
		{
			Castles[0, 0] = false;
			Castles[0, 1] = false;
			Castles[1, 0] = false;
			Castles[1, 1] = false;
		}

		public IEnumerable<Move> GetValidMoves()
		{
			return GetValidMoves(SideToPlay);
		}

		public IEnumerable<Move> GetValidMoves(Side side)
		{
			var rawmoves = GetRawMoves(side, true);
			foreach (var move in rawmoves)
			{
				var position = ApplyMove(move, false);
				var king = position.GetKingPosition(side);
				var oppmoves = position.GetRawMoves(side == Side.White ? Side.Black : Side.White, false);
				if (oppmoves.All(m => m.To != king))
					yield return move;
			}
		}

		public bool IsCheck
		{ 
			get
			{
				var raws = GetRawMoves(SideToPlay == Side.White ? Side.Black : Side.White, false);
				return raws.Any(r => Squares[r.To.File, r.To.Rank].Piece == Piece.King);
			}
		}

		private static readonly string[] DrawMaterial = { "KK","KBK", "KNK" };
		public bool HasEnoughMaterialForCheckMate
		{
			get
			{
				var pieces = GetPiecePositions().GroupBy(p => p.Item2.Side)
														.OrderBy(g => g.Count())
														.ToList();

				string key = string.Join("",
					pieces.Select(pl => string.Join("",
						pl.OrderBy(p => p.Item2.Piece)
							.Select(p => Helper.CharsByPiece[p.Item2.Piece]))));
				return !DrawMaterial.Contains(key);
			}
		}

		public bool IsCheckMate => !GetValidMoves().Any() && IsCheck;
		public bool IsStaleMate => !GetValidMoves().Any() && !IsCheck;

		public Position ApplyMove(Move move)
		{
			return ApplyMove(move, true);
		}

		private Position ApplyMove(Move move, bool check)
		{
			if (check)
			{
				var moves = GetValidMoves(SideToPlay);
				if (!moves.Contains(move))
					throw new InvalidOperationException("invalid move");
			}

			var retval = GetClone();
			var fromOcc = Squares[move.From.File, move.From.Rank];

			retval.Squares[move.From.File, move.From.Rank] = Occupation.Empty;
			retval.Squares[move.To.File, move.To.Rank] = new Occupation(fromOcc.Side,move.Promotion == Piece.None ? fromOcc.Piece : move.Promotion);
			retval.SideToPlay = SideToPlay == Side.White ? Side.Black : Side.White;

			if (fromOcc.Piece == Piece.King)
			{
				retval.Castles[Helper.CastleIndices[fromOcc.Side], 0] = false;
				retval.Castles[Helper.CastleIndices[fromOcc.Side], 1] = false;
				if (move.From.File == 4 && move.To.File == 6)
				{
					retval.Squares[5, move.From.Rank] = retval.Squares[7, move.From.Rank];
					retval.Squares[7, move.From.Rank] = Occupation.Empty;
				}
				else if (move.From.File == 4 && move.To.File == 2)
				{
					retval.Squares[3, move.From.Rank] = retval.Squares[0, move.From.Rank];
					retval.Squares[0, move.From.Rank] = Occupation.Empty;
				}
			}
			else if (fromOcc.Piece == Piece.Pawn)
			{
				if (move.To == EnPassant)
					retval.Squares[EnPassant.File, move.From.Rank] = Occupation.Empty;
				else if (Math.Abs(move.From.Rank - move.To.Rank) == 2)
					retval.EnPassant = new Coordinate(move.From.File, (move.From.Rank + move.To.Rank) / 2);
			}

			if (move.From.Rank == 0)
			{
				if (move.From.File == 0) retval.Castles[0, 0] = false;
				if (move.From.File == 7) retval.Castles[0, 1] = false;
			}
			else if (move.From.Rank == 7)
			{
				if (move.From.File == 0) retval.Castles[1, 0] = false;
				if (move.From.File == 7) retval.Castles[1, 1] = false;
			}

			if (move.To.Rank == 0)
			{
				if (move.To.File == 0) retval.Castles[0, 0] = false;
				if (move.To.File == 7) retval.Castles[0, 1] = false;
			}
			else if (move.To.Rank == 7)
			{
				if (move.To.File == 0) retval.Castles[1, 0] = false;
				if (move.To.File == 7) retval.Castles[1, 1] = false;
			}

			if (fromOcc.Piece == Piece.Pawn || Squares[move.To.File, move.To.Rank].Side != Side.None)
				retval.PlysTo50Moves = 0;
			else
				retval.PlysTo50Moves++;

			if (SideToPlay == Side.Black)
				retval.MoveNumber++;
			retval.CalculateFEN();
			return retval;
		}

		public Position GetClone()
		{
			var retval = new Position();
			for (int file = 0; file < 8; file++)
				for (int rank = 0; rank < 8; rank++)
					retval.Squares[file, rank] = Squares[file, rank];

			retval.Castles[0, 0] = Castles[0, 0];
			retval.Castles[0, 1] = Castles[0, 1];
			retval.Castles[1, 0] = Castles[1, 0];
			retval.Castles[1, 1] = Castles[1, 1];
			retval.SideToPlay = SideToPlay;
			retval.MoveNumber = MoveNumber;
			retval.PlysTo50Moves = PlysTo50Moves;
			retval.FEN = FEN;
			return retval;
		}


		internal void CalculateFEN()
		{
			FEN = "";
			for (int rank = 7; rank >= 0; rank--)
			{
				for (int file = 0; file < 8; file++)
				{
					var occ = Squares[file, rank];
					if (occ.Piece == Piece.None)
					{
						FEN += " ";
					}
					else
					{
						string pc = Helper.CharsByPiece[occ.Piece];
						pc = occ.Side == Side.White ? pc.ToUpper() : pc.ToLower();
						FEN += pc;
					}
				}
				FEN += "/";
			}
			FEN = FEN.Replace("        ", "8")
						.Replace("       ", "7")
						.Replace("      ", "6")
						.Replace("     ", "5")
						.Replace("    ", "4")
						.Replace("   ", "3")
						.Replace("  ", "2")
						.Replace(" ", "1");

			FEN = FEN.Substring(0, FEN.Length - 1);
			FEN += SideToPlay == Side.White ? " w " : " b ";

			if (Castles[0, 1]) FEN += "K";
			if (Castles[0, 0]) FEN += "Q";
			if (Castles[1, 1]) FEN += "k";
			if (Castles[1, 0]) FEN += "q";
			if (FEN.Substring(FEN.Length - 1, 1) == " ")
				FEN += "-";

			if (EnPassant == null)
				FEN += " -";
			else
				FEN += " " + EnPassant;

			FEN += $" {PlysTo50Moves} {MoveNumber}";
		}

		private Coordinate GetKingPosition(Side side)
		{
			for (int file = 0; file < 8; file++)
				for (int rank = 0; rank < 8; rank++)
				{
					var occ = Squares[file, rank];
					if (occ.Side == side && occ.Piece == Piece.King)
						return new Coordinate(file ,rank);
				}

			throw new ApplicationException($"{side} king not found.");
		}

		private List<Move> GetRawMoves(Side side, bool checkCastling)
		{
			var retval = new List<Move>();
			List<Move> kingmoves = null;

			for (int file = 0; file < 8; file++)
				for (int rank = 0; rank < 8; rank++)
					if (Squares[file, rank].Side == side)
					{
						var from = new Coordinate(file, rank);
						switch (Squares[file, rank].Piece)
						{
							case Piece.Pawn:
								retval.AddRange(GetPawnMoves(side, from));
								break;
							case Piece.Knight:
								retval.AddRange(GetKnightMoves(side, from));
								break;
							case Piece.Bishop:
								retval.AddRange(GetBishopMoves(side, from));
								break;
							case Piece.Rook:
								retval.AddRange(GetRookMoves(side, from));
								break;
							case Piece.Queen:
								retval.AddRange(GetQueenMoves(side, from));
								break;
							case Piece.King:
								kingmoves = GetKingMoves(side, from).ToList();
								break;
						}
					}

			if (kingmoves != null)
			{
				if (!checkCastling)
				{
					retval.AddRange(kingmoves);
				}
				else
				{
					foreach (var move in kingmoves)
					{
						if (Math.Abs(move.From.File - move.To.File) == 2)
						{
							var oppmoves = GetRawMoves(side == Side.White ? Side.Black : Side.White, false);
							bool ok = true;
							for (int file = Math.Min(move.From.File, move.To.File); file <= Math.Max(move.From.File, move.To.File); file++)
							{
								if (!oppmoves.Any(m => m.To.Rank == move.From.Rank && m.To.File == file)) continue;
								ok = false;
								break;
							}
							if (ok)
								retval.Add(move);
						}
						else
							retval.Add(move);
					}
				}
			}

			return retval;
		}

		private static readonly int[] KnightX = { 2, 2, 1, 1, -1, -1, -2, -2 };
		private static readonly int[] KnightY = { 1, -1, 2, -2, -2, 2, -1, 1 };

		private IEnumerable<Move> GetKnightMoves(Side side, Coordinate from)
		{
			for (int i = 0; i < 8; i++)
			{
				int f = from.File + KnightX[i];
				int r = from.Rank + KnightY[i];
				if (f < 8 && r < 8 && f >= 0 && r >= 0 && Squares[f, r].Side != side)
					yield return new Move(from, new Coordinate(f, r));
			}
		}

		private IEnumerable<Move> GetKingMoves(Side side, Coordinate from)
		{
			for (int f = from.File - 1; f <= from.File +1 && f < 8; f++)
				for (int r = from.Rank-1; r <= from.Rank +1 && r < 8; r++)
					if (f >= 0 && r >= 0 && Squares[f, r].Side != side)
						yield return new Move(from, new Coordinate(f, r));

			if (from.Rank == Helper.HomeRanks[side] && from.File == 4)
			{
				if (Castles[Helper.CastleIndices[side], 0])
				{
					if (Squares[3, from.Rank].Side == Side.None
						&& Squares[2, from.Rank].Side == Side.None
						&& Squares[1, from.Rank].Side == Side.None)
						yield return new Move(from, new Coordinate(2, from.Rank));
				}
				if (Castles[Helper.CastleIndices[side], 1])
				{
					if (Squares[5, from.Rank].Side == Side.None
						&& Squares[6, from.Rank].Side == Side.None)
						yield return new Move(from, new Coordinate(6, from.Rank));
				}
			}
		}

		private IEnumerable<Move> GetQueenMoves(Side side, Coordinate from)
		{
			for (int dx = -1; dx <= 1; dx++)
				for (int dy = -1; dy <= 1; dy++)
					if (dx != 0 || dy != 0)
					{
						int f = from.File + dx;
						int r = from.Rank + dy;
						while (f < 8 && r < 8 && f >= 0 && r >= 0)
						{
							if (Squares[f, r].Side != side)
								yield return new Move(from, new Coordinate(f, r));
							if (Squares[f, r].Side != Side.None)
								break;
							f += dx;
							r += dy;
						}
					}
		}

		private IEnumerable<Move> GetRookMoves(Side side, Coordinate from)
		{
			for (int dx = -1; dx <= 1; dx++)
				for (int dy = -1; dy <= 1; dy++)
					if ((dx != 0 && dy == 0) || (dx == 0 && dy != 0))
					{
						int f = from.File + dx;
						int r = from.Rank + dy;
						while (f < 8 && r < 8 && f >= 0 && r >= 0)
						{
							if (Squares[f, r].Side != side)
								yield return new Move(from, new Coordinate(f, r));
							if (Squares[f, r].Side != Side.None)
								break;
							f += dx;
							r += dy;
						}
					}
		}

		private IEnumerable<Move> GetBishopMoves(Side side, Coordinate from)
		{
			for (int dx = -1; dx <= 1; dx++)
				for (int dy = -1; dy <= 1; dy++)
					if (dx != 0 && dy != 0)
					{
						int f = from.File + dx;
						int r = from.Rank + dy;
						while (f < 8 && r < 8 && f >= 0 && r >= 0)
						{
							if (Squares[f, r].Side != side)
								yield return new Move(from, new Coordinate(f, r));
							if (Squares[f, r].Side != Side.None)
								break;
							f += dx;
							r += dy;
						}
					}
		}

		private IEnumerable<Move> GetPawnMoves(Side side, Coordinate from)
		{
			int toy = from.Rank + (side == Side.White ? 1 : -1);
			if (toy > 7 || toy < 0)
				return Array.Empty<Move>();

			var opp = side == Side.White ? Side.Black : Side.White;
			var rawmoves = new List<Move>();
			if (Squares[from.File, toy].Side == Side.None)
			{
				rawmoves.Add(new Move(from, new Coordinate(from.File, toy)));
				if ((side == Side.White && from.Rank == 1) || (side == Side.Black && from.Rank == 6))
				{
					int toy2 = toy + (side == Side.White ? 1 : -1);
					if (Squares[from.File, toy2].Side == Side.None)
						rawmoves.Add(new Move(from, new Coordinate(from.File, toy2)));
				}
			}

			if (EnPassant != null && EnPassant.Rank == toy && Math.Abs(EnPassant.File - from.File) == 1)
				rawmoves.Add(new Move(from, EnPassant));
			if (from.File > 0 &&  Squares[from.File -1, toy].Side == opp)
				rawmoves.Add(new Move(from, new Coordinate(from.File - 1, toy)));
			if (from.File < 7 && Squares[from.File + 1, toy].Side == opp)
				rawmoves.Add(new Move(from, new Coordinate(from.File + 1, toy)));

			if (toy < 7 && toy > 0)
				return rawmoves;

			var retval = new List<Move>();
			foreach (var move in rawmoves)
			{
				retval.Add(new Move(move.From, move.To, Piece.Knight));
				retval.Add(new Move(move.From, move.To, Piece.Bishop));
				retval.Add(new Move(move.From, move.To, Piece.Rook));
				retval.Add(new Move(move.From, move.To, Piece.Queen));
			}
			return retval;
		}

		public Position RemovePiece(Coordinate coordinate)
		{
			var retval = GetClone();
			var occ = Squares[coordinate.File, coordinate.Rank];
			if (occ.Side != SideToPlay)
				throw new InvalidOperationException("Wrong piece color");
			retval.Squares[coordinate.File, coordinate.Rank] = new Occupation(Side.None, Piece.None);
			return retval;
		}

		public IEnumerable<Tuple<Coordinate, Occupation>> GetPiecePositions()
		{
			for (int file = 0; file < 8; file ++)
				for (int rank = 0; rank < 8; rank++)
					if (Squares[file, rank] != Occupation.Empty)
						yield return new Tuple<Coordinate, Occupation>(new Coordinate(file, rank), Squares[file, rank]);
		}
	}
}

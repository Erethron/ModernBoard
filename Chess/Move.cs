using System;
using System.Diagnostics;
using System.Linq;

namespace Chess
{
	[DebuggerDisplay("{From}{To}")]
	public class Move : IEquatable<Move>
	{
		public static Move FromLAN(string move)
		{
			Piece promotion;
			switch (move.Length)
			{
				case 4:
					promotion = Piece.None;
					break;
				case 5:
					if (!Helper.PromotionOptions.TryGetValue(move.Substring(4,1).ToUpper(), out promotion))
						throw new ArgumentOutOfRangeException(nameof(move), "Invalid promotion indicator");
					break;
				default:
					throw new ArgumentOutOfRangeException(nameof(move), "Coordinate string must have exactly 4 or 5 characters");
			}

			return new Move(Coordinate.Parse(move.Substring(0, 2)), Coordinate.Parse(move.Substring(2, 2)), promotion);
		}

		public string ToSAN(Position fromPosition)
		{
			if (fromPosition == null) throw new ArgumentNullException(nameof(fromPosition));
			return ToSAN(fromPosition, fromPosition.ApplyMove(this));
		}

		public string ToSAN(Position fromPosition, Position toPosition)
		{
			if (fromPosition == null) throw new ArgumentNullException(nameof(fromPosition));
			if (toPosition == null) throw new ArgumentNullException(nameof(toPosition));

			string san = "";
			var tgtOcc = toPosition.Squares[To.File, To.Rank];
			var tgtBOcc = fromPosition.Squares[To.File, To.Rank];
			var srcBOcc = fromPosition.Squares[From.File, From.Rank];
			int castle = To.File - From.File;

			if (tgtOcc.Piece == Piece.King && castle == 2)
			{
				san = "O-O";
			}
			else if (tgtOcc.Piece == Piece.King && castle == -2)
			{
				san = "O-O-O";
			}
			else if (srcBOcc.Piece == Piece.Pawn)
			{
				if (fromPosition.EnPassant == To)
					san = $"{Helper.FileNameByFile[From.File]}x";
				else if (tgtBOcc != Occupation.Empty)
					san += Helper.FileNameByFile[From.File];
			}
			else
			{
				san += Helper.CharsByPiece[tgtOcc.Piece];
				var moves = fromPosition.GetValidMoves();
				var coll = moves.Select(m => new { Occ = fromPosition.Squares[m.From.File, m.From.Rank], Move = m })
					.Where(m => m.Move.To == To && m.Occ.Piece == tgtOcc.Piece)
					.ToList();
				if (coll.Count > 1)
				{
					if (coll[0].Move.From.File != coll[1].Move.From.File)
						san += Helper.FileNameByFile[From.File];
					else
						san += From.Rank + 1;
				}
			}

			if (!san.StartsWith("O-O"))
			{
				if (tgtBOcc != Occupation.Empty)
					san += "x";
				san += $"{Helper.FileNameByFile[To.File]}{To.Rank + 1}";

				if (Promotion != Piece.None)
					san += $"={Helper.CharsByPiece[Promotion]}";
			}

			if (toPosition.IsCheckMate)
				san += "#";
			else if (toPosition.IsCheck)
				san += "+";
			return san;
		}

		public Move(Coordinate from, Coordinate to, Piece promotion = Piece.None)
		{
			From = from;
			To = to;
			Promotion = promotion;
		}

		public Coordinate From { get; }
		public Coordinate To { get; }
		public Piece Promotion { get; }

        public string ToLAN() => Promotion == Piece.None
										 ? $"{From}{To}"
										 : $"{From}{To}{Helper.CharsByPiece[Promotion].ToLower()}";

		public static bool operator ==(Move a, Move b)
		{
			if (a as object == null && b as object == null)
				return true;
			if (a as object == null || b as object == null)
				return false;

			return a.From == b.From && a.To == b.To && a.Promotion == b.Promotion;
		}

		public static bool operator !=(Move a, Move b)
		{
			return !(a == b);
		}

		public override int GetHashCode()
		{
			return From.GetHashCode() ^ To.GetHashCode() ^ Promotion.GetHashCode();
		}

		public override bool Equals(object obj)
		{
			return Equals(obj as Move);
		}

		public bool Equals(Move other)
		{
			if (other == null)
				return false;
			return other.From == From && other.To == To && other.Promotion == Promotion;
		}
		
		public static Move FromSAN(Position position, string move)
		{
			if (position == null)
				throw new ArgumentNullException(nameof(position));

			if (string.IsNullOrWhiteSpace(move))
				throw new ArgumentOutOfRangeException(nameof(move), "Move string may not be null or empty");

			move = move.Replace("?", "").Replace("!", "").Replace("x", "");
			while (move.EndsWith("+") || move.EndsWith("#"))
				move = move.Substring(0, move.Length - 1);

			//Kingside Castling
			if (move == "O-O" || move == "0-0")
				if (position.Castles[Helper.CastleIndices[position.SideToPlay], 1])
					return FromLAN(position.SideToPlay == Side.White ? "e1g1" : "e8g8");

			//Queenside Castling
			if (move == "O-O-O" || move == "0-0-0")
				if (position.Castles[Helper.CastleIndices[position.SideToPlay], 0])
					return FromLAN(position.SideToPlay == Side.White ? "e1c1" : "e8c8");

			if (!Helper.PiecesByChar.TryGetValue(move.Substring(0, 1), out var piece))
				piece = Piece.Pawn;

			Piece promotion = Piece.None;
			string last = move.Substring(move.Length - 1, 1);
			if (last == last.ToUpper() && Helper.PiecesByChar.TryGetValue(last, out promotion))
			{
				move = move.Substring(0, move.Length - 1);
				if (move.EndsWith("="))
					move = move.Substring(0, move.Length - 1);
			}

			var candidates = position.GetValidMoves()
											.Where(m => position.Squares[m.From.File, m.From.Rank].Piece == piece
															&& (m.To.Rank + 1).ToString() == move.Last().ToString()
															&& Helper.FileNameByFile[m.To.File] == move.Substring(move.Length - 2, 1))
											.ToList();

			switch (candidates.Count)
			{
				case 0:
					throw new ArgumentOutOfRangeException(nameof(position), "The given position has no valid moves.");

				case 1:
					return candidates.First();

				default:
					if (promotion != Piece.None)
					{
						candidates = candidates.Where(c => c.Promotion == promotion).ToList();
						if (candidates.Count != 1)
							throw new ArgumentOutOfRangeException(nameof(move), move, "Unable to parse move.");
						return candidates.First();
					}
					string indicator = move.Substring(move.Length - 3, 1);
					candidates = candidates.Where(m => Helper.FileNameByFile[m.From.File] == indicator || (m.From.Rank + 1).ToString() == indicator).ToList();
					if (candidates.Count != 1)
						throw new ArgumentOutOfRangeException(nameof(move), move, "Unable to parse move.");
					return candidates.First();
			}
		}
	}
}

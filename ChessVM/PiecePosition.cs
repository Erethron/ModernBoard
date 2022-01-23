using Chess;

namespace ChessVM
{
	public class PiecePosition
	{
		public Coordinate Coordinate { get; internal set; }
		public Occupation Occupation { get; internal set; }
		public bool InLastMove { get; internal set; }
	}
}

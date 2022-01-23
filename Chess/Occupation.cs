using System.Diagnostics;

namespace Chess
{
	[DebuggerDisplay("Side = {Side}, Piece = {Piece}")]
	public class Occupation
	{
		public static Occupation Empty { get;  } = new Occupation(Side.None, Piece.None);

		public Occupation(Side side, Piece piece)
		{
			Side = side;
			Piece = piece;
		}

		public Piece Piece { get; }
		public Side Side { get; }
	}
}

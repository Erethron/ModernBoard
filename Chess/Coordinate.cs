using System;

namespace Chess
{
	public class Coordinate : IEquatable<Coordinate>
	{
		public static Coordinate Parse(string coordinate)
		{
			if (coordinate.Length != 2)
				throw new ArgumentOutOfRangeException(nameof(coordinate), "Coordinate string must have exactly 2 characters");

			int file = coordinate[0] - 97;
			int rank = Convert.ToInt32(coordinate[1].ToString()) - 1;
			return new Coordinate(file, rank);
		}

		//File and rank are zero-based!
		public Coordinate(int file, int rank)
		{
			if (file < 0 || file > 7)
				throw new ArgumentOutOfRangeException(nameof(file), "File must be within 0 and 7");
			if (rank < 0 || rank > 7)
				throw new ArgumentOutOfRangeException(nameof(rank), "Rank must be within 0 and 7");

			File = file;
			Rank = rank;
		}

		public int File { get; }
		public int Rank { get; }

		public static bool operator ==(Coordinate a, Coordinate b)
		{
			if (a as object == null && b as object == null)
				return true;
			if (a as object == null || b as object == null)
				return false;

			return a.File == b.File && a.Rank == b.Rank;
		}

		public static bool operator !=(Coordinate a, Coordinate b)
		{
			return !(a == b);
		}

		public override int GetHashCode()
		{
			return File.GetHashCode() ^ Rank.GetHashCode();
		}

		public override bool Equals(object obj)
		{
			return Equals(obj as Coordinate);
		}

		public bool Equals(Coordinate other)
		{
			if (other == null)
				return false;
			return other.File == File && other.Rank == Rank;
		}

		public override string ToString()
		{
			return $"{(char)(File + 97)}{Rank + 1}";
		}

	}
}

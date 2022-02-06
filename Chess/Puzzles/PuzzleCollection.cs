using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Chess.Puzzles
{
	public class PuzzleCollection
	{
		public static PuzzleCollection FromFile(string fileName)
		{
			var puzzles = File.ReadAllLines(fileName)
									.Select(line => line.Split(';'))
									.Select(spl => new Puzzle
									{
										StartPosition = Position.FromFEN(spl[0]),
										Moves = spl[1]
														.Split(',')
														.Select(mv => Move.FromLAN(mv))
														.ToList()
									});

			return new PuzzleCollection(puzzles);
		}

		public IReadOnlyCollection<Puzzle> Puzzles { get; }

		private PuzzleCollection(IEnumerable<Puzzle> puzzles)
		{
			Puzzles = puzzles.ToList();
		}
	}
}

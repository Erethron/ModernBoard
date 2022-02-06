using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Chess.Puzzles
{
	public class Puzzle
	{
		public Position StartPosition { get; set; }
		public List<Move> Moves { get; set; }
	}
}

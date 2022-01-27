using Chess;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PuzzleHelper
{
	public class EvaluationResult
	{
		public Move Move { get; internal set; }
		public List<int> PV { get; internal set; }
	}
}

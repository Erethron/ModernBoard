using Chess;
using Chess.PositionFactories;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ChessVM
{
	public class GameStartParameters
	{
		public FactoryGroup FactoryGroup { get; set; }
		public string FactoryName { get; set; }
		public Func<Position> FactoryDelegate { get; set; }
		public bool SlowMode { get; set; }

		public static List<GameStartParameters> GetAllPossibleStartParameters()
		{
			return PositionFactory.Groups
				.SelectMany(g => g.Value.Select(v => new GameStartParameters { FactoryGroup = g.Key, FactoryName = v.Key, FactoryDelegate = v.Value, SlowMode = false }))
				.ToList();
		}
	}
}

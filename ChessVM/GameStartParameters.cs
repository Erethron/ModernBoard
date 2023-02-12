using Chess;
using Chess.EngineWrappers;
using Chess.PositionFactories;
using ChessVM.GameViewModels;
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
		public Func<PositionFactory, Position> FactoryDelegate { get; set; }
		public bool SlowMode { get; set; }

		private static List<GameStartParameters> _startParams;
        public static List<GameStartParameters> GetAllPossibleStartParameters()
		{
			_startParams ??= MainViewModel.Instance.DefaultPositionFactory.Groups
                .SelectMany(g => g.Value.Select(v => new GameStartParameters { FactoryGroup = g.Key, FactoryName = v.Key, FactoryDelegate = v.Value, SlowMode = false }))
                .ToList();

            return _startParams;
        }
	}
}

using Chess;
using Chess.PositionFactories;
using System;

namespace ChessVM.GameViewModels
{
	class AnalysisVersusEngineVM : VersusEngineVM
	{
		public AnalysisVersusEngineVM(string name, PositionFactory positionFactory, Func<PositionFactory, Position> creationDelegate)
			:base(positionFactory, creationDelegate)
		{
			Event = $"Analysis {name} vs Engine";
		}

		protected override void SetEngineOptions(EngineDefinition definition)
		{
			foreach (var option in definition.AnalysisSettings)
				Engine.SetEngineOption(option.Name, option.Value);
		}
	}
}

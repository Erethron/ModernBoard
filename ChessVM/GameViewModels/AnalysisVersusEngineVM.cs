using Chess;
using Chess.PositionFactories;
using System;

namespace ChessVM.GameViewModels
{
	class AnalysisVersusEngineVM : VersusEngineVM
	{
		public AnalysisVersusEngineVM(string name, Func<Position> positionFactory)
			:base(positionFactory)
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

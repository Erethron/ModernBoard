namespace ChessVM.GameViewModels
{
	public class GameVersusThrottledEngineVM : VersusEngineVM
	{
		protected override void SetEngineOptions(EngineDefinition definition)
		{
			foreach (var option in definition.GameSettings)
				Engine.SetEngineOption(option.Name, option.Value);

		}
	}
}

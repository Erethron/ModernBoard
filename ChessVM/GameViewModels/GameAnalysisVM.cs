using System;
using Chess;

namespace ChessVM.GameViewModels
{
	class GameAnalysisVM : GameViewModel
	{
		public GameAnalysisVM(Game game) : base(game)
		{
		}

		public static GameAnalysisVM FromPGN(string pgn)
		{
			var game = Game.FromPGN(pgn);
			var retval = new GameAnalysisVM(game);
			return retval;
		}

		protected override void SetEngineOptions(EngineDefinition definition)
		{
			foreach (var option in definition.AnalysisSettings)
				Engine.SetEngineOption(option.Name, option.Value);
		}

		protected override void OnHumanMove()
		{
			throw new NotImplementedException();
		}

		protected override void OnEngineMove()
		{
			throw new NotImplementedException();
		}
	}
}

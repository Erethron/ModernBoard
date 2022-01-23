using System;
using Chess;

namespace ChessVM.GameViewModels
{
	public class GuessingGameVM : GameViewModel
	{
		public GuessingGameVM(Game game) : base(game)
		{
			Event = "Guessing Game";
		}

		protected override void SetEngineOptions(EngineDefinition definition)
		{
			throw new NotImplementedException();
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

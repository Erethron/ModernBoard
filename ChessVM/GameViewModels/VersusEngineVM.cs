using System;
using System.Collections.Generic;
using System.Linq;
using Chess;
using Chess.PositionFactories;

namespace ChessVM.GameViewModels
{
	public abstract class VersusEngineVM : GameViewModel
	{
		protected VersusEngineVM()
			:this(Game.CreateNew())
		{
		}

		protected VersusEngineVM(Func<Position> positionFactory)
			: this(Game.CreateNew(positionFactory.Invoke()))
		{
		}

		protected VersusEngineVM(Game game)
			: base(game)
		{
			IsHumanMove = true;
			if (game.StartPosition.Position.SideToPlay == Side.Black)
				FlipBoard();
		}

		protected override void OnHumanMove()
		{
			IsHumanMove = false;
			ApplyBestEngineMove(3000, 0);
		}


		protected override void OnEngineMove()
		{
			IsHumanMove = true;
			BoardEditor.Position = CurrentPosition;
		}

		protected override bool ApplyMove(MoveViewModel move)
		{
			var retval = base.ApplyMove(move);
			DisplayPosition = CurrentPosition;
			return retval;
		}

	}
}

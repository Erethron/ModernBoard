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

		public void BeginPieceDrag(Coordinate from)
		{

			//var piece = CurrentPosition.GetOccupation(from);
			//if (piece.Side == CurrentPosition.SideToPlay)
			//{
			//	var position = new PositionViewModel(CurrentPosition.Position.RemovePiece(from), IsBoardFlipped, CurrentPosition.LastMove)
			//	{
			//		BeginDragFrom = from,
			//		DragPiece = piece
			//	};

			//	SetDisplayPosition(position);

			//}
			//else
			//	DisplayPosition.AbortPieceDrag();
		}

		protected override void OnHumanMove()
		{
			IsHumanMove = false;
			ApplyBestEngineMove(3000, 0);
		}

		private void CurrentPosition_DragComplete(object sender, EventArgs e)
		{
			//if (IsHumanMove
			//		&& DisplayPosition.DragMove != null
			//		&& CurrentPosition.GetValidMoves().Contains(DisplayPosition.DragMove)
			//		&& ApplyMove(new MoveViewModel(CurrentPosition.Position.GetGameMove(DisplayPosition.DragMove), IsBoardFlipped)))
			//{
			//	OnHumanMove();
			//}
			//else
			//{
			//	SetDisplayPosition(CurrentPosition);
			//}
		}

		private void SetDisplayPosition(PositionViewModel position)
		{
			position.State = State;
			position.StateReason = StateReason;
			DisplayPosition = position;
		}

		private void CurrentPosition_DragAbort(object sender, EventArgs e)
		{
			SetDisplayPosition(CurrentPosition);
		}

		protected override void OnEngineMove()
		{
			IsHumanMove = true;
			BoardEditor.Position = CurrentPosition;
		}

		protected override bool ApplyMove(MoveViewModel move)
		{
			var retval = base.ApplyMove(move);
			SetDisplayPosition(CurrentPosition);
			return retval;
		}

	}
}

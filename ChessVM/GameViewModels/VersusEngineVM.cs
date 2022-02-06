using System;
using System.Collections.Generic;
using System.Linq;
using Chess;
using Chess.PositionFactories;

namespace ChessVM.GameViewModels
{
	public abstract class VersusEngineVM : GameViewModel
	{
		private bool _humanMove;


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
			_humanMove = true;
			if (game.StartPosition.Position.SideToPlay == Side.Black)
				FlipBoard();
			DisplayPosition.DragStart += DisplayPosition_DragStart;
		}

		private void DisplayPosition_DragStart(object sender, Coordinate e)
		{
			BeginPieceDrag(e);
		}

		public void BeginPieceDrag(Coordinate from)
		{

			var piece = CurrentPosition.GetOccupation(from);
			if (piece.Side == CurrentPosition.SideToPlay)
			{
				var position = new PositionViewModel(CurrentPosition.Position.RemovePiece(from), IsBoardFlipped, CurrentPosition.LastMove)
				{
					BeginDragFrom = from,
					DragPiece = piece
				};

				SetDisplayPosition(position);

			}
			else
				DisplayPosition.AbortPieceDrag();
		}

		protected override void OnHumanMove()
		{
			_humanMove = false;
			ApplyBestEngineMove(3000, 0);
		}

		private void CurrentPosition_DragComplete(object sender, EventArgs e)
		{
			if (_humanMove
					&& DisplayPosition.DragMove != null
					&& CurrentPosition.GetValidMoves().Contains(DisplayPosition.DragMove)
					&& ApplyMove(new MoveViewModel(CurrentPosition.Position.GetGameMove(DisplayPosition.DragMove), IsBoardFlipped)))
			{
				OnHumanMove();
			}
			else
			{
				SetDisplayPosition(CurrentPosition);
			}
		}

		private void SetDisplayPosition(PositionViewModel position)
		{
			DisplayPosition.DragStart -= DisplayPosition_DragStart;
			DisplayPosition.DragComplete -= CurrentPosition_DragComplete;
			if (DisplayPosition != position && DisplayPosition.DragPiece != null)
				DisplayPosition.DragPiece = null;
			else
			{
			}
			position.State = State;
			position.StateReason = StateReason;
			DisplayPosition = position;
			DisplayPosition.DragComplete += CurrentPosition_DragComplete;
			DisplayPosition.DragStart += DisplayPosition_DragStart;
		}

		protected override void OnEngineMove()
		{
			_humanMove = true;
		}

		protected override bool ApplyMove(MoveViewModel move)
		{
			var retval = base.ApplyMove(move);
			SetDisplayPosition(CurrentPosition);
			return retval;
		}

	}
}

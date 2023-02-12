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
		public Occupation DragPiece { get; private set; }

		private static readonly Piece[] PromotionPieces = { Piece.Queen, Piece.Knight, Piece.Rook, Piece.Bishop };
		public List<Occupation> PromotionOptions => PromotionPieces.Select(p => new Occupation(CurrentPosition.SideToPlay, p)).ToList();
		public bool CanPromote { get; private set; }
		public Coordinate PromotionSquare { get; private set; }

		public Occupation PromotionChoice
		{
			get => null;
			set
			{
				if (value != null && PromotionPieces.Contains(value.Piece))
				{
					CanPromote = false;
					CompletePieceDrag(PromotionSquare, value.Piece);
				}
			}
		}

		protected VersusEngineVM()
			:this(Game.CreateNew())
		{
		}

		protected VersusEngineVM(PositionFactory factory, Func<PositionFactory, Position> creationDelegate)
			: this(Game.CreateNew(creationDelegate.Invoke(factory)))
		{
		}

		protected VersusEngineVM(Game game)
			: base(game)
		{
			_humanMove = true;
			if (game.StartPosition.Position.SideToPlay == Side.Black)
				FlipBoard();
		}

		protected override void OnHumanMove()
		{
			_humanMove = false;
			ApplyBestEngineMove(3000, 0);
		}

		protected override void OnEngineMove()
		{
			_humanMove = true;
		}

		protected override bool ApplyMove(MoveViewModel move)
		{
			var retval = base.ApplyMove(move);
			AbortPieceDrag();
			return retval;
		}

		private Coordinate _beginDragFrom;
		public virtual void BeginPieceDrag(Coordinate from)
		{
			if (!_humanMove)
				return;

			var piece = CurrentPosition.GetOccupation(from);
			if (piece.Side == CurrentPosition.SideToPlay)
			{
				_beginDragFrom = from;
				DisplayPosition = new PositionViewModel(CurrentPosition.Position.RemovePiece(from),CurrentPosition.LastMove);
				DragPiece = piece;
			}
			else
				AbortPieceDrag();
		}

		public void EndPieceDrag(double mouseX, double mouseY)
		{
			if (DragPiece == null)
			{
				AbortPieceDrag();
				return;
			}

			int file = Convert.ToInt32(Math.Floor(mouseX / DragImageSize));
			int rank = Convert.ToInt32(Math.Floor(mouseY / DragImageSize));
			if (!IsBoardFlipped)
				rank = 7 - rank;
			else
				file = 7 - file;

			if (rank < 0 || rank > 7 || file < 0 || file > 7)
			{
				AbortPieceDrag();
				return;
			}

			if (_beginDragFrom != null)
			{
				var coordinate = new Coordinate(file, rank);
				if (CurrentPosition.GetOccupation(_beginDragFrom).Piece == Piece.Pawn && (rank == 0 || rank == 7))
				{
					DragPiece = null;
					CanPromote = true;
					OnPropertyChanged(nameof(PromotionChoice));
					PromotionSquare = coordinate;
				}
				else
					CompletePieceDrag(coordinate, Piece.None);
			}
		}

		public void AbortPieceDrag()
		{
			_beginDragFrom = null;
			DisplayPosition = CurrentPosition;
			CanPromote = false;
			DragPiece = null;
		}

		private void CompletePieceDrag(Coordinate to, Piece promotion)
		{
			var move = new Move(_beginDragFrom, to, promotion);
			if (CurrentPosition.IsMoveValid(move))
			{
				if (ApplyMove(new MoveViewModel(CurrentPosition.Position.GetGameMove(move))))
					OnHumanMove();
			}
			else
				AbortPieceDrag();
		}
	}
}

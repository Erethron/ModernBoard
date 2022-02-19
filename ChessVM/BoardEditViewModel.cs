using Chess;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ChessVM
{
	public class BoardEditViewModel : ViewModelBase
	{
		public bool IsBoardFlipped { get; internal set; }
		public PositionViewModel Position { get; internal set;  }
		public Side SideToPlay => Position.SideToPlay;

		public Occupation DragPiece { get; internal set; }
		public bool IsDragging => DragPiece != null;

		public Coordinate BeginDragFrom { get; internal set; }
		public double DragImageSize { get; set; }
		public double DragImageX { get; set; }
		public double DragImageY { get; set; }
		public Move DragMove { get; private set; }

		public bool CanPromote { get; private set; }

		private static readonly Piece[] PromotionPieces = { Piece.Queen, Piece.Knight, Piece.Rook, Piece.Bishop };


		public List<Occupation> PromotionOptions => PromotionPieces.Select(p => new Occupation(SideToPlay, p)).ToList();
		public Coordinate PromotionSquare { get; private set; }
		public event EventHandler<Coordinate> DragStart;
		public event EventHandler DragAbort;
		public event EventHandler DragComplete;

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

		public void BeginPieceDrag(Coordinate coordinate)
		{
			DragStart?.Invoke(this, coordinate);
		}

		public void AbortPieceDrag()
		{
			DragPiece = null;
			BeginDragFrom = null;
			CanPromote = false;
			DragAbort?.Invoke(this, EventArgs.Empty);
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

			if (BeginDragFrom != null)
			{
				var coordinate = new Coordinate(file, rank);
				if (DragPiece.Piece == Piece.Pawn
					&& (rank == 0 || rank == 7)
					&& Math.Abs(rank - BeginDragFrom.Rank) == 1)
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

		private void CompletePieceDrag(Coordinate to, Piece promotion)
		{
			DragMove = new Move(BeginDragFrom, to, promotion);
			DragComplete?.Invoke(this, EventArgs.Empty);
		}
	}
}

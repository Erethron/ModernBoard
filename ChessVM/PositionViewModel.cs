using System;
using System.Collections.Generic;
using System.Linq;
using Chess;

namespace ChessVM
{

	public class PositionViewModel : ViewModelBase
	{
		public Occupation DragPiece { get; internal set; }

		private static readonly string[] RegularFileLabels = { "a", "b", "c", "d", "e", "f", "g", "h" };
		private static readonly string[] FlippedFileLabels = { "h", "g", "f", "e", "d", "c", "b", "a" };
		public string[] FileLabels => IsBoardFlipped ? FlippedFileLabels : RegularFileLabels;

		private static readonly string[] RegularRankLabels = { "1", "2", "3", "4", "5", "6", "7", "8" };
		private static readonly string[] FlippedRankLabels = { "8", "7", "6", "5", "4", "3", "2", "1" };
		public string[] RankLabels => IsBoardFlipped ? FlippedRankLabels : RegularRankLabels;

		public GameState State { get; set; }
		public GameStateReason StateReason { get; set; }

		public Coordinate BeginDragFrom { get; internal set; }
		public double DragImageSize { get; set; }
		public double DragImageX { get; set; }
		public double DragImageY { get; set; }
		public Move DragMove { get; private set; }

		public bool CanPromote { get; private set; }
		public bool IsBoardFlipped { get; internal set; }

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

		public IReadOnlyCollection<PiecePosition> Pieces { get; }
		public string FEN => Position.Position.FEN;
		public Side SideToPlay => Position.Position.SideToPlay;
		public int MoveNumber => Position.MoveNumber;
		public GameMove LastMove { get; }

		public GamePosition Position { get; }
		public MoveViewModel NextMove => Position.NextMove == null ? null : new MoveViewModel(Position.NextMove, IsBoardFlipped);

		public PositionViewModel(GamePosition position, bool isBoardFlipped, GameMove lastMove = null)
		{
			LastMove = lastMove;
			Pieces = GetPiecePositions(position, lastMove);
			Position = position;
			IsBoardFlipped = isBoardFlipped;
		}

		private static List<PiecePosition> GetPiecePositions(GamePosition position, GameMove lastMove)
		{
			var pieces = new List<PiecePosition>();
			for (int f = 0; f < 8; f++)
			for (int r = 0; r < 8; r++)
			{
				var coordinate = new Coordinate(f, r);
				var piece = new PiecePosition
				{
					Coordinate = coordinate,
					Occupation = position.Position.Squares[f, r]
				};

				if (lastMove != null)
					piece.InLastMove = lastMove.Move.From == coordinate || lastMove.Move.To == coordinate;

				pieces.Add(piece);
			}
			return pieces;
		}

		internal Occupation GetOccupation(Coordinate coordinate)
		{
			return Position.Position.Squares[coordinate.File, coordinate.Rank];
		}

		internal PositionViewModel RemovePiece(Coordinate coordinate)
		{
			return new PositionViewModel(Position.RemovePiece(coordinate), IsBoardFlipped);
		}

		internal PositionViewModel SetMove(GameMove move)
		{
			Position.SetMove(move.Move);
			return new PositionViewModel(Position.NextMove.NextPosition, IsBoardFlipped, move);
		}

		public List<Move> GetValidMoves()
		{
			return Position.Position.GetValidMoves().ToList();
		}

		internal bool IsMoveValid(Move move)
		{
			return GetValidMoves().Contains(move);
		}

		internal bool IsCheck => Position.Position.IsCheck;
		public bool IsCheckMate => Position.Position.IsCheckMate;
		public bool IsStaleMate => Position.Position.IsStaleMate;

		public void BeginPieceDrag(Coordinate coordinate)
		{
			DragStart?.Invoke(this, coordinate);
		}

		public void AbortPieceDrag()
		{
			BeginDragFrom = null;
			CanPromote = false;
			DragPiece = null;
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
				if (GetOccupation(BeginDragFrom).Piece == Piece.Pawn && (rank == 0 || rank == 7))
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

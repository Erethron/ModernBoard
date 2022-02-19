using System;
using System.Collections.Generic;
using System.Linq;
using Chess;

namespace ChessVM
{

	public class PositionViewModel : ViewModelBase
	{
		public bool IsBoardFlipped { get; internal set; }

		public GameState State { get; set; }
		public GameStateReason StateReason { get; set; }

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


	}
}

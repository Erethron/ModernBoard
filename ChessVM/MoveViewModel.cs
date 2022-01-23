using System;
using Chess;

namespace ChessVM
{
	public class MoveViewModel
	{
		private GameMove _gameMove;
		public GameMove Move => _gameMove;

		public int Number => _gameMove.MoveNumber;
		public string SAN => _gameMove.SAN;
		public PositionViewModel LeadsTo { get; }
		public string Comment
		{
			get => _gameMove.Comment;
			set => _gameMove.Comment = value;
		}

		public MoveViewModel(GameMove gameMove)
		{
			_gameMove = gameMove ?? throw new ArgumentNullException(nameof(gameMove));
			LeadsTo = new PositionViewModel(gameMove.NextPosition, _gameMove);
		}
	}
}

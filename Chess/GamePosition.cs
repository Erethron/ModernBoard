using System.Collections.Generic;

namespace Chess
{
	public class GamePosition
	{
		public Position Position { get; }
		public GameMove NextMove { get; set; }
		public List<GameMove> Analysis { get; } = new List<GameMove>();
		public bool CanPlay => !Position.IsCheckMate && !Position.IsStaleMate;
		public int MoveNumber => Position.MoveNumber;
		public string FEN => Position.FEN;

		internal GamePosition(Position position)
		{
			Position = position;
		}

		public void SetMove(Move move)
		{
			var next = Position.ApplyMove(move);
			NextMove = new GameMove(move, this, new GamePosition(next));
		}

		public void SetMove(GameMove move)
		{
			NextMove = move;
		}

		public GameMove GetGameMove(string lan)
		{
			var move = Move.FromLAN(lan);
			return GetGameMove(move);
		}

		public GameMove GetGameMove(Move move)
		{
			var next = new GamePosition(Position.ApplyMove(move));
			return new GameMove(move, this, next);
		}

		public GamePosition RemovePiece(Coordinate coordinate)
		{
			return new GamePosition(Position.RemovePiece(coordinate));
		}

	}
}

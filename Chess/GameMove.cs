using System;

namespace Chess
{
	public class GameMove
	{
		public Move Move { get; }
		public GamePosition PreviousPosition { get; }
		public GamePosition NextPosition { get; }
		public string Comment { get; set; }
		public string SAN => Move.ToSAN(PreviousPosition.Position, NextPosition.Position);
		public int MoveNumber => PreviousPosition.MoveNumber;
		public Side Side => PreviousPosition.Position.SideToPlay;

		internal GameMove(Move move, GamePosition previousPosition, GamePosition nextPosition)
		{
			Move = move ?? throw new ArgumentNullException(nameof(move));
			PreviousPosition = previousPosition ?? throw new ArgumentNullException(nameof(previousPosition));
			NextPosition = nextPosition ?? throw new ArgumentNullException(nameof(nextPosition));
		}
	}
}

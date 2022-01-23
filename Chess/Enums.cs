namespace Chess
{
	public enum EngineType
	{ 
		Uci,
		XBoard
	}

	public enum Side
	{
		None = 0,
		White = 1,
		Black = 2
	}

	public enum Piece
	{
		None = 0,
		Pawn = 1,
		Knight = 2,
		Bishop = 3,
		Rook = 4,
		Queen = 5,
		King = 6
	}

	public enum GameState
	{
		Unknown = 0,
		Running = 1,
		WhiteWon = 2,
		Drawn = 3,
		BlackWon = 4
	}

	public enum GameStateReason
	{
		Unknown = 0,
		Running,
		Checkmate,
		Stalemate,
		FiftyMovesRule,
		ThreeFoldRepetition,
		InsufficientMaterial,
		Time,
		Resignation,
		Agreement,
		Notation
	}

}

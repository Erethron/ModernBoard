using System;

namespace Chess.EngineWrappers
{
	public sealed class UciEngineWrapper : ExecutableEngineWrapper
	{
		private string _position = Position.START_FEN;

		public UciEngineWrapper(string executablePath) : base(executablePath)
		{
			SendCommand("uci");
		}

		public override void SetEngineOption(string name, string value)
		{
			SendCommand($"setoption name {name} value {value}");
		}

		public override void NewGame()
		{
			SendCommand("ucinewgame");
			SetPosition(Position.START_FEN);
		}

		public override void SetPosition(string fen)
		{
			_position = fen;
			SendCommand($"position fen {_position}");
		}

		public override void ApplyMove(Move move)
		{
			SetPosition($"{_position} {move.ToLAN()}");
		}

		public override Move GetBestMove(bool startPondering = false)
		{
			return GetBestMove("");
		}

		public override Move GetBestMove(int moveTime, bool startPondering = false)
		{
			return GetBestMove($"movetime {moveTime}");
		}

		public override Move GetBestMove(int clockTime, int movesToGo, bool startPondering = false)
		{
			return GetBestMove($"wtime {clockTime} movestogo {movesToGo}");
		}

		public override Move GetBestMove(string pars)
		{
			SendCommand("stop");
			SendCommand($"go {pars}".TrimEnd());
			return WaitForBestMove();
		}

		private Move WaitForBestMove()
		{
			string line = WaitForCommand("bestmove");
			var pars = line.Split(' ');
			return Move.FromLAN(pars[1]);
		}

		public override void Stop()
		{
			SendCommand("stop");
		}

		public override void Quit()
		{
			SendCommand("quit");
		}
	}
}

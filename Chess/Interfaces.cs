using System;
using System.Diagnostics;

namespace Chess
{
	public interface IEngineWrapper : IDisposable
	{
		event DataReceivedEventHandler EngineOutput;
		void SetEngineOption(string name, string value);
		void ApplyMove(Move move);
		void NewGame();
		void SetPosition(string fen);
		Move GetBestMove(bool startPondering = false);
		Move GetBestMove(int moveTime, bool startPondering = false);
		Move GetBestMove(int clockTime, int movesToGo, bool startPondering = false);
		Move GetBestMove(string pars);
		void Stop();
		void Quit();
	}
}

using System;
using System.Collections.Concurrent;
using System.Diagnostics;
using System.IO;
using System.Threading;

namespace Chess.EngineWrappers
{
	public abstract class ExecutableEngineWrapper : IEngineWrapper
	{
		public event DataReceivedEventHandler EngineOutput;

		private readonly Process _engineProcess;
		private readonly StreamWriter _in;
		protected readonly ConcurrentQueue<string> PendingOutput = new ConcurrentQueue<string>();

		public abstract void SetEngineOption(string name, string value);
		public abstract void ApplyMove(Move move);
		public abstract void NewGame();
		public abstract void SetPosition(string fen);
		public abstract Move GetBestMove(bool startPondering = false);
		public abstract Move GetBestMove(int moveTime, bool startPondering = false);
		public abstract Move GetBestMove(int clockTime, int movesToGo, bool startPondering = false);
		public abstract Move GetBestMove(string pars);
		public abstract void Stop();
		public abstract void Quit();

		protected ExecutableEngineWrapper(string executablePath)
		{
			_engineProcess = new Process
			{
				StartInfo = new ProcessStartInfo
				{
					FileName = executablePath,
					CreateNoWindow = true,
					RedirectStandardInput = true,
					RedirectStandardOutput = true,
					UseShellExecute = false
				},
			};

			_engineProcess.OutputDataReceived += _engineProcess_OutputDataReceived;
			_engineProcess.Exited += _engineProcess_Exited;
			_engineProcess.Start();
			_engineProcess.BeginOutputReadLine();
			_in = _engineProcess.StandardInput;
		}

		private void _engineProcess_Exited(object sender, EventArgs e)
		{
			Dispose(true);
		}

		private void _engineProcess_OutputDataReceived(object sender, DataReceivedEventArgs e)
		{
			if (e.Data != null)
			{
				EngineOutput?.Invoke(this, e);
				string data = e.Data.Replace("\t", " ").Trim();
				while (data.Contains("  "))
					data = data.Replace("  ", " ");
				PendingOutput.Enqueue(data);
			}
		}

		protected string WaitForCommand(string command)
		{
			string line = null;
			while (line == null || !line.StartsWith(command))
			{
				if (IsDisposed)
					throw new ObjectDisposedException(nameof(_engineProcess));
				if (!PendingOutput.TryDequeue(out line))
					Thread.Sleep(100);
			}
			return line;
		}

		protected void SendCommand(string command)
		{
			if (IsDisposed)
				throw new ObjectDisposedException(nameof(_engineProcess));
			_in.WriteLine(command);
		}
		
		public void Dispose()
		{
			Dispose(true);
			GC.SuppressFinalize(this);
		}

		protected bool IsDisposed => _engineProcess == null || _engineProcess.HasExited;
		protected virtual void Dispose(bool disposing)
		{
			if (disposing && !IsDisposed)
			{
				if (!_engineProcess.HasExited)
					Quit();

				for (int i = 0; i < 20 && !_engineProcess.HasExited; i++)
					Thread.Sleep(100);

				if (!_engineProcess.HasExited)
					_engineProcess.Kill();
				_engineProcess.Dispose();
			}

		}
	}
}

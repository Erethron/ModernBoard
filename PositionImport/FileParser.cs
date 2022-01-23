using System;
using System.Collections.Concurrent;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading;
using System.Threading.Tasks;
using ChessDatabase;

namespace PositionImport
{
	public class FileParser
	{
		private readonly string _fileName;
		private const string GAME_START = @"\[Event\s";
		private readonly Regex _gameStartRegex = new Regex(GAME_START);
		private readonly ConcurrentQueue<string> _parseQueue;
		private readonly CancellationToken _cancellationToken;
		private bool _fileDone, _allDone;
		private readonly object _consoleLock = new object();
		private readonly object _entityLock = new object();
		private ChessEntities _chessEntities = new ChessEntities();
		private bool _parseQuench = false;
		private HashSet<string> _pgnHashCache;

		private HashSet<string> PgnHashCache
		{
			get
			{
				lock (_entityLock)
					return _pgnHashCache ??
					       (_pgnHashCache = new HashSet<string>(_chessEntities.Games.Select(g => g.PgnHash)));
			}
		}

		public FileParser(string fileName, CancellationToken cancellationToken)
		{
			_fileName = fileName;
			_cancellationToken = cancellationToken;
			_parseQueue = new ConcurrentQueue<string>();

			for (int i = 0; i < 8; i++)
				Task.Run(ParseWorkerAsync);

			Task.Run(ClearEfCacheWorker);
		}


		public void AnalyzeFile()
		{
			lock (_consoleLock)
				Console.WriteLine($"Starting parsing file {_fileName}");

			var sb = new StringBuilder();

			foreach (string line in File.ReadAllLines(_fileName))
			{
				if (_gameStartRegex.IsMatch(line))
				{
					if (sb.Length > 0)
						_parseQueue.Enqueue(sb.ToString());
					sb = new StringBuilder();
				}

				sb.AppendLine(line);
			}

			if (sb.Length > 0)
				_parseQueue.Enqueue(sb.ToString());
			_fileDone = true;

			while (!_parseQueue.IsEmpty && !_cancellationToken.IsCancellationRequested)
				Thread.Sleep(100);

			_allDone = true;
		}

		private async Task ParseWorkerAsync()
		{
			while (!_cancellationToken.IsCancellationRequested)
			{
				if (_parseQueue.IsEmpty)
				{
					if (_fileDone)
					{
						lock (_consoleLock)
							Console.WriteLine($"Finished parsing file {_fileName} worker");
						return;
					}

					await Task.Delay(100, _cancellationToken);
					continue;
				}

				while (_parseQuench && !_cancellationToken.IsCancellationRequested)
					await Task.Delay(100, _cancellationToken);

				if (_parseQueue.TryDequeue(out string data))
					AnalyzeGame(data);
			}

			lock (_consoleLock)
				Console.WriteLine($"Aborted parsing file {_fileName}");
		}

		private void AnalyzeGame(string pgn)
		{
			try
			{
				string md5 = DbGameFactory.GetMd5Hash(pgn);

				if (PgnHashCache.Contains(md5))
				{
					lock (_entityLock)
					{
						var entity = _chessEntities.Games.FirstOrDefault(g => g.PgnHash == md5 && g.PGN == pgn);
						if (entity != null)
						{
							//lock (_consoleLock)
							//	Console.WriteLine($"Skipping game {entity.WhiteName} ({entity.WhiteElo}) - {entity.BlackName} ({entity.BlackElo}), {entity.Site} ({entity.Year})");
							return;
						}
					}
				}

				var game = Chess.Game.FromPGN(pgn);

				string date = game.Date > DateTime.MinValue
					? game.Date.ToString("d")
					: game.Year > 0
						? game.Year.ToString()
						: "unknown date";

				lock (_consoleLock)
					Console.WriteLine($"Parsing game {game.WhitePlayer} ({game.WhiteElo}) - {game.BlackPlayer} ({game.BlackElo}), {game.Site} ({date})");

				var dbGame = DbGameFactory.FromGame(game);
				dbGame.SaveToDatabase();
			}
			catch (Exception ex)
			{
				PrintError("Error analyzing game", ex);
				throw;
			}

		}


		private async Task ClearEfCacheWorker()
		{
			try
			{
				await ClearEfCache();
			}
			catch (Exception ex)
			{
				PrintError("Error writing data", ex);
				throw;
			}

			lock (_consoleLock)
				Console.WriteLine($"Finished parsing file {_fileName} saver");
		}

		private async Task ClearEfCache()
		{
			var lastSave = DateTime.UtcNow;

			while (!_cancellationToken.IsCancellationRequested && !_allDone)
			{
				while (!_cancellationToken.IsCancellationRequested && !_allDone &&
						 DateTime.UtcNow.Subtract(lastSave).TotalSeconds < 60)
					await Task.Delay(100, _cancellationToken);

				lastSave = DateTime.UtcNow;

				lock (_consoleLock)
					Console.WriteLine("Clearing EF Cache");

				lock (_entityLock)
					_chessEntities = new ChessEntities();

				GC.Collect(2);
			}

			if (!_cancellationToken.IsCancellationRequested)
				lock (_entityLock)
					_chessEntities.SaveChanges();
		}

		private void PrintError(string message, Exception ex)
		{
			lock (_consoleLock)
			{
				Console.Error.WriteLine($"{message}: {ex.Message}");
				while (ex.InnerException != null)
				{
					Console.Error.WriteLine($"   -> {ex.InnerException.Message}");
					ex = ex.InnerException;
				}
			}
		}
	}
}

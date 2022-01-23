using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using Chess;
using Chess.EngineWrappers;
using System.Data.SqlClient;

namespace BookWriter
{
	class Program
	{
		private const string STOCKFISH_PATH = @"d:\Stockfish\Windows\stockfish_8_x64.exe";
		private const string CONNECTION_STRING = "server=.;Trusted_Connection=yes;database=CHESS;connection timeout=30";
		private static readonly List<string> _engineLines = new List<string>();

		static void Main(string[] args)
		{
			using (var stockfish = InitializeChessEngine())
			{

				while (true)
				{
					_engineLines.Clear();
					string fen = PopFenQueue();
					stockfish.SetPosition(fen);
					stockfish.GetBestMove(750000);
					AnalyzeEngineOutput(fen, _engineLines);


				}
			}
		}

		private static void AnalyzeEngineOutput(string fen, List<string> engineLines)
		{
			//var moves = engineLines
			//	.Distinct().Select(li => new
			//{
			//	Score = Convert.ToInt32(li.Substring(li.IndexOf("score cp") + 9, li.IndexOf(" ", li.IndexOf("score cp") + 10) - li.IndexOf("score cp") - 9)),
			//	Depth = Convert.ToInt32(li.Substring(li.IndexOf(" depth ") + 7, li.IndexOf(" ", li.IndexOf(" depth ") + 8) - li.IndexOf(" depth ") - 7)),
			//	Line = li.Substring(li.IndexOf(" pv ") + 4).Split(' '),
			//	Description =  li.Substring(li.IndexOf(" pv ") + 4)
			//	}).GroupBy(s => s.Depth)
			//	.Where(s => s.Count() >= 10)
			//	.OrderByDescending(g => g.Key)
			//	.First()
			//	.OrderByDescending(s => s.Score)
			//	.ToList();

			var moves = engineLines
				.Distinct().Select(li => new
				{
					Score = Convert.ToInt32(li.Substring(li.IndexOf("score cp") + 9, li.IndexOf(" ", li.IndexOf("score cp") + 10) - li.IndexOf("score cp") - 9)),
					Depth = Convert.ToInt32(li.Substring(li.IndexOf(" depth ") + 7, li.IndexOf(" ", li.IndexOf(" depth ") + 8) - li.IndexOf(" depth ") - 7)),
					Line = li.Substring(li.IndexOf(" pv ") + 4).Split(' '),
					Description = li.Substring(li.IndexOf(" pv ") + 4)
				})
				.OrderByDescending(s => s.Score)
				.ToList();

			int top = moves[0].Score;
			foreach (var move in moves)
			{
				var newpos = Position.FromFEN(fen).ApplyMove(Move.FromLAN(move.Line[0]));
				if (move.Score == top)
				{
					InsertResponse(fen, move.Line[0]);
					EnqueueFen(newpos.FEN);
				}
				else
				{
					if (move.Line.Length > 1)
						InsertResponse(newpos.FEN, move.Line[1]);
				}
			}
		}

		private static void InsertResponse(string fen, string move)
		{
			using (var conn = new SqlConnection(CONNECTION_STRING))
			{
				conn.Open();
				var mv = Move.FromLAN(move);
				string shortfen = GetShortFen(fen);

				using (var cmd = new SqlCommand("InsertPositionResponse"))
				{
					cmd.CommandType = CommandType.StoredProcedure;
					cmd.Parameters.Add(new SqlParameter("@FEN", SqlDbType.VarChar) { Value = shortfen });
					cmd.Parameters.Add(new SqlParameter("@FROM", SqlDbType.TinyInt) { Value = mv.From.File + 8 * mv.From.Rank });
					cmd.Parameters.Add(new SqlParameter("@TO", SqlDbType.TinyInt) { Value = mv.To.File + 8 * mv.To.Rank });
					cmd.Connection = conn;
					cmd.ExecuteNonQuery();
					Console.WriteLine("Enqueing FEN " + fen);
				}

				conn.Close();
			}
		}

		private static string PopFenQueue()
		{
			string fen;
			using (var conn = new SqlConnection(CONNECTION_STRING))
			{
				conn.Open();

				using (var cmd = new SqlCommand("SELECT TOP 1 FEN+' 0 1' FROM PosQueue ORDER BY Pos"))
				{
					cmd.CommandType = CommandType.Text;
					cmd.Connection = conn;
					fen = cmd.ExecuteScalar().ToString();
					Console.WriteLine("Analyzing FEN " + fen);
				}

				conn.Close();
			}

			return fen;
		}

		private static void EnqueueFen(string fen)
		{
			using (var conn = new SqlConnection(CONNECTION_STRING))
			{
				conn.Open();
				string shortfen = GetShortFen(fen);

				using (var cmd = new SqlCommand("InsertQueue"))
				{
					cmd.CommandType = CommandType.StoredProcedure;
					cmd.Parameters.Add(new SqlParameter("@FEN", SqlDbType.VarChar) { Value = shortfen });
					cmd.Connection = conn;
					cmd.ExecuteNonQuery();
					Console.WriteLine("Enqueing FEN " + fen);
				}

				conn.Close();
			}
		}

		private static string GetShortFen(string fen)
		{
			var fengr = fen.Split(' ');
			return string.Join(" ", fengr.Take(fengr.Length - 2));
		}

		private static UciEngineWrapper InitializeChessEngine()
		{
			var engine = new UciEngineWrapper(STOCKFISH_PATH);
			engine.SetEngineOption("Threads", "3");
			engine.SetEngineOption("Hash", "8000");
			engine.SetEngineOption("MultiPV", "10");
			engine.EngineOutput += Engine_EngineOutput;
			return engine;
		}

		private static void Engine_EngineOutput(object sender, System.Diagnostics.DataReceivedEventArgs e)
		{
			//Console.WriteLine(e.Data);
			if (e.Data.Contains("score cp"))
				_engineLines.Add(e.Data);
			while (_engineLines.Count > 10)
				_engineLines.RemoveAt(0);
		}
	}
}

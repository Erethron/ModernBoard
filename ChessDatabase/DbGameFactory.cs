using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.Entity.Core.EntityClient;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;
using System.Xml.Linq;
using Chess;

namespace ChessDatabase
{
	public static class DbGameFactory
	{
		public static Game FromPGN(string pgn)
		{
			var game = Chess.Game.FromPGN(pgn);
			return FromGame(game);
		}

		public static Game FromGame(Chess.Game game)
		{
			string pgn = game.GetPGN();

			var dbGame = new Game
			{
				WhiteName = game.WhitePlayer,
				BlackName = game.BlackPlayer,
				WhiteElo = game.WhiteElo == 0 ? (short?)null : game.WhiteElo,
				BlackElo = game.BlackElo == 0 ? (short?)null : game.BlackElo,
				Date = game.Date > DateTime.MinValue ? game.Date : (DateTime?)null,
				Year = game.Year == 0 ? (short?)null : game.Year,
				Result = (byte)game.State,
				ResultReason = (byte)game.StateReason,
				Event = game.Event,
				Site = game.Site,
				Round = game.Round,
				ECO = game.EcoCode,
				PgnHash = GetMd5Hash(pgn),
				PGN = pgn,
				GameHash = game.GetHash()
			};

			var position = game.StartPosition;
			Position oldPos = null;
			short plyNumber = 1;
			Chess.Move lastMove = null;

			while (true)
			{
				var newPos = new Position
				{
					FEN = position.FEN,
					MoveNumber = (short)position.MoveNumber,
					PlysTo50 = (byte)position.Position.PlysTo50Moves,
					WhiteToMove = position.Position.SideToPlay == Side.White,
					CanWhiteCastleKingSide = position.Position.Castles[0, 1],
					CanWhiteCastleQueenSide = position.Position.Castles[0, 0],
					CanBlackCastleKingSide = position.Position.Castles[1, 1],
					CanBlackCastleQueenSide = position.Position.Castles[1, 0],
					EnPassantFile = position.Position.EnPassant == null
						? null
						: (byte?)position.Position.EnPassant.File
				};

				//var whiteMoves = position.Position.GetValidMoves(Side.White);
				//var blackMoves = position.Position.GetValidMoves(Side.Black);
				var piecePositions = position.Position.GetPiecePositions().ToList();

				foreach (var tuple in piecePositions)
				{
					var square = new Square
					{
						File = (byte)tuple.Item1.File,
						Rank = (byte)tuple.Item1.Rank,
						White = tuple.Item2.Side == Side.White,
						Piece = (byte)tuple.Item2.Piece,
						Captures = 0
					};
					newPos.Squares.Add(square);
				}

				if (oldPos != null && lastMove != null)
				{
					var dbMove = new ChessDatabase.Move
					{
						PlyNumber = plyNumber++,
						FromPosition = oldPos,
						ToPosition = newPos,
						FromFile = (byte)lastMove.From.File,
						FromRank = (byte)lastMove.From.Rank,
						ToFile = (byte)lastMove.To.File,
						ToRank = (byte)lastMove.To.Rank
					};
					dbMove.FromPosition = oldPos;
					dbMove.ToPosition = newPos;
					dbGame.Moves.Add(dbMove);
				}

				dbGame.MoveCount = newPos.MoveNumber;

				if (position.NextMove == null)
					break;

				lastMove = position.NextMove.Move;
				position = position.NextMove.NextPosition;
				oldPos = newPos;
			}

			return dbGame;
		}

		public static void SaveToDatabase(this Game game)
		{
			string xml = new XElement("Games", game.GetXml()).ToString();
			string efConnectionString = ConfigurationManager.ConnectionStrings["ChessEntities"].ConnectionString;
			var builder = new EntityConnectionStringBuilder(efConnectionString);
			
			using (var connection = new SqlConnection(builder.ProviderConnectionString))
			{
				var command = new SqlCommand("dbo.SaveGames", connection)
					{ CommandType = CommandType.StoredProcedure };

				var param = new SqlParameter("@DATA", SqlDbType.Xml)
					{ Value = xml };
				command.Parameters.Add(param);

				connection.Open();
				command.ExecuteNonQuery();
				connection.Close();
			}
		}


		public static string GetMd5Hash(string input)
		{
			using (var md5Hash = MD5.Create())
			{
				// Convert the input string to a byte array and compute the hash.
				byte[] data = md5Hash.ComputeHash(Encoding.UTF8.GetBytes(input));

				// Create a new Stringbuilder to collect the bytes
				// and create a string.
				var sBuilder = new StringBuilder();

				// Loop through each byte of the hashed data 
				// and format each one as a hexadecimal string.
				for (int i = 0; i < data.Length; i++)
				{
					sBuilder.Append(data[i].ToString("x2"));
				}

				// Return the hexadecimal string.
				return sBuilder.ToString();
			}
		}

		private static string GetHash(this Chess.Game game)
		{
			string val = game.StartPosition.FEN;
			var position = game.StartPosition;
			while (position.NextMove != null)
			{
				val += position.NextMove.Move.ToLAN();
				position = position.NextMove.NextPosition;
			}

			return GetMd5Hash(val);
		}
	}
}

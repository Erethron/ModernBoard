using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Xml;
using System.Xml.Linq;

namespace ChessDatabase
{
	public static class XmlExtensions
	{
		private static readonly object Sync = new object();
		private static int _sequence = 1;

		private static int Sequence
		{
			get
			{
				lock (Sync)
					return _sequence++;
			}
		}
		public static XElement GetXml(this Square square)
		{
			return new XElement("S", 
				new XAttribute("F", square.File),
				new XAttribute("R", square.Rank),
				new XAttribute("P", square.Piece),
				new XAttribute("W", square.White ? 1 : 0),
				new XAttribute("C", square.Captures)
				);
		}

		public static XElement GetXml(this Position pos)
		{
			return new XElement("Pos",
				new XAttribute("Seq", Sequence),
				new XAttribute("Sq", pos.GetSquareHex()),
				new XAttribute("White", pos.WhiteToMove),
				pos.EnPassantFile.HasValue ? new XAttribute("EP", pos.EnPassantFile.Value) : null,
				new XAttribute("Move", pos.MoveNumber),
				new XAttribute("Ply50", pos.PlysTo50),
				new XAttribute("CastleWK", pos.CanWhiteCastleKingSide),
				new XAttribute("CastleWQ", pos.CanWhiteCastleQueenSide),
				new XAttribute("CastleBK", pos.CanBlackCastleKingSide),
				new XAttribute("CastleBQ", pos.CanBlackCastleQueenSide)
				//pos.Squares.Select(s => s.GetXml())
			);
		}

		private static string GetSquareHex(this Position pos)
		{
			var squareDict = pos.Squares
				.GroupBy(s => s.Rank)
				.ToDictionary(
					g => g.Key,
					rnk => rnk.ToDictionary(
						g => g.File,
						sq => (sq.White ? 8 + sq.Piece : sq.Piece).ToString("X")));

			var sb = new StringBuilder(66);
			sb.Append("0x");
			for (byte rnk = 0; rnk < 8; rnk++)
			{
				if (!squareDict.TryGetValue(rnk, out var rnkVal))
					sb.Append("00000000");
				else
				{
					for (byte fl = 0; fl < 8; fl++)
						sb.Append(rnkVal.TryGetValue(fl, out string square)
							? square
							: "0");
				}
			}

			return sb.ToString();
		}

		public static XElement GetXml(this Move move)
		{
			return new XElement("Move",
				new XAttribute("Seq", Sequence),
				new XAttribute("Ply", move.PlyNumber),
				new XAttribute("FromFile", move.FromFile),
				new XAttribute("FromRank", move.FromRank),
				new XAttribute("ToFile", move.ToFile),
				new XAttribute("ToRank", move.ToRank),
				new XElement("FromPos", move.FromPosition.GetXml()),
				new XElement("ToPos", move.ToPosition.GetXml())
			);
		}

		public static XElement GetXml(this Game game)
		{
			return new XElement("Game",
				new XAttribute("Seq", Sequence),
				new XAttribute("Event", game.Event),
				new XAttribute("Site", game.Site),
				new XAttribute("Round", game.Round),
				new XAttribute("WhiteName", game.WhiteName),
				game.WhiteElo.HasValue ? new XAttribute("WhiteElo", game.WhiteElo.Value) : null,
				new XAttribute("BlackName", game.BlackName),
				game.BlackElo.HasValue ? new XAttribute("BlackElo", game.BlackElo) : null,
				game.Year.HasValue ? new XAttribute("Year", game.Year.Value) : null,
				game.Date.HasValue ? new XAttribute("Date", game.Date.Value) : null,
				string.IsNullOrEmpty(game.ECO) ? null : new XAttribute("ECO", game.ECO),
				new XAttribute("MoveCount", game.MoveCount),
				new XAttribute("Result", game.Result),
				new XAttribute("Reason", game.ResultReason),
				new XAttribute("PGN", game.PGN),
				new XAttribute("PgnHash", game.PgnHash),
				new XAttribute("GameHash", game.GameHash),
				game.Moves.Select(s => s.GetXml())
			);
		}

	}
}

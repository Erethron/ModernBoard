using Chess;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;

namespace PuzzleHelper
{
	public static class GameReader
	{
      private const string GAME_START = @"\[Event\s";
      private readonly static Regex _gameStartRegex = new(GAME_START);

      public static IEnumerable<Game> GetGamesFromDirectory(string pgnDirectory)
      {
         return Directory.GetFiles(pgnDirectory, "*.pgn")
                           .SelectMany(file => ParseFile(file));
      }

      public static IEnumerable<Game> ParseFile(string pgnFileName)
      {
         var sb = new StringBuilder();

         foreach (string line in File.ReadAllLines(pgnFileName))
         {
            if (_gameStartRegex.IsMatch(line))
            {
               if (sb.Length > 0)
                  yield return Game.FromPGN(sb.ToString());
               sb = new StringBuilder();
            }

            sb.AppendLine(line);
         }
      }
   }
}

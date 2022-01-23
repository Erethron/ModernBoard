using System;
using System.IO;
using System.Text;
using System.Text.RegularExpressions;

namespace TensionFinder
{
	class Program
    {
        private const string PGN_PATH = @"E:\Downloads";
        private const string GAME_START = @"\[Event\s";
        private readonly static Regex _gameStartRegex = new(GAME_START);


        static void Main()
        {
            foreach (string file in Directory.GetFiles(PGN_PATH, "*.pgn"))
            {
                Console.WriteLine($"Analyzing file {file}");
                ParseFile(file);
            }
        }

        private static void ParseFile(string file)
        {
			using var analyzer = new GameAnalyzer();
			var sb = new StringBuilder();

			foreach (string line in File.ReadAllLines(file))
			{
				if (_gameStartRegex.IsMatch(line))
				{
					if (sb.Length > 0)
						analyzer.Analyze(sb.ToString());
					sb = new StringBuilder();
				}

				sb.AppendLine(line);
			}
		}
    }
}

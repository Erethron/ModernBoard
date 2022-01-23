using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading;
using System.Threading.Tasks;

namespace PositionImport
{
    class Program
    {
        private const string PGN_PATH = @"D:\Daten\Schach\KingBase2018-pgn";
        
        static void Main(string[] args)
        {
            var cts = new CancellationTokenSource();

            try
            {
                foreach (string file in Directory.GetFiles(PGN_PATH, "*.pgn"))
                {
                    var parser = new FileParser(file, cts.Token);
                    parser.AnalyzeFile();
                }
            }
            finally 
            {
                cts.Cancel(false);
            }
        }

    }
}

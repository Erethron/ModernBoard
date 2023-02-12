using Chess.EngineWrappers;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Reflection;

namespace Chess.PositionFactories
{
    public enum FactoryGroup
    {
        StandardPositions,
        PieceCheckMates,
        OffensiveDrills,
        DefensiveDrills,
        PracticalEndgames
    }


    public class PositionFactory
    {
        public IReadOnlyCollection<Piece> NoPieces => Array.Empty<Piece>();

        private UciEngineWrapper _engine;
        public PositionFactory(UciEngineWrapper engine)
        {
            _engine = engine;
        }

        private readonly Random _rand = new();
        internal int GetRand(int max)
        {
            lock (_rand)
                return _rand.Next(max);
        }

        public Side GetRandomSide()
        {
            return GetRand(2) == 0 ? Side.Black : Side.White;
        }


        public Dictionary<FactoryGroup, Dictionary<string, Func<PositionFactory, Position>>> Groups = new Dictionary<FactoryGroup, Dictionary<string, Func<PositionFactory,Position>>>
        {
            {
                FactoryGroup.StandardPositions, new Dictionary<string, Func<PositionFactory, Position>>
                {
                    {  "Start Position", Position.GetStartPosition }
                }
            },
            {
                FactoryGroup.PieceCheckMates, new Dictionary<string, Func<PositionFactory, Position>>
                {
                    { "Rook Mate", PieceMateFactory.GetRookMate },
                    { "Queen Mate", PieceMateFactory.GetQueenMate },
                    { "Double Bishop Mate", PieceMateFactory.GetDoubleBishopMate },
                    { "Queen vs Bishop Mate",  PieceMateFactory.GetQueenVsBishopMate },
                    { "Queen vs Knight Mate", PieceMateFactory.GetQueenVsKnightMate }
                }
            },
            {
                FactoryGroup.OffensiveDrills, new Dictionary<string, Func<PositionFactory, Position>>
                {
                    { "Healthy Pawns vs Rekt Pawns", OffensiveEndgameFactory.GetRektPawnsWin },
                    { "Random Lucena", OffensiveEndgameFactory.GetRandomLucena },
                    { "Rooks with Connected Passers (middle)",OffensiveEndgameFactory.GetRooksWithConnectedPassersMiddle },
                    { "Rooks with Connected Passers (on edge)", OffensiveEndgameFactory.GetRooksWithConnectedPassersEdge },
                    { "Rooks with Disconnected Passers", OffensiveEndgameFactory.GetRooksWithDisconnectedPassers },
                    { "Queens with Connected Passers (middle)", OffensiveEndgameFactory.GetQueensWithConnectedPassersMiddle },
                    { "Queens with Connected Passers (on edge)", OffensiveEndgameFactory.GetQueensWithConnectedPassersEdge },
                    { "Rook with Pawn versus Knight", OffensiveEndgameFactory.GetRooksAndPawnVersusKnight },
                    { "Rook with Pawn versus Bishop", OffensiveEndgameFactory.GetRooksAndPawnVersusBishop },
                    { "Knights with Connected Passers (middle)", OffensiveEndgameFactory.GetKnightsWithConnectedPassersMiddle },
                    { "Knights with Connected Passers (on edge)", OffensiveEndgameFactory.GetKnightsWithConnectedPassersEdge },
                    { "Double Rooks versus Single Rook", OffensiveEndgameFactory.GetRandomDoubleRooksVersusSingleRook },
                    { "Rook versus Knight, many Pawns", OffensiveEndgameFactory.GetRookAgainstKnightWithManyPawns },
                    { "+1 Center Pawn Win", OffensiveEndgameFactory.GetRandomPlusOnePawnWin },
                    { "3:2 Pawn Win", OffensiveEndgameFactory.GetRandom32PawnWin },
                    { "6:5 Pawn Win", OffensiveEndgameFactory.GetRandom6vs5PawnsWin },
                    { "Queen vs Rook", OffensiveEndgameFactory.GetRandomQueenVersusRook }
                }
            },
            {
                FactoryGroup.DefensiveDrills, new Dictionary<string, Func<PositionFactory, Position>>
                {
                    { "Queen vs Promoting Pawn", DefensiveEndgameFactory.GetQueenVsPromotingPawn }
                }
            }
        };
        private readonly Dictionary<string, string> EndGames;

        PositionFactory()
        {
            var path = Path.GetDirectoryName(Assembly.GetExecutingAssembly().Location);
            var file = Path.Combine(path, "PositionFactories", "PracticalEndgames.csv");
            var csv = File.ReadAllLines(file);
            EndGames = csv.Select(m => m.Split(';')).ToDictionary(s => s[1], s => s[0]);
            Groups.Add(FactoryGroup.PracticalEndgames, EndGames.ToDictionary<KeyValuePair<string, string>, string, Func<PositionFactory, Position>>(eg => eg.Key, eg => delegate { return GetRandomFlipped(Position.FromFEN(eg.Value)); }));
        }

        public Position GetPosition(FactoryGroup group, string type)
        {
            switch (@group)
            {
                case FactoryGroup.PieceCheckMates:
                case FactoryGroup.OffensiveDrills:
                case FactoryGroup.DefensiveDrills:
                case FactoryGroup.StandardPositions:
                    return GetStandardGame(group, type);

                case FactoryGroup.PracticalEndgames:
                    return GetRandomFlipped(Position.FromFEN(EndGames[type]));

                default:
                    throw new NotImplementedException($"Factory group '{@group}' not implemented.");
            }
        }

        private Position GetStandardGame(FactoryGroup group, string type)
        {
            if (!Groups.TryGetValue(group, out var factories) || !factories.TryGetValue(type, out var factory))
                throw new NotImplementedException($"Factory type '{type}' not implemented for group {group}.");
            return factory.Invoke(this);
        }

        /// <summary>
        /// Returns a random position without check and any hanging piece. Forks may be possible.
        /// </summary>
        /// <param name="whitePieces">An Enumerable containing White's pieces (WITHOUT the king)</param>
        /// <param name="blackPieces">An Enumerable containing Black's pieces (WITHOUT the king)</param>
        /// <param name="toMove">The side to move</param>
        /// <returns>A random position including the given pieces</returns>
        internal Position GetRandomPosition(IEnumerable<Piece> whitePieces, IEnumerable<Piece> blackPieces, Side toMove = Side.White, bool restrictDefendingKingToCenter = true)
        {
            var white = whitePieces as List<Piece> ?? whitePieces.ToList();
            var black = blackPieces as List<Piece> ?? blackPieces.ToList();
            Position pos;
            IEnumerable<Move> moves;

            do
            {
                string tm = toMove == Side.White ? "w" : "b";
                pos = Position.FromFEN($"8/8/8/8/8/8/8/8 {tm} - - 0 1");

                PutPieceOnRandomLocation(pos, Piece.King, Side.Black, restrictDefendingKingToCenter);
                PutPieceOnRandomLocation(pos, Piece.King, Side.White);

                foreach (var w in white)
                    PutPieceOnRandomLocation(pos, w, Side.White);

                foreach (var b in black)
                    PutPieceOnRandomLocation(pos, b, Side.Black);

                moves = pos.GetValidMoves();
            } while (pos.IsCheck || pos.IsStaleMate || moves.Any(m => pos.Squares[m.To.File, m.To.Rank] != Occupation.Empty));

            pos.CalculateFEN();
            return pos;
        }

        private void PutPieceOnRandomLocation(Position pos, Piece piece, Side side, bool restrictToCenter = false)
        {
            while (true)
            {
                int file = restrictToCenter ? 3 + GetRand(2) : GetRand(8);
                int rank = restrictToCenter ? 3 + GetRand(2) : GetRand(8);
                if (pos.Squares[file, rank] == Occupation.Empty)
                {
                    pos.Squares[file, rank] = new Occupation(side, piece);
                    return;
                }
            }
        }

        internal bool CheckPiecesAreConnected(Tuple<Coordinate, Occupation>[] bpos)
        {
            return bpos.Length == 1 || Math.Abs(bpos[0].Item1.File - bpos[1].Item1.File) <= 1 && Math.Abs(bpos[0].Item1.Rank - bpos[1].Item1.Rank) <= 1;
        }

        internal Position GetFlipped(Position pos)
        {
            if (pos == null)
                throw new ArgumentNullException(nameof(pos));

            var side = pos.SideToPlay == Side.White ? Side.Black : Side.White;
            var occ = pos.GetPiecePositions().ToList();
            var retval = Position.GetEmpty(side);
            foreach (var piece in occ)
                retval.Squares[piece.Item1.File, 7 - piece.Item1.Rank] = new Occupation(piece.Item2.Side == Side.White ? Side.Black : Side.White, piece.Item2.Piece);
            retval.CalculateFEN();
            return retval;
        }

        internal Position GetRandomFlipped(Position pos)
        {
            var retval = GetRand(2) == 0 ? GetFlipped(pos) : pos;
            retval.CalculateFEN();
            return retval;
        }
    }
}
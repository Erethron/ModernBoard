using System;
using System.Collections.ObjectModel;
using System.Linq;
using System.Threading.Tasks;
using GalaSoft.MvvmLight.Command;
using Chess.PositionFactories;
using ChessVM.GameViewModels;
using Chess;
using Chess.EngineWrappers;

namespace ChessVM
{
	public class MainViewModel : ViewModelBase, IDisposable
	{
		private static MainViewModel _instance;
		public static MainViewModel Instance => _instance ?? (_instance = new MainViewModel());

		private readonly ObservableCollection<GameViewModel> _games = new ObservableCollection<GameViewModel>();
		public ReadOnlyObservableCollection<GameViewModel> Games { get; }
		public GameViewModel CurrentGame { get; set; }

		public UciEngineWrapper DefaultEngine { get; }
        public PositionFactory DefaultPositionFactory { get; }

        public MainViewModel()
		{
			Games = new ReadOnlyObservableCollection<GameViewModel>(_games);

            var definition = GameViewModel.GetDefaultEngineDefinition();
            DefaultEngine = GameViewModel.CreateEngineWrapper(definition);
            DefaultPositionFactory = new PositionFactory(DefaultEngine);
        }

        public RelayCommand<GameStartParameters> AddGameCommand => new RelayCommand<GameStartParameters>(AddGame);
		private void AddGame(GameStartParameters startParams)
		{
			AddGame(startParams.FactoryGroup, startParams.FactoryName, startParams.FactoryDelegate);
		}

		private void AddGame(FactoryGroup group, string factoryName, Func<PositionFactory, Position> positionFactory)
		{
			var game = new AnalysisVersusEngineVM(factoryName, DefaultPositionFactory, positionFactory);
			AddGame(game);
		}

		public void AddGame(string pgn)
		{
			AddGame(GameAnalysisVM.FromPGN(pgn));
		}

		public void AddGame(GameViewModel game)
		{
			_games.Add(game);
			CurrentGame = game;
		}

		public RelayCommand ClearGamesCommand => new RelayCommand(ClearGames);
		public void ClearGames()
		{
			var games = _games.ToList();
			_games.Clear();

			Task.Run(delegate
			{
				foreach (var game in games)
					game.Dispose();
			});
		}

		public void Dispose()
		{
			ClearGames();
			CurrentGame?.Dispose();
			CurrentGame = null;
		}
	}
}

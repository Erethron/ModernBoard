using System;
using System.Collections.ObjectModel;
using System.Linq;
using System.Threading.Tasks;
using GalaSoft.MvvmLight.Command;
using Chess.PositionFactories;
using ChessVM.GameViewModels;
using Chess;

namespace ChessVM
{
	public class MainViewModel : ViewModelBase, IDisposable
	{
		private static MainViewModel _instance;
		public static MainViewModel Instance => _instance ?? (_instance = new MainViewModel());

		private readonly ObservableCollection<GameViewModel> _games = new ObservableCollection<GameViewModel>();
		public ReadOnlyObservableCollection<GameViewModel> Games { get; }
		public GameViewModel CurrentGame { get; set; }

		public MainViewModel()
		{
			Games = new ReadOnlyObservableCollection<GameViewModel>(_games);
		}

		public RelayCommand<GameStartParameters> AddGameCommand => new RelayCommand<GameStartParameters>(AddGame);
		private void AddGame(GameStartParameters startParams)
		{
			AddGame(startParams.FactoryGroup, startParams.FactoryName, startParams.FactoryDelegate);
		}

		private void AddGame(FactoryGroup group, string factoryName, Func<Position> positionFactory)
		{
			var game = new AnalysisVersusEngineVM(factoryName, positionFactory);
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

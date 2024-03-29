﻿using System;
using System.Linq;
using System.Windows;
using Chess.PositionFactories;
using ChessVM;

namespace ModernBoard
{
	/// <summary>
	/// Interaction logic for MainWindow.xaml
	/// </summary>
	public partial class MainWindow : Window
	{
		public MainWindow()
		{
			InitializeComponent();
		}

		private void AddNew_Clicked(object sender, RoutedEventArgs e)
		{
			AddGameByUI();
		}

		private void AddGameByUI()
		{
			var frm = new SelectGameMode
			{
				DataContext = GameStartParameters.GetAllPossibleStartParameters(),
				Owner = this
			};

			if (frm.ShowDialog() ?? false)
			{
				var vm = DataContext as MainViewModel;
				vm?.AddGameCommand.Execute(frm.SelectedParams);
			}
		}

		private void MainWindow_OnLoaded(object sender, RoutedEventArgs e)
		{
		}

		private const string TEST_PGN = "[Event \"1st BRICS Masters 2017\"]\r\n[Site \"Fufeng CHN\"]\r\n[Round \"6.1\"]\r\n[Date \"2017.4.24\"]\r\n[White \"Ganguly, Surya Shekhar\"]\r\n[Black \"Yu, Yangyi\"]\r\n[Result \"1/2-1/2\"]\r\n\r\n1.Nf3 d5 2.g3 Nc6 3.d4 Bf5 4.Bg2 Nb4 5.Na3 e6 6.O-O h6 7.c4 Nf6 8.Bd2 Nc6 9.Qb3 Rb8 10.Rfd1 Be4 11.Bf4 Bd6 12.Bxd6 cxd6 13.Nb5 dxc4 14.Qa3 Ke7 15.Ne5 Bxg2 16.Kxg2 a6 17.Nc3 Qc7 18.e4 b5 19.Nxc6+ Qxc6 20.d5 b4 21.dxc6 bxa3 22.bxa3 Rhc8 23.Rab1 Rxb1 24.Rxb1 Rxc6 25.Rb7+ Ke8 26.Rb8+ Kd7 27.Kf3 g5 28.Rb7+ Rc7 29.Rb6 Rc6 30.Rb7+ Rc7 31.Rb6 d5 32.e5 Ne4 33.Nxe4 dxe4+ 34.Kxe4 c3 35.Rb1 Kc6 36.a4 c2 37.Rc1 Kb6 38.Kd3 Ka5 39.Rxc2 Rxc2 40.Kxc2 Kxa4 41.Kb2 g4 42.a3 a5 43.Ka2 Kb5 44.Kb3 a4+ 45.Kc3 Kc5 46.Kd3 Kd5 47.Kc3 Kc5 48.Kd3 Kd5 49.Kc3 Kxe5 50.Kb4 Kd4 51.Kxa4 Kc4 52.Ka5 Kc5 53.Ka4 Kc4 54.Ka5 Kc5 55.Ka4 Kc4 1/2-1/2\r\n\r\n";

		private void StartGuessing_OnClick(object sender, RoutedEventArgs e)
		{
			var vm = DataContext as MainViewModel;
			vm?.AddGame(TEST_PGN);
		}

		private void Puzzles_Click(object sender, RoutedEventArgs e)
		{
			var vm = DataContext as MainViewModel;
			vm?.AddGame(TEST_PGN);
		}

		private void StartAnalysis_OnClick(object sender, RoutedEventArgs e)
		{
			var choosePgn = new ImportPGN { Owner = this };
			if ((choosePgn.ShowDialog() ?? false) && !string.IsNullOrWhiteSpace(choosePgn.PGN))
			{
				var vm = DataContext as MainViewModel;
				vm?.AddGame(choosePgn.PGN);
			}
		}
	}
}

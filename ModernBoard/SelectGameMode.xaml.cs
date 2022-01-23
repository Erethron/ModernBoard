using System;
using System.Windows;
using System.Windows.Input;
using Chess.PositionFactories;
using ChessVM;

namespace ModernBoard
{
	/// <summary>
	/// Interaction logic for SelectGameMode.xaml
	/// </summary>
	public partial class SelectGameMode : Window
	{
		public GameStartParameters SelectedParams;

		public SelectGameMode()
		{
			InitializeComponent();
		}

		private void GroupBox_OnMouseDoubleClick(object sender, MouseButtonEventArgs e)
		{
			if (GroupBox.SelectedItems.Count > 0)
			{
				SelectedParams = GroupBox.SelectedItems[0] as GameStartParameters;
				DialogResult = true;
				Close();
			}
		}
	}
}

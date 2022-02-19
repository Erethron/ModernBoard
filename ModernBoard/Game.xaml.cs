using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using Chess;
using ChessVM;
using ChessVM.GameViewModels;

namespace ModernBoard
{
	public partial class Game
	{
		private void BoardContainer_SizeChanged(object sender, SizeChangedEventArgs e)
		{
			if (sender is FrameworkElement element)
				element.Width = element.ActualHeight;
		}
	}
}

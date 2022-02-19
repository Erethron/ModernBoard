using Chess;
using ChessVM;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;

namespace ModernBoard
{
	public partial class Board
	{
		private void BoardContainer_SizeChanged(object sender, SizeChangedEventArgs e)
		{
			if (sender is FrameworkElement element)
				element.Width = element.ActualHeight;
		}

	}
}

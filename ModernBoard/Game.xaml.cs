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
		private GameViewModel _dataContext;
		private FrameworkElement _innerGrid;
		private double _drawImageSize;

		private void BoardContainer_SizeChanged(object sender, SizeChangedEventArgs e)
		{
			if (sender is FrameworkElement element)
				element.Width = element.ActualHeight;
		}
		private void BoardContainer_OnDataContextChanged(object sender, DependencyPropertyChangedEventArgs e)
		{
			_dataContext = e.NewValue as GameViewModel;
			SetDrawImageSizeOnDataContext();
		}

		private void BoardContainer_OnLoaded(object sender, RoutedEventArgs e)
		{
			_dataContext = (sender as FrameworkElement)?.DataContext as GameViewModel;
			SetDrawImageSizeOnDataContext();
		}

		private void BoardContainer_MouseMove(object sender, MouseEventArgs e)
		{
			if (_dataContext != null)
			{
				var pos = e.GetPosition(sender as FrameworkElement);
				_dataContext.DragImageX = pos.X - _dataContext.DragImageSize / 2;
				_dataContext.DragImageY = pos.Y - _dataContext.DragImageSize / 2;
			}
		}

		private void BoardContainer_MouseUp(object sender, MouseButtonEventArgs e)
		{
			if (_dataContext is VersusEngineVM versus)
			{
				var pos = e.GetPosition(_innerGrid);
				versus.EndPieceDrag(pos.X, pos.Y);
			}
		}

		private void Field_MouseDown(object sender, MouseButtonEventArgs e)
		{
			if (_dataContext is VersusEngineVM versus)
			{
				var element = sender as FrameworkElement;
				if (element?.DataContext is PiecePosition pos
					 && _dataContext != null
					 && pos.Occupation.Side == _dataContext.CurrentPosition.SideToPlay)
				{
					versus.BeginPieceDrag(pos.Coordinate);
				}
			}
		}

		private void Field_SizeChanged(object sender, SizeChangedEventArgs e)
		{
			if (sender is FrameworkElement element)
			{
				_drawImageSize = element.ActualWidth;
				SetDrawImageSizeOnDataContext();
			}
		}

		private void SetDrawImageSizeOnDataContext()
		{
			if (_dataContext != null && _drawImageSize > 0)
				_dataContext.DragImageSize = _drawImageSize;
		}

		private void InnerGrid_Loaded(object sender, RoutedEventArgs e)
		{
			_innerGrid = sender as FrameworkElement;
		}

		private void BoardContainer_MouseLeave(object sender, MouseEventArgs e)
		{
			if (_dataContext is VersusEngineVM versus)
				versus.AbortPieceDrag();
		}

		private void PromField_SizeChanged(object sender, SizeChangedEventArgs e)
		{
			if (sender is Border border)
				border.Height = border.ActualWidth;
		}

		private void PromotionGui_SelectionChanged(object sender, SelectionChangedEventArgs e)
		{
			if (sender is ListBox listbox && _dataContext is VersusEngineVM vs && listbox.SelectedItem != null)
			{
				vs.PromotionChoice = listbox.SelectedItem as Occupation;
				listbox.SelectedItem = null;
			}
		}
	}
}

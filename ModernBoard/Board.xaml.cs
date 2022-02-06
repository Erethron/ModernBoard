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
		private PositionViewModel _dataContext;
		private FrameworkElement _innerGrid;
		private double _drawImageSize;

		private void BoardContainer_SizeChanged(object sender, SizeChangedEventArgs e)
		{
			if (sender is FrameworkElement element)
				element.Width = element.ActualHeight;
		}
		private void BoardContainer_OnDataContextChanged(object sender, DependencyPropertyChangedEventArgs e)
		{
			_dataContext = e.NewValue as PositionViewModel;
			SetDrawImageSizeOnDataContext();
		}

		private void BoardContainer_OnLoaded(object sender, RoutedEventArgs e)
		{
			_dataContext = (sender as FrameworkElement)?.DataContext as PositionViewModel;
			SetDrawImageSizeOnDataContext();
		}

		private void BoardContainer_MouseMove(object sender, MouseEventArgs e)
		{
			if (_dataContext != null)
			{
				var position = _dataContext;
				var pos = e.GetPosition(sender as FrameworkElement);
				position.DragImageX = pos.X - position.DragImageSize / 2;
				position.DragImageY = pos.Y - position.DragImageSize / 2;
			}
		}

		private void BoardContainer_MouseUp(object sender, MouseButtonEventArgs e)
		{
			var pos = e.GetPosition(_innerGrid);
			_dataContext.EndPieceDrag(pos.X, pos.Y);
		}

		private void Field_MouseDown(object sender, MouseButtonEventArgs e)
		{
			var element = sender as FrameworkElement;
			if (element?.DataContext is PiecePosition pos
					&& _dataContext != null
					&& pos.Occupation.Side == _dataContext.SideToPlay)
			{
				_dataContext.BeginPieceDrag(pos.Coordinate);
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
			_dataContext.AbortPieceDrag();
		}

		private void PromField_SizeChanged(object sender, SizeChangedEventArgs e)
		{
			if (sender is Border border)
				border.Height = border.ActualWidth;
		}

		private void PromotionGui_SelectionChanged(object sender, SelectionChangedEventArgs e)
		{
			if (sender is ListBox listbox && listbox.SelectedItem != null)
			{
				_dataContext.PromotionChoice = listbox.SelectedItem as Occupation;
				listbox.SelectedItem = null;
			}
		}
	}
}

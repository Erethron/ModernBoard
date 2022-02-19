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
	public partial class BoardEdit
	{
		private BoardEditViewModel _dataContext;
		private double _drawImageSize;

		private void BoardContainer_SizeChanged(object sender, SizeChangedEventArgs e)
		{
			if (sender is FrameworkElement element)
			{
				element.Width = element.ActualHeight;
				_drawImageSize = element.ActualWidth / 8;
				SetDrawImageSizeOnDataContext();
			}
		}
		private void BoardContainer_OnDataContextChanged(object sender, DependencyPropertyChangedEventArgs e)
		{
			_dataContext = e.NewValue as BoardEditViewModel;
			SetDrawImageSizeOnDataContext();
		}

		private void BoardContainer_OnLoaded(object sender, RoutedEventArgs e)
		{
			_dataContext = (sender as FrameworkElement)?.DataContext as BoardEditViewModel;
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
			var pos = e.GetPosition(sender as FrameworkElement);
			_dataContext.EndPieceDrag(pos.X, pos.Y);
		}

		private void BoardContainer_MouseDown(object sender, MouseButtonEventArgs e)
		{
			var element = sender as FrameworkElement;
			var pos = e.GetPosition(element);
			_dataContext.BeginPieceDrag(pos.X, pos.Y);
		}

		private void SetDrawImageSizeOnDataContext()
		{
			if (_dataContext != null && _drawImageSize > 0)
				_dataContext.DragImageSize = _drawImageSize;
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

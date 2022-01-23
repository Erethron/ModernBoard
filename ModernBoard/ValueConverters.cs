using Chess;
using System;
using System.Globalization;
using System.Windows;
using System.Windows.Data;
using System.Windows.Media;
using ChessVM;
using ChessVM.GameViewModels;

namespace ModernBoard
{
	public class ImageSourceConverter : IValueConverter
	{
		public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
		{
			if (!(value is Occupation val) || val.Piece == Piece.None)
				return null;

			return $"img/{val.Side}{val.Piece}.png";
		}

		public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
		{
			throw new NotImplementedException();
		}
	}

	public class SquareBackConverter : IValueConverter
	{
		public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
		{
			if (value is PiecePosition piecePosition)
			{
				var backCol = (piecePosition.Coordinate.File + piecePosition.Coordinate.Rank) % 2 == 0
									? Color.FromArgb(255, 181, 136, 99) : Color.FromArgb(255, 240, 217, 181);

				if (piecePosition.InLastMove)
					return new RadialGradientBrush(Colors.Yellow, backCol);
				return new SolidColorBrush(backCol);
			}
			return Brushes.White;
		}

		public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
		{
			throw new NotImplementedException();
		}
	}

	public class RowConverter : IMultiValueConverter
	{
		public object Convert(object[] values, Type targetType, object parameter, CultureInfo culture)
		{
			if (values[0] == null)
				return null;

			var coordinate = values[0] as Coordinate;
			bool flip = (bool)values[1];
			return flip ? (coordinate.Rank) : (7 - coordinate.Rank);
		}

		public object[] ConvertBack(object value, Type[] targetTypes, object parameter, CultureInfo culture)
		{
			throw new NotImplementedException();
		}
	}

	public class ColConverter : IMultiValueConverter
	{
		public object Convert(object[] values, Type targetType, object parameter, CultureInfo culture)
		{
			if (values[0] == null)
				return null;

			var coordinate = values[0] as Coordinate;
			bool flip = (bool)values[1];
			return flip ? (7 - coordinate.File) : (coordinate.File);
		}

		public object[] ConvertBack(object value, Type[] targetTypes, object parameter, CultureInfo culture)
		{
			throw new NotImplementedException();
		}
	}

	public class GameToVisibilityConverter : IValueConverter
	{
		public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
		{
			if (!(value is GameState))
				return null;

			var state = (GameState)value;
			return state == GameState.Running ? Visibility.Collapsed : Visibility.Visible;
		}

		public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
		{
			throw new NotImplementedException();
		}
	}

	public class StateAndReasonToTextconverter : IMultiValueConverter
	{
		public object Convert(object[] values, Type targetType, object parameter, CultureInfo culture)
		{
			if (values.Length != 2)
				return null;

			if (!(values[0] is GameState state) || !(values[1] is GameStateReason reason))
				return null;

			switch (state)
			{
				case GameState.Running:
					return "Running";
				case GameState.Drawn:
					switch (reason)
					{
						case GameStateReason.FiftyMovesRule:
							return "Drawn (50 moves rule)";
						case GameStateReason.InsufficientMaterial:
							return "Drawn (Not enough material)";
						default:
							return $"Drawn by {reason}";
					}
				case GameState.WhiteWon:
					return $"White Wins by {reason}";
				case GameState.BlackWon:
					return $"Black Wins by {reason}";
				default:
					return null;
			}
		}

		public object[] ConvertBack(object value, Type[] targetTypes, object parameter, CultureInfo culture)
		{
			throw new NotImplementedException();
		}
	}

	public class ReasonToTextconverter : IValueConverter
	{
		public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
		{
			if (!(value is GameStateReason reason))
				return null;

			switch (reason)
			{
				case GameStateReason.FiftyMovesRule:
					return "(50 Moves Rule)";
				case GameStateReason.InsufficientMaterial:
					return "(Insufficient Material)";
				default:
					return $"({reason})";
			}
		}

		public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
		{
			throw new NotImplementedException();
		}
	}

	public class StateToTextconverter : IValueConverter
	{
		public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
		{
			if (!(value is GameState state))
				return null;

			switch (state)
			{
				case GameState.WhiteWon:
					return "White Wins";
				case GameState.BlackWon:
					return "Black Wins";
				default:
					return state.ToString();
			}
		}

		public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
		{
			throw new NotImplementedException();
		}
	}

	public class BoolToVisibility : IValueConverter
	{
		public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
		{
			if (value is bool visible)
				return visible ? Visibility.Visible : Visibility.Collapsed;
			return null;
		}

		public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
		{
			throw new NotImplementedException();
		}
	}

	public class PromotionRowConverter : IMultiValueConverter
	{
		public object Convert(object[] values, Type targetType, object parameter, CultureInfo culture)
		{
			if (values[0] == null)
				return null;

			var coordinate = values[0] as Coordinate;
			if (coordinate == null)
				return null;

			bool flip = (bool)values[1];
			return flip ? (coordinate.Rank - 3) : (7 - coordinate.Rank);
		}

		public object[] ConvertBack(object value, Type[] targetTypes, object parameter, CultureInfo culture)
		{
			throw new NotImplementedException();
		}
	}

	public class PromotionColConverter : IMultiValueConverter
	{
		public object Convert(object[] values, Type targetType, object parameter, CultureInfo culture)
		{
			if (values[0] == null)
				return null;

			var coordinate = values[0] as Coordinate;
			if (coordinate == null)
				return null;

			bool flip = (bool)values[1];
			return flip ? (8 - coordinate.File) : (coordinate.File + 1);
		}

		public object[] ConvertBack(object value, Type[] targetTypes, object parameter, CultureInfo culture)
		{
			throw new NotImplementedException();
		}
	}
}
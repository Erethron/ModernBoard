using System.Windows;

namespace ModernBoard
{
	/// <summary>
	/// Interaction logic for ImportPGN.xaml
	/// </summary>
	public partial class ImportPGN : Window
	{
		public string PGN => PgnData.Text;

		public ImportPGN()
		{
			InitializeComponent();
		}

		private void Ok_Clicl(object sender, RoutedEventArgs e)
		{
			DialogResult = true;
			Close();
		}
	}
}

using System.Collections.Generic;
using System.Xml.Serialization;
using Chess;

namespace ChessVM
{

	public class EngineOption
	{
		[XmlAttribute]
		public string Name { get; set; }

		[XmlAttribute]
		public string Value { get; set; }
	}

	public class EngineDefinition
	{
		[XmlAttribute]
		public EngineType Type { get; set; }
		[XmlAttribute]
		public string ExecutablePath { get; set; }

		[XmlArray("AnalysisSettings")]
		[XmlArrayItem("Option")]
		public List<EngineOption> AnalysisSettings { get; set; }

		[XmlArray("GameSettings")]
		[XmlArrayItem("Option")]
		public List<EngineOption> GameSettings { get; set; }
	}
}

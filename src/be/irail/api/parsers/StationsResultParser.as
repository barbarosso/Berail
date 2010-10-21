package be.irail.api.parsers
{
	import be.irail.api.data.Station;

	public class StationsResultParser implements IStationsParser
	{
		private var stationParser : StationParser = new StationParser();
		/**
		 * takes an xml with all stations and parses it into an Vectro.<Station>
		 *  
		 * 
		 */
		public function parse( stationsXML : XML) : Vector.<Station> {
			var stations : Vector.<Station> = new Vector.<Station>;
			
			var counter : int 		= stationsXML.station.length();
			
			for each (var stationObj:XML in stationsXML..station) {
				
				//stations.push(stationParser.parse(stationObj));
			}
			
			return stations;
		}
	}
}
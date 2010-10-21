package be.irail.api.parsers
{
	import be.irail.api.data.Station;

	public class StationParser
	{
		public function parse(data : XML) : Station
		{
			
			var locations : Array 	= data[0].station.@location.toString().split(" ");
			return new Station(data.station.toString() , locations[0], locations[1] );
		}
	}
}
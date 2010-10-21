package be.irail.api.parsers
{
	import be.irail.api.data.Station;

	public interface IStationsParser
	{
		/**
		 * 
		 * gets the result from the service call wich is xml
		 * and returns a Vector with Station objects
		 */
		function parse( stationsXML : XML) : Vector.<Station>;
	}
}
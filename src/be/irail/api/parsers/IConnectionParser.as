package be.irail.api.parsers
{
	import be.irail.api.data.Arrival;
	import be.irail.api.data.Connection;
	import be.irail.api.data.Departure;
	import be.irail.api.data.Platform;
	import be.irail.api.data.Station;
	import be.irail.api.data.Vehicle;
	import be.irail.api.data.Via;
	import be.irail.api.data.Vias;

	public interface IConnectionParser
	{
		
		function parseConnections(connections:XML):Array
		
	}
}
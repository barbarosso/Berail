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
	
	public class ConnectionsParser implements IConnectionParser
	{
		
		private var stationParser : StationParser = new StationParser();
		
		public function parseConnections(connections:XML):Array
		{
			var connectionVector : Array = new Array;
			
			for each (var connectionXML : XML in connections..connection) {
				
				connectionVector.push(parseConnection(connectionXML));
				
			}
			
			return connectionVector;
			
		}
		
		private function parseConnection(connection:XML):Connection
		{
			
			var con : Connection 	= new Connection();
			
				con.id 			= connection.connection.@id;
				
				con.duration 	= connection.duration;
				
				con.arrival 	= parseArrival(connection.arrival[0]);
				
				con.departure 	= parseDeparture(connection.departure[0]);
				
				con.vias		= parseVias(connection.vias);
				
			return con;
			
		}
		
		private function parseDeparture(data:XML):Departure
		{
			
			if(data){
				
				var departure : Departure = new Departure();
					departure.vehicle 	= parseVehicle(data.vehicle[0]);
					departure.platForm 	= parsePlatform(data.platform[0]);
					departure.station	= parseStation(data.station);
				return departure;
				
			}
			
			return null;
		}
		
		private function parsePlatform(data:XML):Platform
		{
			if(data) {
				var platForm : Platform = new Platform();
				platForm.number = int(data);
				platForm.normal = data.@normal;
	
					return platForm;
			}
			
			return null;
			
		}
		
		private function parseStation(data:XMLList):Station
		{
			
			if(data){
				var locations : Array 	= data.@location.toString().split(" ");
				
				return new Station(data.toString() , locations[0], locations[1] );
			}
			
			return null;
		}
		
		private function parseArrival(data:XML):Arrival
		{
			
			if(data) {
				
				var tripNode : Arrival 	= new Arrival();
					
					tripNode.delay			= data.@delay;
					
					tripNode.vehicle 		= parseVehicle(data.vehicle[0]);
					
					tripNode.platform 		= parsePlatform(data.platform[0]);
					
					tripNode.unixtime		= new Date(data.unixtime * 1000);
					
					tripNode.station 		=  parseStation(data.station);
					
				return tripNode;
			}
			
			return null;
			
		}
		
		private function parseVia(data:XML):Via
		{
			if(data){	
				
				var via : Via = new Via();
					
					via.id = data.@id;

					via.arrivalPlatform 	= data.arrival.platform;
					via.arrivalTime		 	= new Date(data.arrival.time * 1000);
					
					via.departurePlatform	= data.via.departure.platform;
					via.departurelTime		= new Date(data.departure.time * 1000);
					
					via.timeBetween			= data.timeBetween;
					
					via.station				= parseStation(data.station);
					via.vehicle				= parseVehicle(data.vehicle[0]);
					
				return via;
			} 
			
			return null;
		}
		
		private function parseVias(data:XMLList):Vias
		{
			var vias : Vias = new Vias();
			
			for each (var via : XML in data..via) {
				
				vias.vias.push(parseVia(via));
				
			}
			return vias;
		}

		public function parseVehicle(data: XML) : Vehicle
		{
			if(data){
				var vehicle : Vehicle = new Vehicle();
					vehicle.id = data;
					
					return vehicle;
			}
			
			return null; 
			
		} 
		
	}
}
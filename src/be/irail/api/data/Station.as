package be.irail.api.data
{
	/**
	 * object retrieved from the getstation call
	 * contains all data of a Station
	  * created 27/10/2010
	 * @author Pascal Van Hecke aka Barbarosso
	 */ 
	public class Station
	{
		private var _name 		: String;
		private var _latitude 	: Number;
		private var _longitude 	: Number;
		
		public function Station(name : String, latitude : Number , longitude : Number)
		{
			_name = name;
			_latitude = latitude;
			_longitude = longitude;
		}
		
		/**
		 * name of the station
		 */
		public function get name():String
		{
			return _name;
		}

		public function set name(value:String):void
		{
			_name = value;
		}
		
		/**
		 * gives the lattitude -> horizontal position of the station
		 */
		public function get latitude():Number
		{
			return _latitude;
		}

		public function set latitude(value:Number):void
		{
			_latitude = value;
		}
		
		/**
		 * gives the longitude -> vertical position of the station
		 */
		public function get longitude():Number
		{
			return _longitude;
		}

		public function set longitude(value:Number):void
		{
			_longitude = value;
		}

	}
}
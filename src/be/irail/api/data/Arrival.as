package be.irail.api.data
{
	public class Arrival
	{
		private var _platform 		: Platform;
		private var _delay			: Number;
		private var _unixtime 		: Date;
		private var _station 		: Station;
		private var _vehicle 		: Vehicle;
		
		public function Arrival()
		{
			
		}

		public function get platform():Platform
		{
			return _platform;
		}

		public function set platform(value:Platform):void
		{
			_platform = value;
		}

		public function get delay():Number
		{
			return _delay;
		}

		public function set delay(value:Number):void
		{
			_delay = value;
		}

		public function get unixtime():Date
		{
			return _unixtime;
		}

		public function set unixtime(value:Date):void
		{
			_unixtime = value;
		}

		public function get station():Station
		{
			return _station;
		}

		public function set station(value:Station):void
		{
			_station = value;
		}

		public function get vehicle():Vehicle
		{
			return _vehicle;
		}

		public function set vehicle(value:Vehicle):void
		{
			_vehicle = value;
		}

	}
}
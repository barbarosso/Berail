package be.irail.api.data
{
	import mx.charts.chartClasses.DataDescription;

	public class Departure
	{
		private var _vehicle 	: Vehicle;
		private var _platForm	: Platform;
		private var _time		: Date;
		private var _station	: Station;
		
		public function Departure()
		{
		}

		public function get vehicle():Vehicle
		{
			return _vehicle;
		}

		public function set vehicle(value:Vehicle):void
		{
			_vehicle = value;
		}

		public function get platForm():Platform
		{
			return _platForm;
		}

		public function set platForm(value:Platform):void
		{
			_platForm = value;
		}

		public function get time():Date
		{
			return _time;
		}

		public function set time(value:Date):void
		{
			_time = value;
		}

		public function get station():Station
		{
			return _station;
		}

		public function set station(value:Station):void
		{
			_station = value;
		}


	}
}
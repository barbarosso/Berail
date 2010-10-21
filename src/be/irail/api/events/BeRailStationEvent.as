package be.irail.api.events
{
	import be.irail.api.data.Station;
	
	import flash.events.Event;
	
	public class BeRailStationEvent extends Event
	{
		
		public static const SUCCES : String = "BeRailStationSuccesEvent.succes";
		
		private var _stations : Vector.<Station>;
		
		public function BeRailStationEvent(type:String , stations : Vector.<Station>)
		{
			
			this.stations = stations;
			super(type, true, true);
		}

		public function get stations():Vector.<Station>
		{
			return _stations;
		}

		public function set stations(value:Vector.<Station>):void
		{
			_stations = value;
		}

	}
}
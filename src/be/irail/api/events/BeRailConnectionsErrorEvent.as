package be.irail.api.events
{
	import flash.events.Event;
	
	public class BeRailConnectionsErrorEvent extends Event
	{
		public static const ERROR : String = "BeRailConnectionsErrorEvent.error"; 
		
		private var _error : String;
		
		public function BeRailConnectionsErrorEvent(type:String , error : String)
		{
			super(type, true, true);
			this._error = error;
		}

		public function get error():String
		{
			return _error;
		}

	}
}
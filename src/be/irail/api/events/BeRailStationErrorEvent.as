package be.irail.api.events
{
	import flash.events.Event;
	
	public class BeRailStationErrorEvent extends Event
	{
		
		public static const ERROR : String = "BeRailErrorEvent.error"; 
		
		public function BeRailStationErrorEvent(type:String)
		{
			super(type, true, true);
		}
	}
}
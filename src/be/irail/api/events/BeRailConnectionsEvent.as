package be.irail.api.events
{
	import be.irail.api.data.Connection;
	
	import flash.events.Event;
	
	public class BeRailConnectionsEvent extends Event
	{
		public static const SUCCES : String = "BeRailConnectionsEvent.SUCCES";
		
		private var _connections : Vector.<Connection>;
		
		public function BeRailConnectionsEvent(type:String, connectons : Vector.<Connection>)
		{
			super(type, true, true);
			
			this._connections = connectons;
		}

		public function get connections():Vector.<Connection>
		{
			return _connections;
		}

	}
}
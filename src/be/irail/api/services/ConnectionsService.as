package be.irail.api.services
{
	import be.irail.api.data.Connection;
	import be.irail.api.events.BeRailConnectionsErrorEvent;
	import be.irail.api.events.BeRailStationErrorEvent;
	import be.irail.api.parsers.IConnectionParser;
	
	import flash.events.ErrorEvent;
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	import flash.events.IOErrorEvent;
	import flash.net.URLLoader;
	import flash.net.URLRequest;
	import flash.net.URLVariables;
	
	import mx.collections.ArrayCollection;
	
	public class ConnectionsService extends EventDispatcher
	{
		private var _urlLoader 	:URLLoader;
		
		private var _url 		: String = "http://dev.irail.be/api/connections.php";
		
		private var _xmlParser 	: IConnectionParser;
		
		private var _connectionParams : ConnectionsParams;
		
		public function ConnectionsService(parser : IConnectionParser)
		{
			_xmlParser = parser;
		}
		
		public function loadConnections(connectionParams : ConnectionsParams) : void {
			
			_connectionParams = connectionParams;
			
			connect();
		}
		
		/**
		 * 
		 * sets up the urlloader and tries to connect to the berail api
		 * 
		 * 
		 */
		private function connect() : void {
			
			var urlRequest:URLRequest = new URLRequest(_url);
			
			_urlLoader = new URLLoader();
			_urlLoader.addEventListener(Event.COMPLETE, onBerailServiceSuccess);
			_urlLoader.addEventListener(IOErrorEvent.IO_ERROR , ioErrorHandler);
			_urlLoader.addEventListener(ErrorEvent.ERROR , errorHandler);
			
			
			var variables:URLVariables = new URLVariables();
				
				variables.from = "wetteren";
				variables.to = "lokeren";
			
			urlRequest.data = variables;
			
			try {
				_urlLoader.load(urlRequest);
			}
			catch (error:SecurityError)
			{
				dispatchEvent(new BeRailConnectionsErrorEvent(BeRailConnectionsErrorEvent.ERROR, error.toString()));
			}
			
		}
		
		/**
		 * 
		 * removes all eventlisteners from the urlloader class
		 * must be called when you want to remove this from memory 
		 * and be able to clear the memory via garbage collection
		 * 
		 */
		public function dispose() : void {
			
			if(_urlLoader){
				_urlLoader.removeEventListener(Event.COMPLETE, onBerailServiceSuccess);
				_urlLoader.removeEventListener(IOErrorEvent.IO_ERROR , ioErrorHandler);
				_urlLoader.removeEventListener(ErrorEvent.ERROR , errorHandler);
			}
			
		}
		
		/**
		 * 
		 * called when the bereailservice is succesfull
		 * will parse the result into a Vector.<Station>
		 * and dispatches the result to the listeners via the BeRailStationEvent.SUCCES event
		 * 
		 */
		protected function onBerailServiceSuccess(event:Event):void {
			var data : XML = new XML(_urlLoader.data);
			
			var connections : ArrayCollection = new ArrayCollection(_xmlParser.parseConnections(data));
			
			//this.dispatchEvent(new BeRailStationEvent (BeRailStationEvent.SUCCES , stations));
			
			dispose();
			
		}
		
		/**
		 * 
		 * 
		 */
		protected function ioErrorHandler(event : IOErrorEvent) : void {
			dispatchEvent(new BeRailConnectionsErrorEvent(BeRailConnectionsErrorEvent.ERROR, event.toString()));
		}
		
		protected function errorHandler(event : ErrorEvent) : void {
			dispatchEvent(new BeRailConnectionsErrorEvent(BeRailConnectionsErrorEvent.ERROR, event.toString()));
		}
		
		public function set xmlParser(value:IConnectionParser):void
		{
			_xmlParser = value;
		}
	}
}
package be.irail.api.data
{
	
	/**
	 <connection id="0">
		<departure delay="240">
			<vehicle>Be.NMBS.IC2237</vehicle>
			<platform normal="1">2</platform>
			<time formatted="2010-09-29T15:40Z">1285774800</time>
			<station location="51001603 3881883">Wetteren [B]</station>
		</departure>
		<arrival delay="0">
			<vehicle>Be.NMBS.IC738</vehicle>
			<platform normal="1">14</platform>
			<time formatted="2010-09-29T16:55Z">1285779300</time><station location="51217200 4421101">Anvers-Central [B]</station>
		</arrival>
		<vias number="1">
			<via id="0">
				<arrival>
					<platform>4</platform>
					<time formatted="2010-09-29T15:52Z">1285775520</time>
				</arrival>
				<departure>
					<platform>2</platform>
					<time formatted="2010-09-29T16:05Z">1285776300</time>
				</departure>
				<timeBetween>780</timeBetween>
				<station location="51035896 3710675">Gand-Saint-Pierre [B]</station>
				<vehicle>Be.NMBS.IC2237</vehicle>
			</via>
		</vias>
		<duration>4500</duration>
	</connection>
	 */
	
	public class Connection
	{
		private var _id 		: int;
		private var _departure 	: Departure;
		private var _arrival	: Arrival;
		private var _vias		: Vias;
		private var _duration	: int;
		
		public function Connection()
		{
		}

		public function get id():int
		{
			return _id;
		}

		public function set id(value:int):void
		{
			_id = value;
		}

		public function get departure():Departure
		{
			return _departure;
		}

		public function set departure(value:Departure):void
		{
			_departure = value;
		}

		public function get arrival():Arrival
		{
			return _arrival;
		}

		public function set arrival(value:Arrival):void
		{
			_arrival = value;
		}

		public function get vias():Vias
		{
			return _vias;
		}

		public function set vias(value:Vias):void
		{
			_vias = value;
		}

		public function get duration():int
		{
			return _duration;
		}

		public function set duration(value:int):void
		{
			_duration = value;
		}


	}
}
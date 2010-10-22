package be.irail.api.data
{
	public class Via
	{
		/**
		 * 
		  <via id="0">
		    <arrival>
		      <platform>6       </platform>
		      <time formatted="2010-09-30T11:29Z">1285846140</time>
		    </arrival>
		    <departure>
		      <platform>12      </platform>
		      <time formatted="2010-09-30T11:41Z">1285846860</time>
		    </departure>
		    <timeBetween>720</timeBetween>
		    <station location="50835707 4336531">Bruxelles-Midi [B]</station>
		    <vehicle>Be.NMBS.IC1734</vehicle>
		  </via>
	  * 
	  */
		public var id 					: int;
		public var arrivalPlatform 		: int;
		public var arrivalTime 			: Date;
		public var departurePlatform 	: int;
		public var departurelTime 		: Date;
		public var departure 			: Departure;
		public var timeBetween 			: Number;
		public var station 				: Station;
		public var vehicle 				: Vehicle;
		
		public function Via()
		{
		}
	}
}
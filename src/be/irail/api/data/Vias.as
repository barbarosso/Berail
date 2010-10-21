package be.irail.api.data
{
	
	/**
	 * 
	 * 
	 <vias number="2">
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
	  <via id="1">
	    <arrival>
	      <platform>1       </platform>
	      <time formatted="2010-09-30T13:20Z">1285852800</time>
	    </arrival>
	    <departure>
	      <platform/>
	      <time formatted="2010-09-30T13:20Z">1285852800</time>
	    </departure>
	    <timeBetween>0</timeBetween>
	    <station location="50847402 2876593">Ypres [B]</station>
	    <vehicle>Be.NMBS.IC2335</vehicle>
	  </via>
	</vias>
	 * 
	 */
	public class Vias
	{
		public var number 	: Number;
		public var vias	: Vector.<Via> = new Vector.<Via>;
		
		public function Vias()
		{
		}
	}
}
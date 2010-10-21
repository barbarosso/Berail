package be.irail.api.services
{
	public class ConnectionsParams
	{
		
		/*
		http://api.irail.be/connections/?to=STATION1&from=STATION2 (OPTIONAL:) &date=311210&time=2359&lang=NL&timeSel=arrive or depart&typeOfTransport=train;bus;taxi
		
		date
		
		dmy (day of month with leading 0, number of the month with leading 0, 10 or 11 (for 2010 or 2011))
		
		time
		
		Hours in 24 hour format concatenated with minutes with leading 0!
			
			timeSel
		
		Whether the date & time are for arrival or depart. Should be "arrive" or "depart"
		*/
		
		private var fromStation : String = "wetteren";
		private var toStation 	: String = "gent dampoort";
		
		// ddmmyyyy (day of month with leading 0, number of the month with leading 0, 10 or 11 (for 2010 or 2011))
		private var date		: String = "21/10/2010";
		
		//time=2359==>Hours in 24 hour format concatenated with minutes with leading 0!
		private var hours: String = "1500";
		
		//Whether the date & time are for arrival or depart. Should be "arrive" or "depart"
		private var timeSel : String = "depart";
		
		public function ConnectionsParams()
		{
			
		}
	}
}
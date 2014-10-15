/***************************************************************************************************
 * Class:   	Facility.cs
 * Created By: 	Eric Conder
 * Created On: 	7/23/2014
 * 
 * Changes:
 * 
 *
 * *************************************************************************************************/
using System;


namespace MRMaintenance.Data
{
	/// <summary>
	/// Description of Facilities.
	/// </summary>
	public class Facility
	{
		public Facility()
		{
		}
		
		
		//Properties
		public long ID { get; set; }
		public string Name { get; set; }
		public string Address1 { get; set; }
		public string Address2 { get; set; }
		public string City { get; set; }
		public Nullable<long> StateID { get; set; }
		public string Zipcode { get; set; }
		public string Phone1 { get; set; }
		public string Phone2 { get; set; }
		public string Fax { get; set; }
		public Nullable<float> Latitude { get; set; }
		public Nullable<float> Longitude { get; set; }
	}
}

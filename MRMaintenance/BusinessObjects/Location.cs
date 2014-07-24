/***************************************************************************************************
 * Class:   	Location.cs
 * Created By: 	Eric Conder
 * Created On: 	7/24/2014
 * 
 * Changes:
 * 
 *
 * *************************************************************************************************/
using System;


namespace MRMaintenance.BusinessObjects
{
	/// <summary>
	/// Description of Location.
	/// </summary>
	public class Location
	{
		public Location()
		{
		}
		
		
		//Properties
		public long ID { get; set; }
		public long FacilityID { get; set; }
		public string Name { get; set; }
		public string Address1 { get; set; }
		public string Address2 { get; set; }
		public string City { get; set; }
		public long StateID { get; set; }
		public string Zipcode { get; set; }
		public Nullable<float> Latitude { get; set; }
		public Nullable<float> Longitude { get; set; }
	}
}

/***************************************************************************************************
 * Class:   	Vendor.cs
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
	/// Description of Vendor.
	/// </summary>
	public class Vendor
	{
		public Vendor()
		{
		}
		
		
		//Properties
		public long ID { get; set; }
		public string Name { get; set; }
		public string Address1 { get; set; }
		public string Address2 { get; set; }
		public string City { get; set; }
		public long StateID { get; set; }
		public string Zipcode { get; set; }
		public string Phone1 { get; set; }
		public string Phone2 { get; set; }
		public string Fax { get; set; }
		public string Website { get; set; }
	}
}

/***************************************************************************************************
 * Class:   	Manufacturer.cs
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
	/// Description of Manufacturer.
	/// </summary>
	[System.ComponentModel.DataObject]
	public class Manufacturer
	{
		public Manufacturer()
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
		public string Website { get; set; }
	}
}

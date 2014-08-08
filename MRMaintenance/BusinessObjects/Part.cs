/***************************************************************************************************
 * Class:   	Part.cs
 * Created By: 	Eric Conder
 * Created On: 	8/6/2014
 * 
 * Changes:
 * 
 *
 * *************************************************************************************************/
using System;

namespace MRMaintenance.BusinessObjects
{
	/// <summary>
	/// Description of Part.
	/// </summary>
	public class Part
	{
		public Part()
		{
		}
		
		
		//Properties
		public long ID { get; set; }
		public Nullable<long> ManufacturerID { get; set; }
		public Nullable<long> VendorID { get; set; }
		public string Name { get; set; }
		public string Description { get; set; }
		public string PartNumber { get; set; }
		public Nullable<int> Size { get; set; }
		public Nullable<long> SizeUnit { get; set; }
	}
}

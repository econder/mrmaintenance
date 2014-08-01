/***************************************************************************************************
 * Class:   	Equipment.cs
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
	/// Description of Equipment.
	/// </summary>
	[System.ComponentModel.DataObject]
	public class Equipment
	{
		public Equipment()
		{
		}
		
		
		public long ID { get; set; }
		public long LocationID { get; set; }
		public long EquipmentTypeID { get; set; }
		public long ManufacturerID { get; set; }
		public long VendorID { get; set; }
		public string EquipmentNumber { get; set; }
		public string Name { get; set; }
		public string Serial { get; set; }
		public string Model { get; set; }
		public string Description { get; set; }
	}
}

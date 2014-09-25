/***************************************************************************************************
 * Class:   	InventoryLocation.cs
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
	/// Description of InventoryLocation.
	/// </summary>
	public class InventoryLocation
	{
		public InventoryLocation()
		{
		}
		
		
		//Properties
		public long ID { get; set; }
		public long FacilityID { get; set; }
		public string Name { get; set; }
	}
}

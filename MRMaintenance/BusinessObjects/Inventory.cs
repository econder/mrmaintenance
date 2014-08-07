/***************************************************************************************************
 * Class:   	Inventory.cs
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
	/// Description of Inventory.
	/// </summary>
	public class Inventory
	{
		public Inventory()
		{
		}
		
		
		//Properties
		public long ID { get; set; }
		public long LocationID { get; set; }
		public long PartID { get; set; }
		public float Quantity { get; set; }
	}
}

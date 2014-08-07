/***************************************************************************************************
 * Class:   	Tool.cs
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
	/// Description of Tool.
	/// </summary>
	public class Tool
	{
		public Tool()
		{
		}
		
		
		//Properties
		public long ID { get; set; }
		public string Name { get; set; }
		public string Description { get; set; }
		public long InventoryLocationID { get; set; }
		public int Quantity { get; set; }
	}
}

/***************************************************************************************************
 * Class:   	EquipmentDoc.cs
 * Created By: 	Eric Conder
 * Created On: 	7/31/2014
 * 
 * Changes:
 * 
 *
 * *************************************************************************************************/
using System;

namespace MRMaintenance.BusinessObjects
{
	/// <summary>
	/// Description of EquipmentDoc.
	/// </summary>
	public class EquipmentDoc
	{
		
		public EquipmentDoc()
		{
		}
		
		
		//Properties
		public long ID { get; set; }
		public long EquipmentID { get; set; }
		public string Name { get; set; }
		public string Link { get; set; }
	}
}

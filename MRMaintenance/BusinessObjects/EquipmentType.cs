/***************************************************************************************************
 * Class:   	EquipmentType.cs
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
	/// Description of EquipmentType.
	/// </summary>
	[System.ComponentModel.DataObject]
	public class EquipmentType
	{
		public EquipmentType()
		{
		}
		
		
		//Properties
		public long ID { get; set; }
		public string Name { get; set; }
	}
}

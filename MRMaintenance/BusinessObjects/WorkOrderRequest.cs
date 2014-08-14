/***************************************************************************************************
 * Class:   	WorkOrderRequest.cs
 * Created By: 	Eric Conder
 * Created On: 	7/25/2014
 * 
 * Changes:
 * 2014-08-06	-Changed name to WorkOrderRequest to reflect SQL database changes using request->work order
 * 				method of work order generation.
 * 				-Removed RecurrenceCount property since it wasn't used in the database.
 * 				-Added Enabled property.
 *
 * *************************************************************************************************/
using System;

namespace MRMaintenance.BusinessObjects
{
	/// <summary>
	/// Description of WorkOrderRequest.
	/// </summary>
	[System.ComponentModel.DataObject]
	public class WorkOrderRequest
	{
		public WorkOrderRequest()
		{
		}
		
		
		//Properties
		public long ID { get; set; }
		public string Name { get; set; }
		public string Description { get; set; }
		public long EquipmentID { get; set; }
		public long DepartmentID { get; set; }
		public DateTime DateSubmitted { get; set; }
		public DateTime StartDate { get; set; }
		public int TimeFrequency { get; set; }
		public long TimeIntervalID { get; set; }
		public bool Enabled { get; set; }
		public DateTime NextDue { get; set; }
		public int Priority { get; set; }
	}
}

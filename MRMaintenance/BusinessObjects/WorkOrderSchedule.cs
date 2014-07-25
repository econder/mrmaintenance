/***************************************************************************************************
 * Class:   	WorkOrderSchedule.cs
 * Created By: 	Eric Conder
 * Created On: 	7/25/2014
 * 
 * Changes:
 * 
 *
 * *************************************************************************************************/
using System;

namespace MRMaintenance.BusinessObjects
{
	/// <summary>
	/// Description of WorkOrderSchedule.
	/// </summary>
	public class WorkOrderSchedule
	{
		public WorkOrderSchedule()
		{
		}
		
		
		//Properties
		public long ID { get; set; }
		public string Name { get; set; }
		public string Description { get; set; }
		public long EquipmentID { get; set; }
		public long DepartmentID { get; set; }
		public DateTime StartDate { get; set; }
		public int RecurrenceCount { get; set; }
		public int TimeFrequency { get; set; }
		public long TimeIntervalID { get; set; }
		public DateTime LastCompleted { get; set; }
	}
}

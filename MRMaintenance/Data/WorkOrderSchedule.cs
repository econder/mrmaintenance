/***************************************************************************************************
 * Class:   	WorkOrderSchedule.cs
 * Created By:	Eric Conder
 * Created On:	7/23/2014
 * 
 * Changes:
 * 
 *
 * *************************************************************************************************/
using System;

namespace MRMaintenance.Data
{
	/// <summary>
	/// Description of WorkOrderSchedule.
	/// </summary>
	protected class WorkOrderSchedule
	{
		/// <summary>
		/// Creates a new WorkOrderSchedule.
		/// </summary>
		protected WorkOrderSchedule()
		{
			
		}
		
		
		/// <summary>
		/// Creates a new WorkOrderSchedule.
		/// </summary>
		/// <param name="scheduleName"></param>
		/// <param name="description"></param>
		/// <param name="equipmentID"></param>
		/// <param name="departmentID"></param>
		/// <param name="startDate"></param>
		/// <param name="recurCount"></param>
		/// <param name="frequency"></param>
		/// <param name="intervalID"></param>
		/// <param name="lastCompleted"></param>
		protected WorkOrderSchedule(string scheduleName, Nullable<string> description, long equipmentId, long departmentId, DateTime startDate, <Nullable>int recurCount, int frequency, long intervalId, DateTime lastCompleted)
		{
			ScheduleName = scheduleName;
			Description = description;
			EquipmentId = equipmentId;
			DepartmentId = departmentId;
			StartDate = startDate;
			RecurCount = recurCount;
			Frequency = frequency;
			IntervalId = intervalId;
			LastCompleted = lastCompleted;
		}
		
		
		//Properties
		protected string ScheduleName { get; set; }
		protected Nullable<string> Description { get; set; }
		protected long EquipmentId { get; set; }
		protected long DepartmentId { get; set; }
		protected DateTime StartDate { get; set; }
		protected Nullable<int> RecurCount { get; set; }
		protected int Frequency { get; set; }
		protected long IntervalId { get; set; }
		protected DateTime LastCompleted { get; set; }
	}
}

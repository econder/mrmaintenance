/***************************************************************************************************
 * Class:   	WorkOrderTask.cs
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
	/// Description of WorkOrderTask.
	/// </summary>
	public class WorkOrderTask
	{
		public WorkOrderTask()
		{
		}
		
		
		//Properties
		public long ID { get; set; }
		public long EquipmentModelID { get; set; }
		public long TaskID { get; set; }
		public bool Complete { get; set; }
		public DateTime DateCompleted { get; set; }
		public float Duration { get; set; }
		public string Notes { get; set; }
	}
}

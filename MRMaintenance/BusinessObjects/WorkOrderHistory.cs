/***************************************************************************************************
 * Class:   	WorkOrderHistory.cs
 * Created By: 	Eric Conder
 * Created On: 	8/4/2014
 * 
 * Changes:
 * 
 *
 * *************************************************************************************************/
using System;


namespace MRMaintenance.BusinessObjects
{
	/// <summary>
	/// Description of WorkOrderHistory.
	/// </summary>
	public class WorkOrderHistory
	{
		public WorkOrderHistory()
		{
		}
		
		
		//Properties
		public long ID { get; set; }
		public long ScheduleID { get; set; }
		public DateTime Date { get; set; }
	}
}

/***************************************************************************************************
 * Class:   	WorkOrder.cs
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
	/// Description of WorkOrder.
	/// </summary>
	public class WorkOrder
	{
		public WorkOrder()
		{
		}
		
		
		//Properties
		public long ID { get; set; }
		public long RequestID { get; set; }
		public DateTime DateCreated { get; set; }
		public DateTime DateDue { get; set; }
		public string Notes { get; set; }
		public bool Complete { get; set; }
		public DateTime DateCompleted { get; set; }
	}
}

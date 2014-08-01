/***************************************************************************************************
 * Class:   	WorkOrderView.cs
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
	/// Description of WorkOrder.
	/// </summary>
	[System.ComponentModel.DataObject]
	public class WorkOrderView
	{
		public WorkOrderView()
		{
		}
		
		
		//Properties
		public long ID { get; set; }
		public string Name { get; set; }
		public string Description { get; set; }
		public DateTime StartDate { get; set; }
		public int Frequency { get; set; }
		public string Interval { get; set; }
		public DateTime NextDue { get; set; }
		public string Department { get; set; }
		public string Equipment { get; set; }
		public string Location { get; set; }
		public float Runtime { get; set; }
		public long Cycles { get; set; }
	}
}

/***************************************************************************************************
 * Class:   	TaskPart.cs
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
	/// Description of TaskPart.
	/// </summary>
	public class TaskPart
	{
		public TaskPart()
		{
		}
		
		
		//Properties
		public long ID { get; set; }
		public long TaskID { get; set; }
		public long PartID { get; set; }
	}
}

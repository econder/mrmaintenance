/***************************************************************************************************
 * Class:   	Task.cs
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
	/// Description of Task.
	/// </summary>
	public class Task
	{
		public Task()
		{
		}
		
		
		//Properties
		public long ID { get; set; }
		public string Name { get; set; }
		public string Description { get; set; }
		public float EstimatedDuration { get; set; }
		public bool ShutdownRequired { get; set; }
	}
}

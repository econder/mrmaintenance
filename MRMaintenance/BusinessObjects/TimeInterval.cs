/***************************************************************************************************
 * Class:   	TimeInterval.cs
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
	/// Description of TimeInterval.
	/// </summary>
	[System.ComponentModel.DataObject]
	public class TimeInterval
	{
		public TimeInterval()
		{
		}
		
		
		//Properties
		public long ID { get; set; }
		public string Name { get; set; }
		public string Abbreviation { get; set; }
	}
}

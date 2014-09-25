using System;

namespace MRMaintenance.Scheduler
{
	/// <summary>
	/// Description of SchedulerException.
	/// </summary>
	public class SchedulerException : Exception
	{
		public SchedulerException(string msg) : base(msg)
		{
		}
	}
}

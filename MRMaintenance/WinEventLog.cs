/***************************************************************************************************
 * Class:    	MREventLog.cs
 * Created By:  Eric Conder
 * Created On:  2014-01-10
 * 
 * Changes:
 * 
 * 2014-02-28	Added documentation to the class constructor, properties, functions, & methods.
 *
 * 2014-04-01	Changed namespace from MRPlatform2014.Event to MRPlatform2014.AlarmEvent
 * 
 * 2014-07-01	Modified log message output to include timestamp, message, source, stacktrace, & 
 * 				targetsite.
 * 
 * 
 * *************************************************************************************************/
using System;
using System.Diagnostics;
using System.IO;
using System.Reflection;


namespace MRMaintenance
{
	/// <summary>
	/// MRPlatform2014.AlarmEvent.WinEventLog class.
	/// </summary>
	public class WinEventLog
	{
		/// <summary>
		/// Initializes an instance of WinEventLog
		/// </summary>
		public WinEventLog()
		{
			//EventSourceCreationData escd = new EventSourceCreationData("MRPlatform2014", "MRPlatform");
			//EventLog.CreateEventSource(escd);
		}
		
		private const string APPSOURCE = "MRMaintenance";
		private const string LOGDEST = "Application";
		
		
		/// <summary>
		/// Write event information to the log.
		/// </summary>
		/// <param name="e">Exception object.</param>
		public void WriteEvent(Exception e)
		{
			try
			{
				using(StreamWriter writer = new StreamWriter("MRMaintenance.txt", true))
				{
					string msg = string.Format("{0}\r\nMessage:\t{1}\r\nSource:\t\t{2}\r\nStackTrace:\t{3}\r\nTargetSite:\t{4}\r\n", DateTime.Now.ToString(), e.Message, e.Source, e.StackTrace, e.TargetSite);
					writer.WriteLine(msg);
				}
			}
			catch(Exception exc)
			{
				return;
			}
		}
	}
}

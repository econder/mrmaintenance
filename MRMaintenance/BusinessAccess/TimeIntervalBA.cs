/***************************************************************************************************
 * Class:   	TimeIntervalBA.cs
 * Created By: 	Eric Conder
 * Created On: 	7/24/2014
 * 
 * Changes:
 * 
 *
 * *************************************************************************************************/
using System;
using System.Data;

using MRMaintenance.BusinessObjects;
using MRMaintenance.Data;

namespace MRMaintenance.BusinessAccess
{
	/// <summary>
	/// Description of TimeIntervalBA.
	/// </summary>
	public class TimeIntervalBA
	{
		public TimeIntervalBA()
		{
		}
		
		
		public DataTable Load()
		{
			TimeIntervalDA da = new TimeIntervalDA();
			
			try
			{
				return da.Load();
			}
			catch
			{
				throw;
			}
			finally
			{
				da = null;
			}
		}
	}
}

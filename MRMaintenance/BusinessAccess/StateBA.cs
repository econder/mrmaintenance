/***************************************************************************************************
 * Class:   	StateBA.cs
 * Created By: 	Eric Conder
 * Created On: 	7/25/2014
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
	/// Description of StatesBA.
	/// </summary>
	public class StateBA
	{
		public StateBA()
		{
		}
		
		
		public DataTable Load()
		{

			StateDA da = new StateDA();
			
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

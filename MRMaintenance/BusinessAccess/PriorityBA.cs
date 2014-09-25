/***************************************************************************************************
 * Class:   	PriorityBA.cs
 * Created By: 	Eric Conder
 * Created On: 	8/13/2014
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
	/// Description of PrioritysBA.
	/// </summary>
	public class PriorityBA
	{
		public PriorityBA()
		{
		}
		
		
		public DataTable Load()
		{

			PriorityDA da = new PriorityDA();
			
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

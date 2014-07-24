/***************************************************************************************************
 * Class:   	WorkOrderViewBA.cs
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
	/// Description of WorkOrderViewBA.
	/// </summary>
	public class WorkOrderViewBA
	{
		public WorkOrderViewBA()
		{
		}
		
		
		public DataTable Load(int dueDateDeadband)
		{
			WorkOrderViewDA da = new WorkOrderViewDA();
			
			try
			{
				return da.Load(dueDateDeadband);
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
		
		
		public DataTable LoadByFacility(long facilityId, int dueDateDeadband)
		{
			WorkOrderViewDA da = new WorkOrderViewDA();
			
			try
			{
				return da.LoadByFacility(facilityId, dueDateDeadband);
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

/***************************************************************************************************
 * Class:   	WorkOrderHistoryBA.cs
 * Created By: 	Eric Conder
 * Created On: 	8/4/2014
 * 
 * Changes:
 * 
 *
 * *************************************************************************************************/
using System;
using System.Data;

using MRMaintenance.BusinessAccess;
using MRMaintenance.BusinessObjects;
using MRMaintenance.Data;


namespace MRMaintenance.BusinessAccess
{
	/// <summary>
	/// Description of WorkOrderHistoryBA.
	/// </summary>
	public class WorkOrderHistoryBA
	{
		public WorkOrderHistoryBA()
		{
		}
		
		
		public DataTable Load()
		{

			WorkOrderHistoryDA da = new WorkOrderHistoryDA();
			
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
		
		
		public int Insert(WorkOrderHistory workOrderHistory)
		{
			WorkOrderHistoryDA da = new WorkOrderHistoryDA();
			
			try
			{
				return da.Insert(workOrderHistory);
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
		
		
		public int Update(WorkOrderHistory workOrderHistory)
		{
			WorkOrderHistoryDA da = new WorkOrderHistoryDA();
			
			try
			{
				return da.Update(workOrderHistory);
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
		
		
		public int Delete(WorkOrderHistory workOrderHistory)
		{
			WorkOrderHistoryDA da = new WorkOrderHistoryDA();
			
			try
			{
				return da.Delete(workOrderHistory);
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

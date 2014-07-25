/***************************************************************************************************
 * Class:   	WorkOrderScheduleBA.cs
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
	/// Description of WorkOrderScheduleBA.
	/// </summary>
	public class WorkOrderScheduleBA
	{
		public WorkOrderScheduleBA()
		{
		}
		
		
		public DataTable Load()
		{

			WorkOrderScheduleDA da = new WorkOrderScheduleDA();
			
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
		
		
		public int Insert(WorkOrderSchedule workOrderSchedule)
		{
			WorkOrderScheduleDA da = new WorkOrderScheduleDA();
			
			try
			{
				return da.Insert(workOrderSchedule);
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
		
		
		public int Update(WorkOrderSchedule workOrderSchedule)
		{
			WorkOrderScheduleDA da = new WorkOrderScheduleDA();
			
			try
			{
				return da.Update(workOrderSchedule);
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
		
		
		public int Delete(WorkOrderSchedule workOrderSchedule)
		{
			WorkOrderScheduleDA da = new WorkOrderScheduleDA();
			
			try
			{
				return da.Delete(workOrderSchedule);
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

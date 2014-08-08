/***************************************************************************************************
 * Class:   	WorkOrderTaskBA.cs
 * Created By: 	Eric Conder
 * Created On: 	8/7/2014
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
	/// Description of WorkOrderTaskBA.
	/// </summary>
	public class WorkOrderTaskBA
	{
		public WorkOrderTaskBA()
		{
		}
		
		
		public DataTable Load()
		{

			WorkOrderTaskDA da = new WorkOrderTaskDA();
			
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
		
		
		public int Insert(WorkOrderTask workOrderTask)
		{
			WorkOrderTaskDA da = new WorkOrderTaskDA();
			
			try
			{
				return da.Insert(workOrderTask);
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
		
		
		public int Update(WorkOrderTask workOrderTask)
		{
			WorkOrderTaskDA da = new WorkOrderTaskDA();
			
			try
			{
				return da.Update(workOrderTask);
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
		
		
		public int Delete(WorkOrderTask workOrderTask)
		{
			WorkOrderTaskDA da = new WorkOrderTaskDA();
			
			try
			{
				return da.Delete(workOrderTask);
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

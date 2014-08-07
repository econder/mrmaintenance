/***************************************************************************************************
 * Class:   	WorkOrderRequestBA.cs
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
	/// Description of WorkOrderRequestBA.
	/// </summary>
	public class WorkOrderRequestBA
	{
		public WorkOrderRequestBA()
		{
		}
		
		
		public DataTable Load()
		{

			WorkOrderRequestDA da = new WorkOrderRequestDA();
			
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
		
		
		public int Insert(WorkOrderRequest workOrderRequest)
		{
			WorkOrderRequestDA da = new WorkOrderRequestDA();
			
			try
			{
				return da.Insert(workOrderRequest);
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
		
		
		public int Update(WorkOrderRequest workOrderRequest)
		{
			WorkOrderRequestDA da = new WorkOrderRequestDA();
			
			try
			{
				return da.Update(workOrderRequest);
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
		
		
		public int Delete(WorkOrderRequest workOrderRequest)
		{
			WorkOrderRequestDA da = new WorkOrderRequestDA();
			
			try
			{
				return da.Delete(workOrderRequest);
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

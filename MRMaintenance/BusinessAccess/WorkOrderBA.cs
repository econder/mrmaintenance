/***************************************************************************************************
 * Class:   	WorkOrderBA.cs
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
	/// Description of WorkOrderBA.
	/// </summary>
	public class WorkOrderBA
	{
		public WorkOrderBA()
		{
		}
		
		
		public DataTable Load()
		{

			WorkOrderDA da = new WorkOrderDA();
			
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
		
		
		public DataTable LoadByFacility(Facility facility)
		{

			WorkOrderDA da = new WorkOrderDA();
			
			try
			{
				return da.LoadByFacility(facility);
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
		
		
		public DataTable LoadOpenByFacility(Facility facility)
		{

			WorkOrderDA da = new WorkOrderDA();
			
			try
			{
				return da.LoadOpenByFacility(facility);
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
		
		
		public DataTable LoadOpenByFacilityBrief(Facility facility)
		{

			WorkOrderDA da = new WorkOrderDA();
			
			try
			{
				return da.LoadOpenByFacilityBrief(facility);
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
		
		
		public int Insert(WorkOrder workOrder)
		{
			WorkOrderDA da = new WorkOrderDA();
			
			try
			{
				return da.Insert(workOrder);
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
		
		
		public int Update(WorkOrder workOrder)
		{
			WorkOrderDA da = new WorkOrderDA();
			
			try
			{
				return da.Update(workOrder);
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
		
		
		public int Delete(WorkOrder workOrder)
		{
			WorkOrderDA da = new WorkOrderDA();
			
			try
			{
				return da.Delete(workOrder);
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
		
		
		public int MarkComplete(WorkOrder workOrder)
		{
			WorkOrderDA da = new WorkOrderDA();
			
			try
			{
				return da.MarkComplete(workOrder);
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

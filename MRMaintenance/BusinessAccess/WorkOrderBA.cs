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
		
		
		public DataTable LoadByFacility(long facilityId)
		{

			WorkOrderDA da = new WorkOrderDA();
			
			try
			{
				return da.LoadByFacility(facilityId);
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
				return da.LoadByFacility(facility.ID);
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
		
		
		public DataTable LoadByEquipment(long equipmentId)
		{

			WorkOrderDA da = new WorkOrderDA();
			
			try
			{
				return da.LoadByEquipment(equipmentId);
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
		
		
		public DataTable LoadByEquipment(Equipment equipment)
		{

			WorkOrderDA da = new WorkOrderDA();
			
			try
			{
				return da.LoadByEquipment(equipment);
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
		
		
		public int MarkComplete(long workOrderId)
		{
			WorkOrderDA da = new WorkOrderDA();
			
			try
			{
				return da.MarkComplete(workOrderId);
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

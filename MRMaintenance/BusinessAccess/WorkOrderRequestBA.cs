/***************************************************************************************************
 * Class:   	WorkOrderRequestBA.cs
 * Created By: 	Eric Conder
 * Created On: 	8/6/2014
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
		
		
		public DataTable LoadByFacility(Facility facility, int dueDateDeadband)
		{
			WorkOrderRequestDA da = new WorkOrderRequestDA();
			
			try
			{
				return da.LoadByFacility(facility, dueDateDeadband);
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
		
		
		public DataTable LoadByFacilityBrief(Facility facility, int dueDateDeadband)
		{
			WorkOrderRequestDA da = new WorkOrderRequestDA();
			
			try
			{
				return da.LoadByFacilityBrief(facility, dueDateDeadband);
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
		
		
		public DataTable LoadByEquipment(Equipment equipment, int dueDateDeadband)
		{
			WorkOrderRequestDA da = new WorkOrderRequestDA();
			
			try
			{
				return da.LoadByEquipment(equipment, dueDateDeadband);
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
		
		
		public int CreateWorkOrder(WorkOrderRequest workOrderRequest)
		{
			WorkOrderRequestDA da = new WorkOrderRequestDA();
			
			try
			{
				if(da.OpenWorkOrdersCount(workOrderRequest) == 0)
				{
					return da.CreateWorkOrder(workOrderRequest);
				}
				else
				{
					//A work order already exists, so return -1
					return -1;
				}
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

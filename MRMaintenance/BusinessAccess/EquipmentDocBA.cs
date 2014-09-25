/***************************************************************************************************
 * Class:   	EquipmentDocBA.cs
 * Created By: 	Eric Conder
 * Created On: 	7/31/2014
 * 
 * Changes:
 * 
 *
 * *************************************************************************************************/
using System;
using System.Data;

using MRMaintenance.Data;
using MRMaintenance.BusinessObjects;


namespace MRMaintenance.BusinessAccess
{
	/// <summary>
	/// Description of EquipmentDocBA.
	/// </summary>
	public class EquipmentDocBA
	{
		public EquipmentDocBA()
		{
		}
		
		
		public DataTable Load()
		{
			EquipmentDocDA da = new EquipmentDocDA();
			
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
		
		
		public DataTable LoadByEquipment(long equipmentId)
		{
			EquipmentDocDA da = new EquipmentDocDA();
			
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
			EquipmentDocDA da = new EquipmentDocDA();
			
			try
			{
				return da.LoadByEquipment(equipment.ID);
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
		
		
		public string GetLink(EquipmentDoc equipmentDoc)
		{
			EquipmentDocDA da = new EquipmentDocDA();
			try
			{
				return da.GetLink(equipmentDoc);
			}
			catch
			{
				throw;
			}
		}
		
		
		public int Insert(EquipmentDoc equipmentDoc)
		{
			EquipmentDocDA da = new EquipmentDocDA();
			
			try
			{
				return da.Insert(equipmentDoc);
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
		
		
		public int Update(EquipmentDoc equipmentDoc)
		{
			EquipmentDocDA da = new EquipmentDocDA();
			
			try
			{
				return da.Update(equipmentDoc);
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
		
		
		public int Delete(EquipmentDoc equipmentDoc)
		{
			EquipmentDocDA da = new EquipmentDocDA();
			
			try
			{
				return da.Delete(equipmentDoc);
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

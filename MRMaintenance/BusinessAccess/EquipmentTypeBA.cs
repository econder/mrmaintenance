/***************************************************************************************************
 * Class:   	EquipmentTypeBA.cs
 * Created By: 	Eric Conder
 * Created On: 	7/24/2014
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
	/// Description of EquipmentTypeBA.
	/// </summary>
	public class EquipmentTypeBA
	{
		public EquipmentTypeBA()
		{
		}
		
		
		public DataTable Load()
		{
			EquipmentTypeDA da = new EquipmentTypeDA();
			
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
		
		
		public int Insert(EquipmentType equipmentType)
		{
			EquipmentTypeDA da = new EquipmentTypeDA();
			
			try
			{
				return da.Insert(equipmentType);
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
		
		
		public int Update(EquipmentType equipmentType)
		{
			EquipmentTypeDA da = new EquipmentTypeDA();
			
			try
			{
				return da.Update(equipmentType);
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
		
		
		public int Delete(EquipmentType equipmentType)
		{
			EquipmentTypeDA da = new EquipmentTypeDA();
			
			try
			{
				return da.Delete(equipmentType);
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

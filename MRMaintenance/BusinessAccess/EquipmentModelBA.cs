/***************************************************************************************************
 * Class:   	EquipmentModelBA.cs
 * Created By: 	Eric Conder
 * Created On: 	8/7/2014
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
	/// Description of EquipmentModelBA.
	/// </summary>
	public class EquipmentModelBA
	{
		public EquipmentModelBA()
		{
		}
		
		
		public DataTable Load()
		{
			EquipmentModelDA da = new EquipmentModelDA();
			
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
		
		
		public int Insert(EquipmentModel equipmentModel)
		{
			EquipmentModelDA da = new EquipmentModelDA();
			
			try
			{
				return da.Insert(equipmentModel);
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
		
		
		public int Update(EquipmentModel equipmentModel)
		{
			EquipmentModelDA da = new EquipmentModelDA();
			
			try
			{
				return da.Update(equipmentModel);
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
		
		
		public int Delete(EquipmentModel equipmentModel)
		{
			EquipmentModelDA da = new EquipmentModelDA();
			
			try
			{
				return da.Delete(equipmentModel);
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

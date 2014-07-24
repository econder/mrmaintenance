/***************************************************************************************************
 * Class:   	EquipmentBA.cs
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
	/// Description of EquipmentBA.
	/// </summary>
	public class EquipmentBA
	{
		public EquipmentBA()
		{
		}
		
		
		public DataTable Load()
		{
			EquipmentDA da = new EquipmentDA();
			
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
		
		
		public int Insert(Equipment equipment)
		{
			EquipmentDA da = new EquipmentDA();
			
			try
			{
				return da.Insert(equipment);
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
		
		
		public int Update(Equipment equipment)
		{
			EquipmentDA da = new EquipmentDA();
			
			try
			{
				return da.Update(equipment);
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
		
		
		public int Delete(Equipment equipment)
		{
			EquipmentDA da = new EquipmentDA();
			
			try
			{
				return da.Delete(equipment);
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

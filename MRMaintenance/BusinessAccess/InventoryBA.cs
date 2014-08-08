/***************************************************************************************************
 * Class:   	InventoryBA.cs
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
	/// Description of InventoryBA.
	/// </summary>
	public class InventoryBA
	{
		public InventoryBA()
		{
		}
		
		
		public DataTable Load()
		{
			InventoryDA da = new InventoryDA();
			
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
		
		
		public int Insert(Inventory inventory)
		{
			InventoryDA da = new InventoryDA();
			
			try
			{
				return da.Insert(inventory);
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
		
		
		public int Update(Inventory inventory)
		{
			InventoryDA da = new InventoryDA();
			
			try
			{
				return da.Update(inventory);
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
		
		
		public int Delete(Inventory inventory)
		{
			InventoryDA da = new InventoryDA();
			
			try
			{
				return da.Delete(inventory);
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

/***************************************************************************************************
 * Class:   	InventoryLocationBA.cs
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
	/// Description of InventoryLocationBA.
	/// </summary>
	public class InventoryLocationBA
	{
		public InventoryLocationBA()
		{
		}
		
		
		public DataTable Load()
		{
			InventoryLocationDA da = new InventoryLocationDA();
			
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
		
		
		public int Insert(InventoryLocation inventoryLocation)
		{
			InventoryLocationDA da = new InventoryLocationDA();
			
			try
			{
				return da.Insert(inventoryLocation);
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
		
		
		public int Update(InventoryLocation inventoryLocation)
		{
			InventoryLocationDA da = new InventoryLocationDA();
			
			try
			{
				return da.Update(inventoryLocation);
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
		
		
		public int Delete(InventoryLocation inventoryLocation)
		{
			InventoryLocationDA da = new InventoryLocationDA();
			
			try
			{
				return da.Delete(inventoryLocation);
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

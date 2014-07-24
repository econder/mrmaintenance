/***************************************************************************************************
 * Class:   	ManufacturerBA.cs
 * Created By: 	Eric Conder
 * Created On: 	7/24/2014
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
	/// Description of ManufacturerBA.
	/// </summary>
	public class ManufacturerBA
	{
		public ManufacturerBA()
		{
		}
		
		
		public DataTable Load()
		{

			ManufacturerDA da = new ManufacturerDA();
			
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
		
		
		public int Insert(Manufacturer manufacturer)
		{
			ManufacturerDA da = new ManufacturerDA();
			
			try
			{
				return da.Insert(manufacturer);
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
		
		
		public int Update(Manufacturer manufacturer)
		{
			ManufacturerDA da = new ManufacturerDA();
			
			try
			{
				return da.Update(manufacturer);
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
		
		
		public int Delete(Manufacturer manufacturer)
		{
			ManufacturerDA da = new ManufacturerDA();
			
			try
			{
				return da.Delete(manufacturer);
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

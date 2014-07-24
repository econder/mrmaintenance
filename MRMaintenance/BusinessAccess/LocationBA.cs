/***************************************************************************************************
 * Class:   	LocationBA.cs
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
	/// Description of LocationBA.
	/// </summary>
	public class LocationBA
	{
		public LocationBA()
		{
		}
		
		
		public DataTable Load()
		{

			LocationDA da = new LocationDA();
			
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

			LocationDA da = new LocationDA();
			
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
		
		
		public int Insert(Location location)
		{
			LocationDA da = new LocationDA();
			
			try
			{
				return da.Insert(location);
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
		
		
		public int Update(Location location)
		{
			LocationDA da = new LocationDA();
			
			try
			{
				return da.Update(location);
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
		
		
		public int Delete(Location location)
		{
			LocationDA da = new LocationDA();
			
			try
			{
				return da.Delete(location);
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

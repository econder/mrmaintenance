/***************************************************************************************************
 * Class:   	VendorBA.cs
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
	/// Description of VendorBA.
	/// </summary>
	public class VendorBA
	{
		public VendorBA()
		{
		}
		
		
		public DataTable Load()
		{

			VendorDA da = new VendorDA();
			
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
		
		
		public int Insert(Vendor vendor)
		{
			VendorDA da = new VendorDA();
			
			try
			{
				return da.Insert(vendor);
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
		
		
		public int Update(Vendor vendor)
		{
			VendorDA da = new VendorDA();
			
			try
			{
				return da.Update(vendor);
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
		
		
		public int Delete(Vendor vendor)
		{
			VendorDA da = new VendorDA();
			
			try
			{
				return da.Delete(vendor);
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

/***************************************************************************************************
 * Class:   	VendorContactBA.cs
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
	/// Description of VendorContactBA.
	/// </summary>
	public class VendorContactBA
	{
		public VendorContactBA()
		{
		}
		
		
		public DataTable Load()
		{

			VendorContactDA da = new VendorContactDA();
			
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
		
		
		public int Insert(VendorContact vendorContact)
		{
			VendorContactDA da = new VendorContactDA();
			
			try
			{
				return da.Insert(vendorContact);
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
		
		
		public int Update(VendorContact vendorContact)
		{
			VendorContactDA da = new VendorContactDA();
			
			try
			{
				return da.Update(vendorContact);
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
		
		
		public int Delete(VendorContact vendorContact)
		{
			VendorContactDA da = new VendorContactDA();
			
			try
			{
				return da.Delete(vendorContact);
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

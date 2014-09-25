/***************************************************************************************************
 * Class:   	FacilityBA.cs
 * Created By: 	Eric Conder
 * Created On: 	7/24/2014
 * 
 * Changes:
 * 
 *
 * *************************************************************************************************/
using System;
using System.Data;
using System.Diagnostics;

using MRMaintenance.BusinessObjects;
using MRMaintenance.Data;


namespace MRMaintenance.BusinessAccess
{
	/// <summary>
	/// Description of FacilityBA.
	/// </summary>
	public class FacilityBA
	{
		public FacilityBA()
		{
		}
		
		
		public DataTable Load()
		{

			FacilityDA da = new FacilityDA();
			
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
		
		
		public int Insert(Facility facility)
		{
			FacilityDA da = new FacilityDA();
			
			try
			{
				return da.Insert(facility);
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
		
		
		public int Update(Facility facility)
		{
			FacilityDA da = new FacilityDA();
			
			try
			{
				return da.Update(facility);
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
		
		
		public int Delete(Facility facility)
		{
			FacilityDA da = new FacilityDA();
			
			try
			{
				return da.Delete(facility);
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

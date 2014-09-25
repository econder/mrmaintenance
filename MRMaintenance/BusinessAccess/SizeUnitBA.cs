/***************************************************************************************************
 * Class:   	SizeUnitBA.cs
 * Created By: 	Eric Conder
 * Created On: 	8/7/2014
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
	/// Description of SizeUnitBA.
	/// </summary>
	public class SizeUnitBA
	{
		public SizeUnitBA()
		{
		}
		
		
		public DataTable Load()
		{

			SizeUnitDA da = new SizeUnitDA();
			
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
		
		
		public int Insert(SizeUnit sizeUnit)
		{
			SizeUnitDA da = new SizeUnitDA();
			
			try
			{
				return da.Insert(sizeUnit);
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
		
		
		public int Update(SizeUnit sizeUnit)
		{
			SizeUnitDA da = new SizeUnitDA();
			
			try
			{
				return da.Update(sizeUnit);
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
		
		
		public int Delete(SizeUnit sizeUnit)
		{
			SizeUnitDA da = new SizeUnitDA();
			
			try
			{
				return da.Delete(sizeUnit);
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

/***************************************************************************************************
 * Class:   	UnitBA.cs
 * Created By: 	Eric Conder
 * Created On: 	8/15/2014
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
	/// Description of UnitBA.
	/// </summary>
	public class UnitBA
	{
		public UnitBA()
		{
		}
		
		
		public DataTable Load()
		{

			UnitDA da = new UnitDA();
			
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
		
		
		public int Insert(Unit unit)
		{
			UnitDA da = new UnitDA();
			
			try
			{
				return da.Insert(unit);
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
		
		
		public int Update(Unit unit)
		{
			UnitDA da = new UnitDA();
			
			try
			{
				return da.Update(unit);
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
		
		
		public int Delete(Unit unit)
		{
			UnitDA da = new UnitDA();
			
			try
			{
				return da.Delete(unit);
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

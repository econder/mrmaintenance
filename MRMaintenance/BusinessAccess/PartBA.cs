/***************************************************************************************************
 * Class:   	PartBA.cs
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
	/// Description of PartBA.
	/// </summary>
	public class PartBA
	{
		public PartBA()
		{
		}
		
		
		public DataTable Load()
		{

			PartDA da = new PartDA();
			
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
		
		
		public int Insert(Part part)
		{
			PartDA da = new PartDA();
			
			try
			{
				return da.Insert(part);
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
		
		
		public int Update(Part part)
		{
			PartDA da = new PartDA();
			
			try
			{
				return da.Update(part);
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
		
		
		public int Delete(Part part)
		{
			PartDA da = new PartDA();
			
			try
			{
				return da.Delete(part);
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

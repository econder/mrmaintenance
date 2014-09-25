/***************************************************************************************************
 * Class:   	DepartmentBA.cs
 * Created By: 	Eric Conder
 * Created On: 	7/24/2014
 * 
 * Changes:
 * 
 *
 * *************************************************************************************************/
using System;
using System.Data;
using MRMaintenance.BusinessAccess;
using MRMaintenance.BusinessObjects;
using MRMaintenance.Data;

namespace MRMaintenance.BusinessAccess
{
	/// <summary>
	/// Description of DepartmentBA.
	/// </summary>
	public class DepartmentBA
	{
		public DepartmentBA()
		{
		}
		
		
		public DataTable Load()
		{
			DepartmentDA da = new DepartmentDA();
			
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
		
		
		public int Insert(Department department)
		{
			DepartmentDA da = new DepartmentDA();
			
			try
			{
				return da.Insert(department);
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
		
		
		public int Update(Department department)
		{
			DepartmentDA da = new DepartmentDA();
			
			try
			{
				return da.Update(department);
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
		
		
		public int Delete(Department department)
		{
			DepartmentDA da = new DepartmentDA();
			
			try
			{
				return da.Delete(department);
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

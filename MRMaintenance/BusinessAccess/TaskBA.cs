/***************************************************************************************************
 * Class:   	TaskBA.cs
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
	/// Description of TaskBA.
	/// </summary>
	public class TaskBA
	{
		public TaskBA()
		{
		}
		
		
		public DataTable Load()
		{

			TaskDA da = new TaskDA();
			
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
		
		
		public int Insert(Task task)
		{
			TaskDA da = new TaskDA();
			
			try
			{
				return da.Insert(task);
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
		
		
		public int Update(Task task)
		{
			TaskDA da = new TaskDA();
			
			try
			{
				return da.Update(task);
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
		
		
		public int Delete(Task task)
		{
			TaskDA da = new TaskDA();
			
			try
			{
				return da.Delete(task);
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

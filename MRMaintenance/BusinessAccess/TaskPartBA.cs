/***************************************************************************************************
 * Class:   	TaskPartBA.cs
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
	/// Description of TaskPartBA.
	/// </summary>
	public class TaskPartBA
	{
		public TaskPartBA()
		{
		}
		
		
		public DataTable Load()
		{

			TaskPartDA da = new TaskPartDA();
			
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
		
		
		public int Insert(TaskPart taskPart)
		{
			TaskPartDA da = new TaskPartDA();
			
			try
			{
				return da.Insert(taskPart);
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
		
		
		public int Update(TaskPart taskPart)
		{
			TaskPartDA da = new TaskPartDA();
			
			try
			{
				return da.Update(taskPart);
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
		
		
		public int Delete(TaskPart taskPart)
		{
			TaskPartDA da = new TaskPartDA();
			
			try
			{
				return da.Delete(taskPart);
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

/***************************************************************************************************
 * Class:   	ToolBA.cs
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
	/// Description of ToolBA.
	/// </summary>
	public class ToolBA
	{
		public ToolBA()
		{
		}
		
		
		public DataTable Load()
		{

			ToolDA da = new ToolDA();
			
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
		
		
		public int Insert(Tool tool)
		{
			ToolDA da = new ToolDA();
			
			try
			{
				return da.Insert(tool);
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
		
		
		public int Update(Tool tool)
		{
			ToolDA da = new ToolDA();
			
			try
			{
				return da.Update(tool);
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
		
		
		public int Delete(Tool tool)
		{
			ToolDA da = new ToolDA();
			
			try
			{
				return da.Delete(tool);
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

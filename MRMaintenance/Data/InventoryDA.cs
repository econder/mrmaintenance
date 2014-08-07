/***************************************************************************************************
 * Class:   	InventoryDA.cs
 * Created By: 	Eric Conder
 * Created On: 	8/6/2014
 * 
 * Changes:
 * 
 *
 * *************************************************************************************************/
using System;

namespace MRMaintenance.Data
{
	/// <summary>
	/// Description of InventoryDA.
	/// </summary>
	public class InventoryDA
	{
		private string connStr;
		
		
		public InventoryDA()
		{
			connStr = ConfigurationManager.ConnectionStrings["MRMaintenanceSQL"].ConnectionString;
		}
		
		
		
	}
}

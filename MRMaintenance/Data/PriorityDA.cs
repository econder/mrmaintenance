/***************************************************************************************************
 * Class:   	PriorityDA.cs
 * Created By: 	Eric Conder
 * Created On: 	8/13/2014
 * 
 * Changes:
 * 
 *
 * *************************************************************************************************/
using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

using MRMaintenance.BusinessObjects;


namespace MRMaintenance.Data
{
	/// <summary>
	/// Description of PriorityDA.
	/// </summary>
	public class PriorityDA
	{
		private string connStr;
		
		
		public PriorityDA()
		{
			connStr = ConfigurationManager.ConnectionStrings["MRMaintenance.Properties.Settings.MRMaintenanceSql"].ConnectionString;
		}
		
		
		public DataTable Load()
		{
			using(SqlConnection dbConn = new SqlConnection(connStr))
			{
				dbConn.Open();
				SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM Priorities ORDER BY priorityId", dbConn);
				
				DataTable dt = new DataTable("Priorities");
				
				try
				{
					da.Fill(dt);
					return dt;
				}
				catch
				{
					throw;
				}
				finally
				{
					dt.Dispose();
					da.Dispose();
					dbConn.Close();
					dbConn.Dispose();
				}
			}
		}
	}
}

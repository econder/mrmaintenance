/***************************************************************************************************
 * Class:   	TimeIntervalDA.cs
 * Created By: 	Eric Conder
 * Created On: 	7/24/2014
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
	/// Description of TimeIntervalDA.
	/// </summary>
	public class TimeIntervalDA
	{
		private string connStr;
		
		public TimeIntervalDA()
		{
			ConnectionStringSettingsCollection arConnStr = ConfigurationManager.ConnectionStrings;
			
			if(arConnStr != null)
			{
				connStr = arConnStr["MRMaintenanceSQL"].ToString();
			}
		}
		
		
		public DataTable Load()
		{
			using(SqlConnection dbConn = new SqlConnection(connStr))
			{
				dbConn.Open();
				SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM TimeIntervals ORDER BY orderCode", dbConn);
				
				DataTable dt = new DataTable("TimeIntervals");
				
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

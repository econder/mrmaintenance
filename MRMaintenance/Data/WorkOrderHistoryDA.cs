/***************************************************************************************************
 * Class:   	WorkOrderHistoryDA.cs
 * Created By: 	Eric Conder
 * Created On: 	8/4/2014
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
	/// Description of WorkOrderHistoryDA.
	/// </summary>
	public class WorkOrderHistoryDA
	{
		private string connStr;
		
		public WorkOrderHistoryDA()
		{
			connStr = ConfigurationManager.ConnectionStrings["MRMaintenanceSQL"].ConnectionString;
		}
		
		
		public DataTable Load()
		{
			using(SqlConnection dbConn = new SqlConnection(connStr))
			{
				dbConn.Open();
				SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM WOHistory ORDER BY woHistDateTime", dbConn);
				
				DataTable dt = new DataTable("WorkOrderHistory");
				
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
		
		
		public int Insert(WorkOrderHistory workOrderHistory)
		{
			using(SqlConnection dbConn = new SqlConnection(connStr))
			{
				dbConn.Open();
				SqlCommand cmd = new SqlCommand("INSERT INTO WOHistory(woSchedId, woHistDateTime) VALUES(@woSchedId, @woHistDateTime)", dbConn);
				
				try
				{
					cmd.Parameters.AddWithValue("@woSchedId", workOrderHistory.ScheduleID);
					cmd.Parameters.AddWithValue("@woHistDateTime", workOrderHistory.Date);
					
					return cmd.ExecuteNonQuery();
				}
				catch
				{
					throw;
				}
				finally
				{
					cmd.Dispose();
					dbConn.Close();
					dbConn.Dispose();
				}
			}
		}
		
		
		public int Update(WorkOrderHistory workOrderHistory)
		{
			using(SqlConnection dbConn = new SqlConnection(connStr))
			{
				dbConn.Open();
				SqlCommand cmd = new SqlCommand("UPDATE WOHistory SET woSchedId=@woSchedId, woHistDateTime=@woHistDateTime" +
				                                " WHERE woHistId=@woHistId", dbConn);
				
				try
				{
					cmd.Parameters.AddWithValue("@woHistId", workOrderHistory.ID);
					cmd.Parameters.AddWithValue("@woSchedId", workOrderHistory.ScheduleID);
					cmd.Parameters.AddWithValue("@woHistDateTime", workOrderHistory.Date);
					
					return cmd.ExecuteNonQuery();
				}
				catch
				{
					throw;
				}
				finally
				{
					cmd.Dispose();
					dbConn.Close();
					dbConn.Dispose();
				}
			}
		}
		
		
		public int Delete(WorkOrderHistory workOrderHistory)
		{
			using(SqlConnection dbConn = new SqlConnection(connStr))
			{
				dbConn.Open();
				SqlCommand cmd = new SqlCommand("DELETE FROM WOHistory WHERE woHistId=@woHistId", dbConn);
				
				try
				{
					cmd.Parameters.AddWithValue("@woHistId", workOrderHistory.ID);
					
					return cmd.ExecuteNonQuery();
				}
				catch
				{
					throw;
				}
				finally
				{
					cmd.Dispose();
					dbConn.Close();
					dbConn.Dispose();
				}
			}
		}
	}
}

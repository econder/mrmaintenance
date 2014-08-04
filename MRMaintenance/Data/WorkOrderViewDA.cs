/***************************************************************************************************
 * Class:   	WorkOrderViewDA.cs
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
	/// Description of WorkOrderViewDA.
	/// </summary>
	public class WorkOrderViewDA
	{
		private string connStr;
		
		public WorkOrderViewDA()
		{
			connStr = ConfigurationManager.ConnectionStrings["MRMaintenanceSQL"].ConnectionString;
		}
		
		
		public DataTable Load(int dueDateDeadband)
		{
			using(SqlConnection dbConn = new SqlConnection(connStr))
			{
				dbConn.Open();
				SqlCommand cmd = new SqlCommand("spWorkOrdersDue", dbConn);
				
				cmd.Parameters.AddWithValue("@dueDateDeadband", dueDateDeadband);
				
				cmd.CommandType = CommandType.StoredProcedure;
				
				SqlDataAdapter da = new SqlDataAdapter(cmd);
				DataTable dt = new DataTable("WorkOrdersDue");
				
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
		
		
		public DataTable LoadByFacility(long facilityId, int dueDateDeadband)
		{
			using(SqlConnection dbConn = new SqlConnection(connStr))
			{
				dbConn.Open();
				SqlCommand cmd = new SqlCommand("spWorkOrdersDueByFacility", dbConn);
				
				cmd.Parameters.AddWithValue("@facilityId", facilityId);
				cmd.Parameters.AddWithValue("@dueDateDeadband", dueDateDeadband);
				cmd.CommandType = CommandType.StoredProcedure;
				
				SqlDataAdapter da = new SqlDataAdapter(cmd);
				DataTable dt = new DataTable("WorkOrdersDue");
				
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

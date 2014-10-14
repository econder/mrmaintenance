/***************************************************************************************************
 * Class:   	TaskPartDA.cs
 * Created By: 	Eric Conder
 * Created On: 	8/7/2014
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
	/// Description of TaskPartDA.
	/// </summary>
	public class TaskPartDA
	{
		private string connStr;
		
		
		public TaskPartDA()
		{
			connStr = ConfigurationManager.ConnectionStrings["MRMaintenance.Properties.Settings.MRMaintenanceSql"].ConnectionString;
		}
		
		
		public DataTable Load()
		{
			using(SqlConnection dbConn = new SqlConnection(connStr))
			{
				dbConn.Open();
				SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM TaskParts", dbConn);
				
				DataTable dt = new DataTable("TaskParts");
				
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
		
		
		public int Insert(TaskPart taskPart)
		{
			using(SqlConnection dbConn = new SqlConnection(connStr))
			{
				dbConn.Open();
				SqlCommand cmd = new SqlCommand("INSERT INTO TaskParts(taskId, partId)" +
				                                " VALUES(@taskId, @partId)", dbConn);
				
				try
				{
					cmd.Parameters.AddWithValue("@taskId", taskPart.TaskID);
					cmd.Parameters.AddWithValue("@partId", taskPart.PartID);
					
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
		
		
		public int Update(TaskPart taskPart)
		{
			using(SqlConnection dbConn = new SqlConnection(connStr))
			{
				dbConn.Open();
				SqlCommand cmd = new SqlCommand("UPDATE TaskParts SET taskId=@taskId, partId=@partId" +
				                                " WHERE woPartId=@woPartId", dbConn);
				
				try
				{
					cmd.Parameters.AddWithValue("@woPartId", taskPart.ID);
					cmd.Parameters.AddWithValue("@taskId", taskPart.TaskID);
					cmd.Parameters.AddWithValue("@partId", taskPart.PartID);
					
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
		
		
		public int Delete(TaskPart taskPart)
		{
			using(SqlConnection dbConn = new SqlConnection(connStr))
			{
				dbConn.Open();
				SqlCommand cmd = new SqlCommand("DELETE FROM TaskParts WHERE woPartId=@woPartId", dbConn);
				
				try
				{
					cmd.Parameters.AddWithValue("@woPartId", taskPart.ID);
					
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

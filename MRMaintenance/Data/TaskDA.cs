/***************************************************************************************************
 * Class:   	TaskDA.cs
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
	/// Description of TaskDA.
	/// </summary>
	public class TaskDA
	{
		private string connStr;
		
		
		public TaskDA()
		{
			connStr = Properties.Settings.Default.MRMaintenanceSql;
		}
		
		
		public DataTable Load()
		{
			using(SqlConnection dbConn = new SqlConnection(connStr))
			{
				dbConn.Open();
				SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM Tasks", dbConn);
				
				DataTable dt = new DataTable("Tasks");
				
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
		
		
		public int Insert(Task task)
		{
			using(SqlConnection dbConn = new SqlConnection(connStr))
			{
				dbConn.Open();
				SqlCommand cmd = new SqlCommand("INSERT INTO Tasks(taskName, taskDescr, taskEstDuration, equipShutdownRequired)" +
				                                " VALUES(@taskName, @tasDescr, @taskEstDuration, @equipShutdownRequired)", dbConn);
				
				try
				{
					cmd.Parameters.AddWithValue("@taskName", task.Name);
					cmd.Parameters.AddWithValue("@taskDescr", task.Description);
					cmd.Parameters.AddWithValue("@taskEstDuration", task.EstimatedDuration);
					cmd.Parameters.AddWithValue("@equipShutdownRequired", task.ShutdownRequired);
					
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
		
		
		public int Update(Task task)
		{
			using(SqlConnection dbConn = new SqlConnection(connStr))
			{
				dbConn.Open();
				SqlCommand cmd = new SqlCommand("UPDATE Tasks SET taskName=@taskName, taskDescr=@taskDescr, taskEstDuration@taskEstDuration, equipShutdownRequired=@equipShutdownRequired" +
				                                " WHERE taskId=@taskId", dbConn);
				
				try
				{
					cmd.Parameters.AddWithValue("@taskId", task.ID);
					cmd.Parameters.AddWithValue("@taskName", task.Name);
					cmd.Parameters.AddWithValue("@taskDescr", task.Description);
					cmd.Parameters.AddWithValue("@taskEstDuration", task.EstimatedDuration);
					cmd.Parameters.AddWithValue("@equipShutdownRequired", task.ShutdownRequired);
					
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
		
		
		public int Delete(Task task)
		{
			using(SqlConnection dbConn = new SqlConnection(connStr))
			{
				dbConn.Open();
				SqlCommand cmd = new SqlCommand("DELETE FROM Tasks WHERE taskId=@taskId", dbConn);
				
				try
				{
					cmd.Parameters.AddWithValue("@taskId", task.ID);
					
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

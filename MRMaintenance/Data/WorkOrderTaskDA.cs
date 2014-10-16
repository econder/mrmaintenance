/***************************************************************************************************
 * Class:   	WorkOrderTaskDA.cs
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
	/// Description of WorkOrderTaskDA.
	/// </summary>
	public class WorkOrderTaskDA
	{
		private string connStr;
		
		
		public WorkOrderTaskDA()
		{
			connStr = Properties.Settings.Default.MRMaintenanceSql;
		}
		
		
		public DataTable Load()
		{
			using(SqlConnection dbConn = new SqlConnection(connStr))
			{
				dbConn.Open();
				SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM WorkOrderTasks", dbConn);
				
				DataTable dt = new DataTable("WorkOrderTasks");
				
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
		
		
		public int Insert(WorkOrderTask workOrderTask)
		{
			using(SqlConnection dbConn = new SqlConnection(connStr))
			{
				dbConn.Open();
				SqlCommand cmd = new SqlCommand("INSERT INTO WorkOrderTasks(modelId, taskId, taskStep, taskComplete, taskDateComplete, taskDuration, woTaskNotes)" +
				                                " VALUES(@modelId, @taskId, @taskStep, @taskComplete, @taskDateComplete, @taskDuration, @woTaskNotes)", dbConn);
				
				try
				{
					cmd.Parameters.AddWithValue("@modelId", workOrderTask.EquipmentModelID);
					cmd.Parameters.AddWithValue("@taskId", workOrderTask.TaskID);
					cmd.Parameters.AddWithValue("@taskStep", workOrderTask.StepNumber);
					cmd.Parameters.AddWithValue("@taskComplete", workOrderTask.Complete);
					cmd.Parameters.AddWithValue("@taskDateComplete", workOrderTask.DateCompleted);
					cmd.Parameters.AddWithValue("@taskDuration", workOrderTask.Duration);
					cmd.Parameters.AddWithValue("@woTaskNotes", workOrderTask.Notes);
					
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
		
		
		public int Update(WorkOrderTask workOrderTask)
		{
			using(SqlConnection dbConn = new SqlConnection(connStr))
			{
				dbConn.Open();
				SqlCommand cmd = new SqlCommand("UPDATE WorkOrderTasks SET modelId=@modelId, taskId=@taskId, taskStep=@taskStep, taskComplete=@taskComplete, taskDateComplete=@taskDateComplete, taskDuration=@taskDuration, woTaskNotes=@woTaskNotes" +
				                                " WHERE woTaskId=@woTaskId", dbConn);
				
				try
				{
					cmd.Parameters.AddWithValue("@woTaskId", workOrderTask.ID);
					cmd.Parameters.AddWithValue("@modelId", workOrderTask.EquipmentModelID);
					cmd.Parameters.AddWithValue("@taskId", workOrderTask.TaskID);
					cmd.Parameters.AddWithValue("@taskStep", workOrderTask.StepNumber);
					cmd.Parameters.AddWithValue("@taskComplete", workOrderTask.Complete);
					cmd.Parameters.AddWithValue("@taskDateComplete", workOrderTask.DateCompleted);
					cmd.Parameters.AddWithValue("@taskDuration", workOrderTask.Duration);
					cmd.Parameters.AddWithValue("@woTaskNotes", workOrderTask.Notes);
					
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
		
		
		public int Delete(WorkOrderTask workOrderTask)
		{
			using(SqlConnection dbConn = new SqlConnection(connStr))
			{
				dbConn.Open();
				SqlCommand cmd = new SqlCommand("DELETE FROM WorkOrderTasks WHERE woTaskId=@woTaskId", dbConn);
				
				try
				{
					cmd.Parameters.AddWithValue("@woTaskId", workOrderTask.ID);
					
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

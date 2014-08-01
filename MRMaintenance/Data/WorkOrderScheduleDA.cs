/***************************************************************************************************
 * Class:   	WorkOrderScheduleDA.cs
 * Created By: 	Eric Conder
 * Created On: 	7/25/2014
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
	/// Description of WorkOrderScheduleDA.
	/// </summary>
	public class WorkOrderScheduleDA
	{
		private string connStr;
		
		
		public WorkOrderScheduleDA()
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
				SqlCommand cmd = new SqlCommand("SELECT * FROM WOSchedules ORDER BY name", dbConn);
				
				SqlDataAdapter da = new SqlDataAdapter(cmd);
				DataTable dt = new DataTable("WorkOrderSchedules");
				
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
		
		
		public int Insert(WorkOrderSchedule workOrderSchedule)
		{
			using(SqlConnection dbConn = new SqlConnection(connStr))
			{
				dbConn.Open();
				SqlCommand cmd = new SqlCommand("INSERT INTO WOSchedules(name, descr, equipId, deptId, startDate, timeFreq, intId, lastCompleted)" +
				                                " VALUES(@name, @descr, @equipId, @deptId, @startDate, @timeFreq, @intId, @lastCompleted)", dbConn);
				
				try
				{
					cmd.Parameters.AddWithValue("@name", workOrderSchedule.Name);
					cmd.Parameters.AddWithValue("@descr", workOrderSchedule.Description);
					cmd.Parameters.AddWithValue("@equipId", workOrderSchedule.EquipmentID);
					cmd.Parameters.AddWithValue("@deptId", workOrderSchedule.DepartmentID);
					cmd.Parameters.AddWithValue("@startDate", workOrderSchedule.StartDate);
					cmd.Parameters.AddWithValue("@timeFreq", workOrderSchedule.TimeFrequency);
					cmd.Parameters.AddWithValue("@intId", workOrderSchedule.TimeIntervalID);
					cmd.Parameters.AddWithValue("@lastCompleted", workOrderSchedule.LastCompleted);
					
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
		
		
		public int Update(WorkOrderSchedule workOrderSchedule)
		{
			using(SqlConnection dbConn = new SqlConnection(connStr))
			{
				dbConn.Open();
				SqlCommand cmd = new SqlCommand("UPDATE WOSchedules SET name=@name, descr=@descr, equipId=@equipId, deptId=@deptId," +
				                                " startDate=@startDate, timeFreq=@timeFreq, intId=@intId, lastCompleted=@lastCompleted" +
				                                " WHERE woSchedId=@woSchedId", dbConn);
				
				try
				{
					cmd.Parameters.AddWithValue("@woSchedId", workOrderSchedule.ID);
					cmd.Parameters.AddWithValue("@name", workOrderSchedule.Name);
					cmd.Parameters.AddWithValue("@descr", workOrderSchedule.Description);
					cmd.Parameters.AddWithValue("@equipId", workOrderSchedule.EquipmentID);
					cmd.Parameters.AddWithValue("@deptId", workOrderSchedule.DepartmentID);
					cmd.Parameters.AddWithValue("@startDate", workOrderSchedule.StartDate);
					cmd.Parameters.AddWithValue("@timeFreq", workOrderSchedule.TimeFrequency);
					cmd.Parameters.AddWithValue("@intId", workOrderSchedule.TimeIntervalID);
					cmd.Parameters.AddWithValue("@lastCompleted", workOrderSchedule.LastCompleted);
					
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
		
		
		public int Delete(WorkOrderSchedule workOrderSchedule)
		{
			using(SqlConnection dbConn = new SqlConnection(connStr))
			{
				dbConn.Open();
				SqlCommand cmd = new SqlCommand("DELETE FROM WOSchedules WHERE woSchedId=@woSchedId", dbConn);
				
				try
				{
					cmd.Parameters.AddWithValue("@woSchedId", workOrderSchedule.ID);
					
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

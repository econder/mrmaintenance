﻿/***************************************************************************************************
 * Class:   	WorkOrderRequestDA.cs
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
	/// Description of WorkOrderRequestDA.
	/// </summary>
	public class WorkOrderRequestDA
	{
		private string connStr;
		
		
		public WorkOrderRequestDA()
		{
			connStr = ConfigurationManager.ConnectionStrings["MRMaintenanceSQL"].ConnectionString;
		}
		
		
		public DataTable Load()
		{
			using(SqlConnection dbConn = new SqlConnection(connStr))
			{
				dbConn.Open();
				SqlCommand cmd = new SqlCommand("SELECT * FROM v_WorkOrderRequestsRtCycDue ORDER BY reqName", dbConn);
				
				SqlDataAdapter da = new SqlDataAdapter(cmd);
				DataTable dt = new DataTable("WorkOrderRequests");
				
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
				SqlCommand cmd = new SqlCommand("spWorkOrderRequestsDueByFacility", dbConn);
				
				cmd.Parameters.AddWithValue("@facilityId", facilityId);
				cmd.Parameters.AddWithValue("@dueDateDeadband", dueDateDeadband);
				
				cmd.CommandType = CommandType.StoredProcedure;
				
				SqlDataAdapter da = new SqlDataAdapter(cmd);
				DataTable dt = new DataTable("WorkOrderRequestsByFacility");
				
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
		
		
		public DataTable LoadByFacility(Facility facility, int dueDateDeadband)
		{
			using(SqlConnection dbConn = new SqlConnection(connStr))
			{
				dbConn.Open();
				SqlCommand cmd = new SqlCommand("spWorkOrderRequestsDueByFacility", dbConn);
				
				cmd.Parameters.AddWithValue("@facilityId", facility.ID);
				cmd.Parameters.AddWithValue("@dueDateDeadband", dueDateDeadband);
				
				cmd.CommandType = CommandType.StoredProcedure;
				
				SqlDataAdapter da = new SqlDataAdapter(cmd);
				DataTable dt = new DataTable("WorkOrderRequestsByFacility");
				
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
		
		
		
		
		
		public DataTable LoadByEquipment(long equipmentId, int dueDateDeadband)
		{
			using(SqlConnection dbConn = new SqlConnection(connStr))
			{
				dbConn.Open();
				SqlCommand cmd = new SqlCommand("spWorkOrderRequestsDueByEquipment", dbConn);
				
				cmd.Parameters.AddWithValue("@equipId", equipmentId);
				cmd.Parameters.AddWithValue("@dueDateDeadband", dueDateDeadband);
				
				cmd.CommandType = CommandType.StoredProcedure;
				
				SqlDataAdapter da = new SqlDataAdapter(cmd);
				DataTable dt = new DataTable("WorkOrderRequestsByEquipment");
				
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
		
		
		public DataTable LoadByFacilityBrief(long facilityId, int dueDateDeadband)
		{
			using(SqlConnection dbConn = new SqlConnection(connStr))
			{
				dbConn.Open();
				SqlCommand cmd = new SqlCommand("spWorkOrderRequestsDueByFacilityBrief", dbConn);
				
				cmd.Parameters.AddWithValue("@facilityId", facilityId);
				cmd.Parameters.AddWithValue("@dueDateDeadband", dueDateDeadband);
				
				cmd.CommandType = CommandType.StoredProcedure;
				
				SqlDataAdapter da = new SqlDataAdapter(cmd);
				DataTable dt = new DataTable("WorkOrderRequestsByFacilityBrief");
				
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
		
		
		public DataTable LoadByFacilityBrief(Facility facility, int dueDateDeadband)
		{
			using(SqlConnection dbConn = new SqlConnection(connStr))
			{
				dbConn.Open();
				SqlCommand cmd = new SqlCommand("spWorkOrderRequestsDueByFacilityBrief", dbConn);
				
				cmd.Parameters.AddWithValue("@facilityId", facility.ID);
				cmd.Parameters.AddWithValue("@dueDateDeadband", dueDateDeadband);
				
				cmd.CommandType = CommandType.StoredProcedure;
				
				SqlDataAdapter da = new SqlDataAdapter(cmd);
				DataTable dt = new DataTable("WorkOrderRequestsByFacilityBrief");
				
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
		
		
		public DataTable LoadByEquipment(Equipment equipment, int dueDateDeadband)
		{
			using(SqlConnection dbConn = new SqlConnection(connStr))
			{
				dbConn.Open();
				SqlCommand cmd = new SqlCommand("spWorkOrderRequestsDueByEquipment", dbConn);
				
				cmd.Parameters.AddWithValue("@equipId", equipment.ID);
				cmd.Parameters.AddWithValue("dueDateDeadband", dueDateDeadband);
				
				cmd.CommandType = CommandType.StoredProcedure;
				
				SqlDataAdapter da = new SqlDataAdapter(cmd);
				DataTable dt = new DataTable("WorkOrderRequestsByEquipment");
				
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
		
		
		public int Insert(WorkOrderRequest workOrderRequest)
		{
			using(SqlConnection dbConn = new SqlConnection(connStr))
			{
				dbConn.Open();
				SqlCommand cmd = new SqlCommand("spCreateWorkOrderRequest", dbConn);
				
				try
				{
					cmd.Parameters.AddWithValue("@reqName", workOrderRequest.Name);
					cmd.Parameters.AddWithValue("@reqDescr", workOrderRequest.Description);
					cmd.Parameters.AddWithValue("@equipId", workOrderRequest.EquipmentID);
					//cmd.Parameters.AddWithValue("@deptId", workOrderRequest.DepartmentID);
					cmd.Parameters.AddWithValue("@reqStartDate", workOrderRequest.StartDate);
					cmd.Parameters.AddWithValue("@timeFreq", workOrderRequest.TimeFrequency);
					cmd.Parameters.AddWithValue("@intId", workOrderRequest.TimeIntervalID);
					
					cmd.CommandType = CommandType.StoredProcedure;
					
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
		
		
		public int Update(WorkOrderRequest workOrderRequest)
		{
			using(SqlConnection dbConn = new SqlConnection(connStr))
			{
				dbConn.Open();
				SqlCommand cmd = new SqlCommand("UPDATE WorkOrderRequests SET reqName=@reqName, reqDescr=@reqDescr, equipId=@equipId," +
				                                " reqStartDate=@reqStartDate, timeFreq=@timeFreq, intId=@intId, enabled=@enabled" +
				                                " WHERE reqId=@reqId", dbConn);
				
				try
				{
					cmd.Parameters.AddWithValue("@reqId", workOrderRequest.ID);
					cmd.Parameters.AddWithValue("@reqName", workOrderRequest.Name);
					cmd.Parameters.AddWithValue("@reqDescr", workOrderRequest.Description);
					cmd.Parameters.AddWithValue("@equipId", workOrderRequest.EquipmentID);
					//cmd.Parameters.AddWithValue("@deptId", workOrderRequest.DepartmentID);
					cmd.Parameters.AddWithValue("@reqStartDate", workOrderRequest.StartDate);
					cmd.Parameters.AddWithValue("@timeFreq", workOrderRequest.TimeFrequency);
					cmd.Parameters.AddWithValue("@intId", workOrderRequest.TimeIntervalID);
					cmd.Parameters.AddWithValue("@enabled", workOrderRequest.Enabled);
					
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
		
		
		public int Delete(WorkOrderRequest workOrderRequest)
		{
			using(SqlConnection dbConn = new SqlConnection(connStr))
			{
				dbConn.Open();
				SqlCommand cmd = new SqlCommand("DELETE FROM WorkOrderRequests WHERE reqId=@reqId", dbConn);
				
				try
				{
					cmd.Parameters.AddWithValue("@reqId", workOrderRequest.ID);
					
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
		
		
		public int CreateWorkOrder(WorkOrderRequest workOrderRequest)
		{
			using(SqlConnection dbConn = new SqlConnection(connStr))
			{
				dbConn.Open();
				SqlCommand cmd = new SqlCommand("spCreateWorkOrder", dbConn);
				
				cmd.CommandType = CommandType.StoredProcedure;
				
				try
				{
					cmd.Parameters.AddWithValue("@reqId", workOrderRequest.ID);
					cmd.Parameters.AddWithValue("@woDateDue", workOrderRequest.NextDue);
					
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

/***************************************************************************************************
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
				SqlCommand cmd = new SqlCommand("SELECT * FROM v_WorkOrderRequests ORDER BY reqName", dbConn);
				
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
		
		
		public DataTable LoadByFacility(Facility facility, int dueDateDeadband)
		{
			using(SqlConnection dbConn = new SqlConnection(connStr))
			{
				dbConn.Open();
				SqlCommand cmd = new SqlCommand("SELECT * FROM v_WorkOrderRequests" +
												" WHERE v_WorkOrderRequests.nextDue <= DATEADD(DAY, @dueDateDeadband, GETDATE())" + 
												" AND v_WorkOrderRequests.facId = @facilityId", dbConn);
				
				cmd.Parameters.AddWithValue("@facilityId", facility.ID);
				cmd.Parameters.AddWithValue("@dueDateDeadband", dueDateDeadband);
				
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
		
		
		public DataTable LoadByFacilityBrief(Facility facility, int dueDateDeadband)
		{
			using(SqlConnection dbConn = new SqlConnection(connStr))
			{
				dbConn.Open();
				SqlCommand cmd = new SqlCommand("SELECT v_WorkOrderRequests.reqId AS [ID], v_WorkOrderRequests.reqName AS [Name], v_WorkOrderRequests.reqDateSubmitted AS [Date Submitted]," +
												" v_WorkOrderRequests.nextDue AS [Due By], v_WorkOrderRequests.locName AS [Location], v_WorkOrderRequests.equipId AS [Equipment ID]," +
												" v_WorkOrderRequests.equipName AS [Equipment Name], v_WorkOrderRequests.priorityName AS [Priority], v_WorkOrderRequests.woCount AS [Open Work Orders]" +
												" FROM v_WorkOrderRequests" +
												" WHERE v_WorkOrderRequests.nextDue <= DATEADD(DAY, @dueDateDeadband, GETDATE())" + 
												" AND v_WorkOrderRequests.facId = @facilityId" + 
												" AND v_WorkOrderRequests.enabled = 1" + 
												" ORDER BY v_WorkOrderRequests.nextDue DESC, priorityId DESC", dbConn);
				
				cmd.Parameters.AddWithValue("@facilityId", facility.ID);
				cmd.Parameters.AddWithValue("@dueDateDeadband", dueDateDeadband);
				
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
				SqlCommand cmd = new SqlCommand("SELECT * FROM v_WorkOrderRequests" + 
												" WHERE v_WorkOrderRequests.nextDue <= DATEADD(DAY, @dueDateDeadband, GETDATE())" + 
												" AND v_WorkOrderRequests.equipId = @equipId", dbConn);
				
				cmd.Parameters.AddWithValue("@equipId", equipment.ID);
				cmd.Parameters.AddWithValue("@dueDateDeadband", dueDateDeadband);
				
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
					cmd.Parameters.AddWithValue("@enabled", workOrderRequest.Enabled);
					cmd.Parameters.AddWithValue("@equipId", workOrderRequest.EquipmentID);
					cmd.Parameters.AddWithValue("@deptId", workOrderRequest.DepartmentID);
					cmd.Parameters.AddWithValue("@reqStartDate", workOrderRequest.StartDate);
					cmd.Parameters.AddWithValue("@timeFreq", workOrderRequest.TimeFrequency);
					cmd.Parameters.AddWithValue("@intId", workOrderRequest.TimeIntervalID);
					cmd.Parameters.AddWithValue("@priorityId", workOrderRequest.Priority);
					
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
				SqlCommand cmd = new SqlCommand("UPDATE WorkOrderRequests SET reqName=@reqName, reqDescr=@reqDescr, equipId=@equipId, deptId=@deptId," +
				                                " reqStartDate=@reqStartDate, timeFreq=@timeFreq, intId=@intId, enabled=@enabled, priorityId=@priorityId" +
				                                " WHERE reqId=@reqId", dbConn);
				
				try
				{
					cmd.Parameters.AddWithValue("@reqId", workOrderRequest.ID);
					cmd.Parameters.AddWithValue("@reqName", workOrderRequest.Name);
					cmd.Parameters.AddWithValue("@reqDescr", workOrderRequest.Description);
					cmd.Parameters.AddWithValue("@equipId", workOrderRequest.EquipmentID);
					cmd.Parameters.AddWithValue("@deptId", workOrderRequest.DepartmentID);
					cmd.Parameters.AddWithValue("@reqStartDate", workOrderRequest.StartDate);
					cmd.Parameters.AddWithValue("@timeFreq", workOrderRequest.TimeFrequency);
					cmd.Parameters.AddWithValue("@intId", workOrderRequest.TimeIntervalID);
					cmd.Parameters.AddWithValue("@enabled", workOrderRequest.Enabled);
					cmd.Parameters.AddWithValue("@priorityId", workOrderRequest.Priority);
					
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
		
		
		public int OpenWorkOrdersCount(WorkOrderRequest workOrderRequest)
		{
			using(SqlConnection dbConn = new SqlConnection(connStr))
			{
				dbConn.Open();
				SqlCommand cmd = new SqlCommand("SELECT COUNT(*) FROM WorkOrders WHERE reqId=@reqId AND woComplete=0", dbConn);
				
				try
				{
					cmd.Parameters.AddWithValue("@reqId", workOrderRequest.ID);
					
					return (int)cmd.ExecuteScalar();
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

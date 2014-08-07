/***************************************************************************************************
 * Class:   	WorkOrderDA.cs
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
	/// Description of WorkOrderDA.
	/// </summary>
	public class WorkOrderDA
	{
		private string connStr;
		
		
		public WorkOrderDA()
		{
			connStr = ConfigurationManager.ConnectionStrings["MRMaintenanceSQL"].ConnectionString;
		}
		
		
		public DataTable Load()
		{
			using(SqlConnection dbConn = new SqlConnection(connStr))
			{
				dbConn.Open();
				SqlCommand cmd = new SqlCommand("SELECT * FROM WorkOrders ORDER BY reqName", dbConn);
				
				SqlDataAdapter da = new SqlDataAdapter(cmd);
				DataTable dt = new DataTable("WorkOrders");
				
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
		
		
		public DataTable LoadByFacility(long facilityId)
		{
			using(SqlConnection dbConn = new SqlConnection(connStr))
			{
				dbConn.Open();
				SqlCommand cmd = new SqlCommand("SELECT * FROM v_WorkOrdersRtCycDue WHERE facId=@facId ORDER BY reqName", dbConn);
				
				SqlDataAdapter da = new SqlDataAdapter(cmd);
				DataTable dt = new DataTable("WorkOrdersByFacility");
				
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
		
		
		public DataTable LoadByEquipment(long equipmentId)
		{
			using(SqlConnection dbConn = new SqlConnection(connStr))
			{
				dbConn.Open();
				SqlCommand cmd = new SqlCommand("SELECT * FROM v_WorkOrdersRtCycDue WHERE equipId=@equipId ORDER BY reqName", dbConn);
				
				SqlDataAdapter da = new SqlDataAdapter(cmd);
				DataTable dt = new DataTable("WorkOrdersByEquipment");
				
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
		
		
		public int Insert(WorkOrder workOrder)
		{
			using(SqlConnection dbConn = new SqlConnection(connStr))
			{
				dbConn.Open();
				SqlCommand cmd = new SqlCommand("spCreateWorkOrder", dbConn);
				
				try
				{
					cmd.Parameters.AddWithValue("@reqName", workOrder.Name);
					cmd.Parameters.AddWithValue("@reqDescr", workOrder.Description);
					cmd.Parameters.AddWithValue("@equipId", workOrder.EquipmentID);
					//cmd.Parameters.AddWithValue("@deptId", workOrder.DepartmentID);
					cmd.Parameters.AddWithValue("@reqStartDate", workOrder.StartDate);
					cmd.Parameters.AddWithValue("@timeFreq", workOrder.TimeFrequency);
					cmd.Parameters.AddWithValue("@intId", workOrder.TimeIntervalID);
					
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
		
		
		public int Update(WorkOrder workOrder)
		{
			using(SqlConnection dbConn = new SqlConnection(connStr))
			{
				dbConn.Open();
				SqlCommand cmd = new SqlCommand("UPDATE WorkOrders SET reqName=@reqName, reqDescr=@reqDescr, equipId=@equipId, reqDateSubmitted=@reqDateSubmitted," +
				                                " reqStartDate=@reqStartDate, timeFreq=@timeFreq, intId=@intId, enadbled=@enabled" +
				                                " WHERE reqId=@reqId", dbConn);
				
				try
				{
					cmd.Parameters.AddWithValue("@reqId", workOrder.ID);
					cmd.Parameters.AddWithValue("@reqName", workOrder.Name);
					cmd.Parameters.AddWithValue("@reqDescr", workOrder.Description);
					cmd.Parameters.AddWithValue("@equipId", workOrder.EquipmentID);
					//cmd.Parameters.AddWithValue("@deptId", workOrder.DepartmentID);
					cmd.Parameters.AddWithValue("@reqDateSubmitted", workOrder.DateSubmitted);
					cmd.Parameters.AddWithValue("@reqStartDate", workOrder.StartDate);
					cmd.Parameters.AddWithValue("@timeFreq", workOrder.TimeFrequency);
					cmd.Parameters.AddWithValue("@intId", workOrder.TimeIntervalID);
					cmd.Parameters.AddWithValue("@enabled", workOrder.Enabled);
					
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
		
		
		public int Delete(WorkOrder workOrder)
		{
			using(SqlConnection dbConn = new SqlConnection(connStr))
			{
				dbConn.Open();
				SqlCommand cmd = new SqlCommand("DELETE FROM WorkOrders WHERE reqId=@reqId", dbConn);
				
				try
				{
					cmd.Parameters.AddWithValue("@reqId", workOrder.ID);
					
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

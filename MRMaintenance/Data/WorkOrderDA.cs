﻿/***************************************************************************************************
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
				SqlCommand cmd = new SqlCommand("SELECT * FROM v_WorkOrders ORDER BY woDateDue", dbConn);
				
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
				SqlCommand cmd = new SqlCommand("SELECT * FROM v_WorkOrders WHERE facId=@facId ORDER BY woDateDue", dbConn);
				
				cmd.Parameters.AddWithValue("@facId", facilityId);
				
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
		
		
		public DataTable LoadByFacility(Facility facility)
		{
			using(SqlConnection dbConn = new SqlConnection(connStr))
			{
				dbConn.Open();
				SqlCommand cmd = new SqlCommand("SELECT * FROM v_WorkOrders WHERE facId=@facId ORDER BY woDateDue", dbConn);
				
				cmd.Parameters.AddWithValue("@facId", facility.ID);
				
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
				SqlCommand cmd = new SqlCommand("SELECT * FROM v_WorkOrders WHERE equipId=@equipId ORDER BY woDateDue", dbConn);
				
				cmd.Parameters.AddWithValue("@equipId", equipmentId);
				
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
		
		
		public DataTable LoadByEquipment(Equipment equipment)
		{
			using(SqlConnection dbConn = new SqlConnection(connStr))
			{
				dbConn.Open();
				SqlCommand cmd = new SqlCommand("SELECT * FROM v_WorkOrders WHERE equipId=@equipId ORDER BY woDateDue", dbConn);
				
				cmd.Parameters.AddWithValue("@equipId", equipment.ID);
				
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
					cmd.Parameters.AddWithValue("@reqId", workOrder.RequestID);
					cmd.Parameters.AddWithValue("@woDateDue", workOrder.DateDue);
					
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
				SqlCommand cmd = new SqlCommand("UPDATE WorkOrders SET reqId=@reqId, woDateCreated=@woDateCreated, woDateDue=@woDateDue, woNotes=@woNotes" +
				                                " WHERE woId=@woId", dbConn);
				
				try
				{
					cmd.Parameters.AddWithValue("@woId", workOrder.ID);
					cmd.Parameters.AddWithValue("@reqId", workOrder.RequestID);
					cmd.Parameters.AddWithValue("@woDateCreated", workOrder.DateCreated);
					cmd.Parameters.AddWithValue("@woDateDue", workOrder.DateDue);
					cmd.Parameters.AddWithValue("@woNotes", workOrder.Notes);
					
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
				SqlCommand cmd = new SqlCommand("DELETE FROM WorkOrders WHERE woId=@woId", dbConn);
				
				try
				{
					cmd.Parameters.AddWithValue("@woId", workOrder.ID);
					
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

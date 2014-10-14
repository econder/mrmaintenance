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
            connStr = ConfigurationManager.ConnectionStrings["MRMaintenance.Properties.Settings.MRMaintenanceSql"].ConnectionString;
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


        public DataTable Load(long workOrderId)
        {
            using (SqlConnection dbConn = new SqlConnection(connStr))
            {
                dbConn.Open();
                SqlCommand cmd = new SqlCommand("SELECT * FROM v_WorkOrders WHERE woId=@woId ORDER BY woDateDue", dbConn);

                cmd.Parameters.AddWithValue("@woId", workOrderId);

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
		
		
		public DataTable LoadBrief()
		{
			using(SqlConnection dbConn = new SqlConnection(connStr))
			{
				dbConn.Open();
				SqlCommand cmd = new SqlCommand("SELECT woId, woDateDue FROM v_WorkOrders ORDER BY woDateDue", dbConn);
				
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
		
		
		public DataTable LoadOpenByFacility(Facility facility)
		{
			using(SqlConnection dbConn = new SqlConnection(connStr))
			{
				dbConn.Open();
				SqlCommand cmd = new SqlCommand("SELECT * FROM v_WorkOrders WHERE facId=@facId AND woComplete=0 ORDER BY woDateDue", dbConn);
				
				cmd.Parameters.AddWithValue("@facId", facility.ID);
				
				SqlDataAdapter da = new SqlDataAdapter(cmd);
				DataTable dt = new DataTable("OpenWorkOrdersByFacility");
				
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
		
		
		public DataTable LoadOpenByFacilityBrief(Facility facility)
		{
			using(SqlConnection dbConn = new SqlConnection(connStr))
			{
				dbConn.Open();
                SqlCommand cmd = new SqlCommand("SELECT woID AS [Work Order ID], reqId AS [Work Request ID], reqName AS [Name], equipName AS [Equipment], locName AS [Location], woDateCreated AS [Date Created], woDateDue AS [Date Due]" +
                                                " FROM v_WorkOrders" +
                                                " WHERE facId=@facId" +
                                                " AND woComplete=0" +
                                                " ORDER BY woDateDue", dbConn);
				
				cmd.Parameters.AddWithValue("@facId", facility.ID);
				
				SqlDataAdapter da = new SqlDataAdapter(cmd);
				DataTable dt = new DataTable("OpenWorkOrdersByFacilityBrief");
				
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
		
		
		public DataTable LoadOpenByRequestBrief(WorkOrderRequest workOrderRequest)
		{
			using(SqlConnection dbConn = new SqlConnection(connStr))
			{
				dbConn.Open();
				SqlCommand cmd = new SqlCommand("SELECT woID AS [ID], woDateCreated AS [Date Created], woDateDue AS [Date Due] FROM v_WorkOrders WHERE reqId=@reqId AND woComplete=0 ORDER BY woDateDue", dbConn);
				
				cmd.Parameters.AddWithValue("@reqId", workOrderRequest.ID);
				
				SqlDataAdapter da = new SqlDataAdapter(cmd);
				DataTable dt = new DataTable("OpenWorkOrdersByRequestBrief");
				
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
				SqlCommand cmd = new SqlCommand("INSERT INTO dbo.WorkOrders(reqId, woDateCreated, woDateDue) VALUES(@reqId, GETDATE(), @woDateDue)", dbConn);
				
				try
				{
					cmd.Parameters.AddWithValue("@reqId", workOrder.RequestID);
					cmd.Parameters.AddWithValue("@woDateDue", workOrder.DateDue);
					
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
				SqlCommand cmd = new SqlCommand("UPDATE WorkOrders SET reqId=@reqId, woDateCreated=@woDateCreated, woDateDue=@woDateDue," + 
				                                " woNotes=@woNotes, woComplete=@woComplete, woDateCompleted=@woDateCompleted, woCompletedBy=@woCompletedBy" +
				                                " WHERE woId=@woId", dbConn);
				
				try
				{
					cmd.Parameters.AddWithValue("@woId", workOrder.ID);
					cmd.Parameters.AddWithValue("@reqId", workOrder.RequestID);
					cmd.Parameters.AddWithValue("@woDateCreated", workOrder.DateCreated);
					cmd.Parameters.AddWithValue("@woDateDue", workOrder.DateDue);
					cmd.Parameters.AddWithValue("@woNotes", workOrder.Notes);
					cmd.Parameters.AddWithValue("@woComplete", workOrder.Complete);
					cmd.Parameters.AddWithValue("@woDateCompleted", workOrder.DateCompleted);
					cmd.Parameters.AddWithValue("@woCompletedBy", workOrder.CompletedBy);
					
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
		
		
		public int MarkComplete(WorkOrder workOrder)
		{
			using(SqlConnection dbConn = new SqlConnection(connStr))
			{
				dbConn.Open();
				SqlCommand cmd = new SqlCommand("spWorkOrderMarkComplete", dbConn);
				
				try
				{
					cmd.Parameters.AddWithValue("@workOrderId", workOrder.ID);
					
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
	}
}

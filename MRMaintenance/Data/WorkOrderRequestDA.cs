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
            connStr = Properties.Settings.Default.MRMaintenanceSql;
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


        public DataTable LoadByFacility(Facility facility)
        {
            using (SqlConnection dbConn = new SqlConnection(connStr))
            {
                dbConn.Open();
                SqlCommand cmd = new SqlCommand("SELECT equipName + ' - ' + reqName AS [reqNameExt], reqId, reqName, reqDescr, equipId, reqDateSubmitted, reqStartDate, timeFreq, intId, intName, intAbbr, lastCompleted, enabled," +
                                                " equipName, facId, facName, locName, deptId, deptName, priorityId, priorityName, runtime, cycles, nextDue, woCount" +
                                                " FROM v_WorkOrderRequests" +
                                                " WHERE v_WorkOrderRequests.facId = @facilityId" + 
                                                " ORDER BY equipName", dbConn);

                cmd.Parameters.AddWithValue("@facilityId", facility.ID);

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
		
		
		public DataTable LoadByFacility(Facility facility, int dueDateDeadband = 0, int dueHoursDeadband = 0, int dueCyclesDeadband = 0)
		{
			using(SqlConnection dbConn = new SqlConnection(connStr))
			{
				dbConn.Open();
                SqlCommand cmd = new SqlCommand("SELECT equipName + ' - ' + reqName AS [reqNameExt], reqId, reqName, reqDescr, equipId, reqDateSubmitted, reqStartDate, timeFreq, intId, intName, intAbbr, lastCompleted, enabled," +
                                                " equipName, facId, facName, locName, deptId, deptName, priorityId, priorityName, runtime, cycles, nextDue, woCount" +
                                                " FROM v_WorkOrderRequests" +
												" WHERE facId = @facilityId" +
                                                " AND (nextDue <= DATEADD(DAY, @dueDateDeadband, GETDATE())" +
                                                    " OR runtime > timeFreq - " + dueHoursDeadband + 
                                                    " OR cycles > timeFreq - " + dueCyclesDeadband + ")" + 
                                                " ORDER BY equipName", dbConn);
				
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
		
		
		public DataTable LoadByFacilityBrief(Facility facility, int dueDateDeadband, int dueHoursDeadband, int dueCyclesDeadband)
		{
			using(SqlConnection dbConn = new SqlConnection(connStr))
			{
				dbConn.Open();

                SqlCommand cmd = new SqlCommand("SELECT v_WorkOrderRequests.reqId AS [ID], v_WorkOrderRequests.reqName AS [Name], v_WorkOrderRequests.equipName AS [Equipment Name]," +
                                                " v_WorkOrderRequests.locName AS [Location], v_WorkOrderRequests.equipId AS [Equipment ID], v_WorkOrderRequests.priorityName AS [Priority]," +
                                                " v_WorkOrderRequests.reqDateSubmitted AS [Date Submitted], v_WorkOrderRequests.nextDue AS [Due By], v_WorkOrderRequests.timeFreq AS [Frequency]," +
                                                " v_WorkOrderRequests.intName AS [Interval], v_WorkOrderRequests.runtime AS [Runtime], v_WorkOrderRequests.cycles AS [Cycles]" +
                                                " FROM v_WorkOrderRequests" +
                                                " WHERE (v_WorkOrderRequests.facId = 4" + 
                                                " AND v_WorkOrderRequests.enabled = 1)" + 
                                                " AND (v_WorkOrderRequests.nextDue <= DATEADD(DAY, @dueDateDeadband, GETDATE())" + 
                                                " OR (v_WorkOrderRequests.intAbbr = 'rt' AND v_WorkOrderRequests.runtime > v_WorkOrderRequests.timeFreq-@dueHoursDeadband)" + 
                                                " OR (v_WorkOrderRequests.intAbbr = 'cyc' AND v_WorkOrderRequests.cycles > v_WorkOrderRequests.timeFreq-@dueCyclesDeadband))" +
                                                " ORDER BY v_WorkOrderRequests.equipName", dbConn);
				
				//SqlCommand cmd = new SqlCommand("spWorkOrderRequestsDue", dbConn);
				cmd.Parameters.AddWithValue("@facilityId", facility.ID);
				cmd.Parameters.AddWithValue("@dueDateDeadband", dueDateDeadband);
                cmd.Parameters.AddWithValue("@dueHoursDeadband", dueHoursDeadband);
                cmd.Parameters.AddWithValue("@dueCyclesDeadband", dueCyclesDeadband);
				//cmd.CommandType = CommandType.StoredProcedure;
				
				SqlDataAdapter da = new SqlDataAdapter(cmd);
				DataTable dt = new DataTable("WorkOrderRequestsDueByFacility");
				
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
            using (SqlConnection dbConn = new SqlConnection(connStr))
            {
                dbConn.Open();
                SqlCommand cmd = new SqlCommand("SELECT equipName + ' - ' + reqName AS [reqNameExt], reqId, reqName, reqDescr, equipId, reqDateSubmitted, reqStartDate, timeFreq, intId, intName, intAbbr, lastCompleted, enabled," +
                                                " equipName, facId, facName, locName, deptId, deptName, priorityId, priorityName, runtime, cycles, nextDue, woCount" + 
                                                " FROM v_WorkOrderRequests" +
                                                " WHERE v_WorkOrderRequests.equipId = @equipId" + 
                                                " ORDER BY equipName", dbConn);

                cmd.Parameters.AddWithValue("@equipId", equipmentId);

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
		
		
		public DataTable LoadByEquipment(long equipmentId, int dueDateDeadband)
		{
			using(SqlConnection dbConn = new SqlConnection(connStr))
			{
				dbConn.Open();
                SqlCommand cmd = new SqlCommand("SELECT equipName + ' - ' + reqName AS [reqNameExt], reqId, reqName, reqDescr, equipId, reqDateSubmitted, reqStartDate, timeFreq, intId, intName, intAbbr, lastCompleted, enabled," +
                                                " equipName, facId, facName, locName, deptId, deptName, priorityId, priorityName, runtime, cycles, nextDue, woCount" +
                                                " FROM v_WorkOrderRequests" +
												" WHERE v_WorkOrderRequests.nextDue <= DATEADD(DAY, @dueDateDeadband, GETDATE())" + 
												" AND v_WorkOrderRequests.equipId = @equipId" + 
                                                " ORDER BY equipName", dbConn);
				
				cmd.Parameters.AddWithValue("@equipId", equipmentId);
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
				                                " WHERE reqId=@reqId" + 
                                                " ORDER BY reqName", dbConn);
				
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
				SqlCommand cmd = new SqlCommand("SELECT COUNT(*) FROM WorkOrders WHERE woId=@reqId AND woComplete=0", dbConn);
				
				try
				{
					cmd.Parameters.AddWithValue("@reqId", workOrderRequest.ID);
					
					int i = (int)cmd.ExecuteScalar();
					return i;
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
                    if(workOrderRequest.NextDue != null)
                    {
                        cmd.Parameters.AddWithValue("@woDateDue", workOrderRequest.NextDue);
                    }
                    else
                    {
                        cmd.Parameters.AddWithValue("@woDateDue", DateTime.Now);
                    }
					
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

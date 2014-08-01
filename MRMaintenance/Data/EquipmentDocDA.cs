/***************************************************************************************************
 * Class:   	EquipmentDocDA.cs
 * Created By: 	Eric Conder
 * Created On: 	7/31/2014
 * 
 * Changes:
 * 
 *
 * *************************************************************************************************/
using System;
using System.Data;
using System.Data.SqlClient;

using MRMaintenance.BusinessObjects;


namespace MRMaintenance.Data
{
	/// <summary>
	/// Description of EquipmentDocDA.
	/// </summary>
	public class EquipmentDocDA
	{
		private string connStr;
		
		
		public EquipmentDocDA()
		{
			connStr = String.Format("Server={0}; Database={1}; User Id={2}; Password={3};", "ECVM-WW2014", "MRMaintenance", "mrsystems", "Reggie123");
		}
		
		
		public DataTable Load()
		{
			using(SqlConnection dbConn = new SqlConnection(connStr))
			{
				dbConn.Open();
				SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM EquipmentDocs ORDER BY equipDocName", dbConn);
				
				DataTable dt = new DataTable("EquipmentDocs");
				
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
				SqlCommand cmd = new SqlCommand("SELECT * FROM EquipmentDocs WHERE equipId=@equipId ORDER BY equipDocName", dbConn);
				
				cmd.Parameters.AddWithValue("@equipId", equipmentId);
				
				SqlDataAdapter da = new SqlDataAdapter(cmd);
				
				DataTable dt = new DataTable("EquipmentDocsByEquipment");
				
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
				SqlCommand cmd = new SqlCommand("SELECT * FROM EquipmentDocs WHERE equipId=@equipId ORDER BY equipDocName", dbConn);
				
				cmd.Parameters.AddWithValue("@equipId", equipment.ID);
				
				SqlDataAdapter da = new SqlDataAdapter(cmd);
				
				DataTable dt = new DataTable("EquipmentDocsByEquipment");
				
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
		
		
		public int Insert(EquipmentDoc equipmentDoc)
		{
			using(SqlConnection dbConn = new SqlConnection(connStr))
			{
				dbConn.Open();
				SqlCommand cmd = new SqlCommand("INSERT INTO EquipmentDocs(equipId, equipDocName, equipDocLink) VALUES(@equipId, @equipDocName, @equipDocLink)", dbConn);
				
				try
				{
					cmd.Parameters.AddWithValue("@equipId", equipmentDoc.EquipmentID);
					cmd.Parameters.AddWithValue("@equipDocName", equipmentDoc.Name);
					cmd.Parameters.AddWithValue("@equipDocLink", equipmentDoc.Link);
					
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
		
		
		public int Update(EquipmentDoc equipmentDoc)
		{
			using(SqlConnection dbConn = new SqlConnection(connStr))
			{
				dbConn.Open();
				SqlCommand cmd = new SqlCommand("UPDATE EquipmentDocs SET equipId=@equipId, equipDocName=@equipDocName, equipDocLink=@equipDocLink WHERE equipDocId=@equipDocId", dbConn);
				
				try
				{
					cmd.Parameters.AddWithValue("@equipDocId", equipmentDoc.ID);
					cmd.Parameters.AddWithValue("@equipId", equipmentDoc.EquipmentID);
					cmd.Parameters.AddWithValue("@equipDocName", equipmentDoc.Name);
					cmd.Parameters.AddWithValue("@equipDocLink", equipmentDoc.Link);
					
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
		
		
		public int Delete(EquipmentDoc equipmentDoc)
		{
			using(SqlConnection dbConn = new SqlConnection(connStr))
			{
				dbConn.Open();
				SqlCommand cmd = new SqlCommand("DELETE FROM EquipmentDocs WHERE equipDocId=@equipDocId", dbConn);
				
				try
				{
					cmd.Parameters.AddWithValue("@equipDocId", equipmentDoc.ID);
					
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

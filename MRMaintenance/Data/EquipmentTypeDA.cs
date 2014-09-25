/***************************************************************************************************
 * Class:   	EquipmentTypeDA.cs
 * Created By: 	Eric Conder
 * Created On: 	7/23/2014
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
	/// Description of EquipmentType.
	/// </summary>
	public class EquipmentTypeDA
	{
		private string connStr;
		
		public EquipmentTypeDA()
		{
			connStr = ConfigurationManager.ConnectionStrings["MRMaintenanceSQL"].ConnectionString;
		}
		
		
		public DataTable Load()
		{
			using(SqlConnection dbConn = new SqlConnection(connStr))
			{
				dbConn.Open();
				SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM EquipmentTypes ORDER BY typeName", dbConn);
				
				DataTable dt = new DataTable("EquipmentTypes");
				
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
		
		
		public int Insert(EquipmentType equipmentType)
		{
			using(SqlConnection dbConn = new SqlConnection(connStr))
			{
				dbConn.Open();
				SqlCommand cmd = new SqlCommand("INSERT INTO EquipmentTypes(typeName, typeDesc) VALUES(@typeName, @typeDesc)", dbConn);
				
				try
				{
					cmd.Parameters.AddWithValue("@typeName", equipmentType.Name);
					cmd.Parameters.AddWithValue("@typeDesc", equipmentType.Description);
					
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
		
		
		public int Update(EquipmentType equipmentType)
		{
			using(SqlConnection dbConn = new SqlConnection(connStr))
			{
				dbConn.Open();
				SqlCommand cmd = new SqlCommand("UPDATE EquipmentTypes SET typeName=@typeName, typeDesc=@typeDesc WHERE typeId=@typeId", dbConn);
				
				try
				{
					cmd.Parameters.AddWithValue("@typeId", equipmentType.ID);
					cmd.Parameters.AddWithValue("@typeName", equipmentType.Name);
					cmd.Parameters.AddWithValue("@typeDesc", equipmentType.Description);
					
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
		
		
		public int Delete(EquipmentType equipmentType)
		{
			using(SqlConnection dbConn = new SqlConnection(connStr))
			{
				dbConn.Open();
				SqlCommand cmd = new SqlCommand("DELETE FROM EquipmentTypes WHERE typeId=@typeId", dbConn);
				
				try
				{
					cmd.Parameters.AddWithValue("@typeId", equipmentType.ID);
					
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

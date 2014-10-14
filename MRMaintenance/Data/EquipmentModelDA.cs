/***************************************************************************************************
 * Class:   	EquipmentModelDA.cs
 * Created By: 	Eric Conder
 * Created On: 	2014-08-06
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
	/// Description of EquipmentModelDA.
	/// </summary>
	public class EquipmentModelDA
	{
		private string connStr;
		
		
		public EquipmentModelDA()
		{
			connStr = ConfigurationManager.ConnectionStrings["MRMaintenance.Properties.Settings.MRMaintenanceSql"].ConnectionString;
		}
		
		
		public DataTable Load()
		{
			using(SqlConnection dbConn = new SqlConnection(connStr))
			{
				dbConn.Open();
				SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM EquipmentModels ORDER BY modelName", dbConn);
				
				DataTable dt = new DataTable("EquipmentModels");
				
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
		
		
		public int Insert(EquipmentModel equipmentModel)
		{
			using(SqlConnection dbConn = new SqlConnection(connStr))
			{
				dbConn.Open();
				SqlCommand cmd = new SqlCommand("INSERT INTO EquipmentModels(modelName) VALUES(@modelName)", dbConn);
				
				try
				{
					cmd.Parameters.AddWithValue("@modelName", equipmentModel.Name);
					
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
		
		
		public int Update(EquipmentModel equipmentModel)
		{
			using(SqlConnection dbConn = new SqlConnection(connStr))
			{
				dbConn.Open();
				SqlCommand cmd = new SqlCommand("UPDATE EquipmentModels SET modelName=@modelName WHERE modelId=@modelId", dbConn);
				
				try
				{
					cmd.Parameters.AddWithValue("@modelId", equipmentModel.ID);
					cmd.Parameters.AddWithValue("@modelName", equipmentModel.Name);
					
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
		
		
		public int Delete(EquipmentModel equipmentModel)
		{
			using(SqlConnection dbConn = new SqlConnection(connStr))
			{
				dbConn.Open();
				SqlCommand cmd = new SqlCommand("DELETE FROM EquipmentModels WHERE modelId=@modelId", dbConn);
				
				try
				{
					cmd.Parameters.AddWithValue("@modelId", equipmentModel.ID);
					
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

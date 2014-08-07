/***************************************************************************************************
 * Class:   	InventoryLocationDA.cs
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
	/// Description of InventoryLocationDA.
	/// </summary>
	public class InventoryLocationDA
	{
		private string connStr;
		
		
		public InventoryLocationDA()
		{
			connStr = ConfigurationManager.ConnectionStrings["MRMaintenanceSQL"].ConnectionString;
		}
		
		
		public DataTable Load()
		{
			using(SqlConnection dbConn = new SqlConnection(connStr))
			{
				dbConn.Open();
				SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM InventoryLocation", dbConn);
				
				DataTable dt = new DataTable("InventoryLocation");
				
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
		
		
		public int Insert(InventoryLocation inventoryLocation)
		{
			using(SqlConnection dbConn = new SqlConnection(connStr))
			{
				dbConn.Open();
				SqlCommand cmd = new SqlCommand("INSERT INTO InventoryLocation(facId, name)" +
				                                " VALUES(@facId, @name)", dbConn);
				
				try
				{
					cmd.Parameters.AddWithValue("@facId", inventoryLocation.FacilityID);
					cmd.Parameters.AddWithValue("@name", inventoryLocation.Name);
					
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
		
		
		public int Update(InventoryLocation inventoryLocation)
		{
			using(SqlConnection dbConn = new SqlConnection(connStr))
			{
				dbConn.Open();
				SqlCommand cmd = new SqlCommand("UPDATE InventoryLocation SET fac=@facId, name=@name" +
				                                " WHERE invLocId=@invLocId", dbConn);
				
				try
				{
					cmd.Parameters.AddWithValue("@invLocId", inventoryLocation.ID);
					cmd.Parameters.AddWithValue("@facId", inventoryLocation.FacilityID);
					cmd.Parameters.AddWithValue("@name", inventoryLocation.Name);
					
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
		
		
		public int Delete(InventoryLocation inventoryLocation)
		{
			using(SqlConnection dbConn = new SqlConnection(connStr))
			{
				dbConn.Open();
				SqlCommand cmd = new SqlCommand("DELETE FROM InventoryLocation WHERE invLocId=@invLocId", dbConn);
				
				try
				{
					cmd.Parameters.AddWithValue("@invLocId", inventoryLocation.ID);
					
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

/***************************************************************************************************
 * Class:   	InventoryDA.cs
 * Created By: 	Eric Conder
 * Created On: 	8/6/2014
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
	/// Description of InventoryDA.
	/// </summary>
	public class InventoryDA
	{
		private string connStr;
		
		
		public InventoryDA()
		{
			connStr = ConfigurationManager.ConnectionStrings["MRMaintenanceSQL"].ConnectionString;
		}
		
		
		public DataTable Load()
		{
			using(SqlConnection dbConn = new SqlConnection(connStr))
			{
				dbConn.Open();
				SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM Inventory", dbConn);
				
				DataTable dt = new DataTable("Inventory");
				
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
		
		
		public DataTable LoadLocationsByPart(Inventory inventory)
		{
			using(SqlConnection dbConn = new SqlConnection(connStr))
			{
				dbConn.Open();
				SqlCommand cmd = new SqlCommand("SELECT Inventory.invLocId, InventoryLocations.name, Inventory.qty" +
				                                " FROM Inventory INNER JOIN InventoryLocations" +
				                                " ON InventoryLocations.invLocId=Inventory.invId" +
				                                " WHERE Inventory.partId=@partId" + 
				                                " ORDER BY InventoryLocations.name", dbConn);
				
				SqlDataAdapter da = new SqlDataAdapter(cmd);
				DataTable dt = new DataTable("InventoryLocationsByPart");
				
				try
				{
					cmd.Parameters.AddWithValue("@partId", inventory.PartID);
					
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
		
		
		public DataTable LoadPartQtyByLocation(Inventory inventory)
		{
			using(SqlConnection dbConn = new SqlConnection(connStr))
			{
				dbConn.Open();
				SqlCommand cmd = new SqlCommand("SELECT Inventory.invId, Inventory.invLocId, Parts.partName, Inventory.qty" +
				                                " FROM Inventory INNER JOIN Parts" +
				                                " ON Parts.partId=Inventory.partId" +
				                                " WHERE Inventory.invLocId=@invLocId" + 
				                                " AND Inventory.partId=@partId", dbConn);
				
				SqlDataAdapter da = new SqlDataAdapter(cmd);
				DataTable dt = new DataTable("InventoryPartQtyByLocation");
				
				try
				{
					cmd.Parameters.AddWithValue("@invLocId", inventory.LocationID);
					cmd.Parameters.AddWithValue("@partId", inventory.PartID);
					
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
		
		
		public int Insert(Inventory inventory)
		{
			using(SqlConnection dbConn = new SqlConnection(connStr))
			{
				dbConn.Open();
				SqlCommand cmd = new SqlCommand("INSERT INTO Inventory(invLocId, partId, qty)" +
				                                " VALUES(@invLocId, @partId, @qty)", dbConn);
				
				try
				{
					cmd.Parameters.AddWithValue("@invLocId", inventory.LocationID);
					cmd.Parameters.AddWithValue("@partId", inventory.PartID);
					cmd.Parameters.AddWithValue("@qty", inventory.Quantity);
					
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
		
		
		public int Update(Inventory inventory)
		{
			using(SqlConnection dbConn = new SqlConnection(connStr))
			{
				dbConn.Open();
				SqlCommand cmd = new SqlCommand("UPDATE Inventory SET invLocId=@invLocId, partId=@partId, qty=@qty" +
				                                " WHERE invId=@invId", dbConn);
				
				try
				{
					cmd.Parameters.AddWithValue("@invId", inventory.ID);
					cmd.Parameters.AddWithValue("@invLocId", inventory.LocationID);
					cmd.Parameters.AddWithValue("@partId", inventory.PartID);
					cmd.Parameters.AddWithValue("@qty", inventory.Quantity);
					
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
		
		
		public int UpdateLocationPartQty(Inventory inventory)
		{
			using(SqlConnection dbConn = new SqlConnection(connStr))
			{
				dbConn.Open();
				SqlCommand cmd = new SqlCommand("UPDATE Inventory SET qty=@qty" +
				                                " WHERE invLocId=@invLocId" + 
				                                " AND partId=@partId", dbConn);
				
				try
				{
					cmd.Parameters.AddWithValue("@qty", inventory.Quantity);
					cmd.Parameters.AddWithValue("@invLocId", inventory.LocationID);
					cmd.Parameters.AddWithValue("@partId", inventory.PartID);
					
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
		
		
		public int Delete(Inventory inventory)
		{
			using(SqlConnection dbConn = new SqlConnection(connStr))
			{
				dbConn.Open();
				SqlCommand cmd = new SqlCommand("DELETE FROM Inventory WHERE invId=@invId", dbConn);
				
				try
				{
					cmd.Parameters.AddWithValue("@invId", inventory.ID);
					
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
		
		
		public float PartCount(Inventory inventory)
		{
			using(SqlConnection dbConn = new SqlConnection(connStr))
			{
				dbConn.Open();
				SqlCommand cmd = new SqlCommand("SELECT SUM(qty) FROM Inventory WHERE partId=@partId", dbConn);
				
				try
				{
					cmd.Parameters.AddWithValue("@partId", inventory.PartID);
					
					object o = cmd.ExecuteScalar();
					
					if(o == DBNull.Value)
					{
						return 0;
					}
					else
					{
						return Convert.ToSingle(o);
					}
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

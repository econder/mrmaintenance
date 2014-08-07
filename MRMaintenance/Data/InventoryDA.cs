﻿/***************************************************************************************************
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
	}
}

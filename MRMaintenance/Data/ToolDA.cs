/***************************************************************************************************
 * Class:   	ToolDA.cs
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
	/// Description of ToolDA.
	/// </summary>
	public class ToolDA
	{
		private string connStr;
		
		
		public ToolDA()
		{
			connStr = ConfigurationManager.ConnectionStrings["MRMaintenance.Properties.Settings.MRMaintenanceSql"].ConnectionString;
		}
		
		
		public DataTable Load()
		{
			using(SqlConnection dbConn = new SqlConnection(connStr))
			{
				dbConn.Open();
				SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM Tools", dbConn);
				
				DataTable dt = new DataTable("Tools");
				
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
		
		
		public int Insert(Tool tool)
		{
			using(SqlConnection dbConn = new SqlConnection(connStr))
			{
				dbConn.Open();
				SqlCommand cmd = new SqlCommand("INSERT INTO Tools(name, descr, invLocId, qty)" +
				                                " VALUES(@name, @descr, @invLocId, @qty)", dbConn);
				
				try
				{
					cmd.Parameters.AddWithValue("@name", tool.Name);
					cmd.Parameters.AddWithValue("@descr", tool.Description);
					cmd.Parameters.AddWithValue("@invLocId", tool.InventoryLocationID);
					cmd.Parameters.AddWithValue("@qty", tool.Quantity);
					
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
		
		
		public int Update(Tool tool)
		{
			using(SqlConnection dbConn = new SqlConnection(connStr))
			{
				dbConn.Open();
				SqlCommand cmd = new SqlCommand("UPDATE Tools SET name=@name, descr=@descr, invLocId=@invLocId, qty=@qty" +
				                                " WHERE toolId=@toolId", dbConn);
				
				try
				{
					cmd.Parameters.AddWithValue("@toolId", tool.ID);
					cmd.Parameters.AddWithValue("@name", tool.Name);
					cmd.Parameters.AddWithValue("@descr", tool.Description);
					cmd.Parameters.AddWithValue("@invLocId", tool.InventoryLocationID);
					cmd.Parameters.AddWithValue("@qty", tool.Quantity);
					
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
		
		
		public int Delete(Tool tool)
		{
			using(SqlConnection dbConn = new SqlConnection(connStr))
			{
				dbConn.Open();
				SqlCommand cmd = new SqlCommand("DELETE FROM Tools WHERE toolId=@toolId", dbConn);
				
				try
				{
					cmd.Parameters.AddWithValue("@toolId", tool.ID);
					
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

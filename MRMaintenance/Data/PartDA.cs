/***************************************************************************************************
 * Class:   	PartDA.cs
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
	/// Description of PartDA.
	/// </summary>
	public class PartDA
	{
		private string connStr;
		
		
		public PartDA()
		{
			connStr = Properties.Settings.Default.MRMaintenanceSql;
		}
		
		
		public DataTable Load()
		{
			using(SqlConnection dbConn = new SqlConnection(connStr))
			{
				dbConn.Open();
				SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM Parts ORDER BY partName", dbConn);
				
				DataTable dt = new DataTable("Parts");
				
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
		
		
		public int Insert(Part part)
		{
			using(SqlConnection dbConn = new SqlConnection(connStr))
			{
				dbConn.Open();
				SqlCommand cmd = new SqlCommand("INSERT INTO Parts(manId, venId, partName, partDescr, partNumber, partSize, unitId)" +
				                                " VALUES(@manId, @venId, @name, @descr, @number, @size, @unitId)", dbConn);
				
				try
				{
					cmd.Parameters.AddWithValue("@manId", part.ManufacturerID);
					cmd.Parameters.AddWithValue("@venId", part.VendorID);
					cmd.Parameters.AddWithValue("@name", part.Name);
					cmd.Parameters.AddWithValue("@descr", part.Description);
					cmd.Parameters.AddWithValue("@number", part.PartNumber);
					cmd.Parameters.AddWithValue("@size", part.Size);
					cmd.Parameters.AddWithValue("@unitId", part.SizeUnit);
					
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
		
		
		public int Update(Part part)
		{
			using(SqlConnection dbConn = new SqlConnection(connStr))
			{
				dbConn.Open();
				SqlCommand cmd = new SqlCommand("UPDATE Parts SET manId=@manId, venId=@venId, partName=@name, partDescr=@descr, partNumber=@number, partSize=@size, unitId=@unitId" +
				                                " WHERE partId=@partId", dbConn);
				
				try
				{
					cmd.Parameters.AddWithValue("@partId", part.ID);
					cmd.Parameters.AddWithValue("@manId", part.ManufacturerID);
					cmd.Parameters.AddWithValue("@venId", part.VendorID);
					cmd.Parameters.AddWithValue("@name", part.Name);
					cmd.Parameters.AddWithValue("@descr", part.Description);
					cmd.Parameters.AddWithValue("@number", part.PartNumber);
					cmd.Parameters.AddWithValue("@size", part.Size);
					cmd.Parameters.AddWithValue("@unitId", part.SizeUnit);
					
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
		
		
		public int Delete(Part part)
		{
			using(SqlConnection dbConn = new SqlConnection(connStr))
			{
				dbConn.Open();
				SqlCommand cmd = new SqlCommand("DELETE FROM Parts WHERE partId=@partId", dbConn);
				
				try
				{
					cmd.Parameters.AddWithValue("@partId", part.ID);
					
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

/***************************************************************************************************
 * Class:   	VendorDA.cs
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
	/// Description of Vendors.
	/// </summary>
	public class VendorDA
	{
		private string connStr;
		
		public VendorDA()
		{
			connStr = Properties.Settings.Default.MRMaintenanceSql;
		}
		
		
		public DataTable Load()
		{
			using(SqlConnection dbConn = new SqlConnection(connStr))
			{
				dbConn.Open();
				SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM Vendors ORDER BY name", dbConn);
				
				DataTable dt = new DataTable("Vendors");
				
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
		
		
		public int Insert(Vendor vendor)
		{
			using(SqlConnection dbConn = new SqlConnection(connStr))
			{
				dbConn.Open();
				SqlCommand cmd = new SqlCommand("INSERT INTO Vendors(name, addr1, addr2, city, stateId, zip, phone1, phone2, fax, web)" +
				                                " VALUES(@name, @addr1, @addr2, @city, @stateId, @zip, @phone1, @phone2, @fax, @web)", dbConn);
				
				try
				{
					cmd.Parameters.AddWithValue("@name", vendor.Name);
					cmd.Parameters.AddWithValue("@addr1", vendor.Address1);
					cmd.Parameters.AddWithValue("@addr2", vendor.Address2);
					cmd.Parameters.AddWithValue("@city", vendor.City);
                    if (vendor.StateID != null) { cmd.Parameters.AddWithValue("@stateId", vendor.StateID); } else { cmd.Parameters.AddWithValue("@stateId", DBNull.Value); }
					cmd.Parameters.AddWithValue("@zip", vendor.Zipcode);
					cmd.Parameters.AddWithValue("@phone1", vendor.Phone1);
					cmd.Parameters.AddWithValue("@phone2", vendor.Phone2);
					cmd.Parameters.AddWithValue("@fax", vendor.Fax);
					cmd.Parameters.AddWithValue("@web", vendor.Website);
					
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
		
		
		public int Update(Vendor vendor)
		{
			using(SqlConnection dbConn = new SqlConnection(connStr))
			{
				dbConn.Open();
				SqlCommand cmd = new SqlCommand("UPDATE Vendors SET name=@name, addr1=@addr1, addr2=@addr2, city=@city, stateId=@stateId, zip=@zip, phone1=@phone1, phone2=@phone2, fax=@fax, web=@web" +
				                                " WHERE venId=@venId", dbConn);
				
				try
				{
					cmd.Parameters.AddWithValue("@venId", vendor.ID);
					cmd.Parameters.AddWithValue("@name", vendor.Name);
					cmd.Parameters.AddWithValue("@addr1", vendor.Address1);
					cmd.Parameters.AddWithValue("@addr2", vendor.Address2);
					cmd.Parameters.AddWithValue("@city", vendor.City);
                    if (vendor.StateID != null) { cmd.Parameters.AddWithValue("@stateId", vendor.StateID); } else { cmd.Parameters.AddWithValue("@stateId", DBNull.Value); }
					cmd.Parameters.AddWithValue("@zip", vendor.Zipcode);
					cmd.Parameters.AddWithValue("@phone1", vendor.Phone1);
					cmd.Parameters.AddWithValue("@phone2", vendor.Phone2);
					cmd.Parameters.AddWithValue("@fax", vendor.Fax);
					cmd.Parameters.AddWithValue("@web", vendor.Website);
					
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
		
		
		public int Delete(Vendor vendor)
		{
			using(SqlConnection dbConn = new SqlConnection(connStr))
			{
				dbConn.Open();
				SqlCommand cmd = new SqlCommand("DELETE FROM Vendors WHERE venId=@venId", dbConn);
				
				try
				{
					cmd.Parameters.AddWithValue("@venId", vendor.ID);
					
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

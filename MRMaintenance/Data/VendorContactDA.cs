/***************************************************************************************************
 * Class:   	VendorContactDA.cs
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
	/// Description of VendorContacts.
	/// </summary>
	public class VendorContactDA
	{
		private string connStr;
		
		public VendorContactDA()
		{
			connStr = Properties.Settings.Default.MRMaintenanceSql;
		}
		
		
		public DataTable Load()
		{
			using(SqlConnection dbConn = new SqlConnection(connStr))
			{
				dbConn.Open();
				SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM VendorContacts ORDER BY lastName", dbConn);
				
				DataTable dt = new DataTable("VendorContacts");
				
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
		
		
		public int Insert(VendorContact vendorContact)
		{
			using(SqlConnection dbConn = new SqlConnection(connStr))
			{
				dbConn.Open();
				SqlCommand cmd = new SqlCommand("INSERT INTO VendorContacts(venId, firstName, midName, lastName, title, phone1, phone2, fax, email)" +
				                                " VALUES(@venId, @firstName, @midName, @lastName, @title, @phone1, @phone2, @fax, @email)", dbConn);
				
				try
				{
					cmd.Parameters.AddWithValue("@venId", vendorContact.VendorID);
					cmd.Parameters.AddWithValue("@firstName", vendorContact.FirstName);
					cmd.Parameters.AddWithValue("@midName", vendorContact.MiddleName);
					cmd.Parameters.AddWithValue("@lastName", vendorContact.LastName);
					cmd.Parameters.AddWithValue("@title", vendorContact.Title);
					cmd.Parameters.AddWithValue("@phone1", vendorContact.Phone1);
					cmd.Parameters.AddWithValue("@phone2", vendorContact.Phone2);
					cmd.Parameters.AddWithValue("@fax", vendorContact.Fax);
					cmd.Parameters.AddWithValue("@email", vendorContact.Email);
					
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
		
		
		public int Update(VendorContact vendorContact)
		{
			using(SqlConnection dbConn = new SqlConnection(connStr))
			{
				dbConn.Open();
				SqlCommand cmd = new SqlCommand("UPDATE Vendors SET venId=@venId, firstName=@firstName, midName=@midName, lastName=@lastName, title=@title, phone1=@phone1, phone2=@phone2, fax=@fax, email=@email" +
				                                " WHERE venContId=@venContId", dbConn);
				
				try
				{
					cmd.Parameters.AddWithValue("@venContId", vendorContact.ID);
					cmd.Parameters.AddWithValue("@venId", vendorContact.VendorID);
					cmd.Parameters.AddWithValue("@firstName", vendorContact.FirstName);
					cmd.Parameters.AddWithValue("@midName", vendorContact.MiddleName);
					cmd.Parameters.AddWithValue("@lastName", vendorContact.LastName);
					cmd.Parameters.AddWithValue("@title", vendorContact.Title);
					cmd.Parameters.AddWithValue("@phone1", vendorContact.Phone1);
					cmd.Parameters.AddWithValue("@phone2", vendorContact.Phone2);
					cmd.Parameters.AddWithValue("@fax", vendorContact.Fax);
					cmd.Parameters.AddWithValue("@email", vendorContact.Email);
					
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
		
		
		public int Delete(VendorContact vendorContact)
		{
			using(SqlConnection dbConn = new SqlConnection(connStr))
			{	
			dbConn.Open();
			SqlCommand cmd = new SqlCommand("DELETE FROM VendorContacts WHERE venContId=@venContId", dbConn);
				
				try
				{
					cmd.Parameters.AddWithValue("@venContId", vendorContact.ID);
					
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

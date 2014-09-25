/***************************************************************************************************
 * Class:   	ManufacturerDA.cs
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
	/// Description of Manufacturers.
	/// </summary>
	public class ManufacturerDA
	{
		private string connStr;
		
		public ManufacturerDA()
		{
			connStr = ConfigurationManager.ConnectionStrings["MRMaintenanceSQL"].ConnectionString;
		}
		
		
		public DataTable Load()
		{
			using(SqlConnection dbConn = new SqlConnection(connStr))
			{
				dbConn.Open();
				SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM Manufacturers ORDER BY name", dbConn);
				
				DataTable dt = new DataTable("Manufacturers");
				
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
		
		
		public int Insert(Manufacturer manufacturer)
		{
			using(SqlConnection dbConn = new SqlConnection(connStr))
			{
				dbConn.Open();
				SqlCommand cmd = new SqlCommand("INSERT INTO Manufacturers(name, addr1, addr2, city, stateId, zip, phone1, phone2, fax, web)" +
				                                " VALUES(@name, @addr1, @addr2, @city, @stateId, @zip, @phone1, @phone2, @fax, @web)", dbConn);
				
				try
				{
					cmd.Parameters.AddWithValue("@name", manufacturer.Name);
			cmd.Parameters.AddWithValue("@addr1", manufacturer.Address1);
			cmd.Parameters.AddWithValue("@addr2", manufacturer.Address2);
			cmd.Parameters.AddWithValue("@city", manufacturer.City);
			cmd.Parameters.AddWithValue("@stateId", manufacturer.StateID);
			cmd.Parameters.AddWithValue("@zip", manufacturer.Zipcode);
			cmd.Parameters.AddWithValue("@phone1", manufacturer.Phone1);
			cmd.Parameters.AddWithValue("@phone2", manufacturer.Phone2);
			cmd.Parameters.AddWithValue("@fax", manufacturer.Fax);
			cmd.Parameters.AddWithValue("@web", manufacturer.Website);
					
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
		
		
		public int Update(Manufacturer manufacturer)
		{
			using(SqlConnection dbConn = new SqlConnection(connStr))
			{
				dbConn.Open();
				SqlCommand cmd = new SqlCommand("UPDATE Manufacturers SET name=@name, addr1=@addr1, addr2=@addr2, city=@city, stateId=@stateId, zip=@zip, phone1=@phone1, phone2=@phone2, fax=@fax, web=@web" +
				                                " WHERE manId=@manId", dbConn);
				
				try
				{
					cmd.Parameters.AddWithValue("@manId", manufacturer.ID);
					cmd.Parameters.AddWithValue("@name", manufacturer.Name);
					cmd.Parameters.AddWithValue("@addr1", manufacturer.Address1);
					cmd.Parameters.AddWithValue("@addr2", manufacturer.Address2);
					cmd.Parameters.AddWithValue("@city", manufacturer.City);
					cmd.Parameters.AddWithValue("@stateId", manufacturer.StateID);
					cmd.Parameters.AddWithValue("@zip", manufacturer.Zipcode);
					cmd.Parameters.AddWithValue("@phone1", manufacturer.Phone1);
					cmd.Parameters.AddWithValue("@phone2", manufacturer.Phone2);
					cmd.Parameters.AddWithValue("@fax", manufacturer.Fax);
					cmd.Parameters.AddWithValue("@web", manufacturer.Website);
					
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
		
		
		public int Delete(Manufacturer manufacturer)
		{
			using(SqlConnection dbConn = new SqlConnection(connStr))
			{
				dbConn.Open();
				SqlCommand cmd = new SqlCommand("DELETE FROM Manufacturers WHERE manId=@manId", dbConn);
				
				try
				{
					cmd.Parameters.AddWithValue("@manId", manufacturer.ID);
					
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

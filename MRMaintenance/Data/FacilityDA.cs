/***************************************************************************************************
 * Class:   	FacilityDA.cs
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
using System.Diagnostics;

using MRMaintenance.BusinessObjects;


namespace MRMaintenance.Data
{
	/// <summary>
	/// Description of Facilities.
	/// </summary>
	public class FacilityDA
	{
		private string connStr;
		
		
		public FacilityDA()
		{
<<<<<<< HEAD
=======
			/*
>>>>>>> origin/master
			try
			{
				connStr = ConfigurationManager.ConnectionStrings["MRMaintenanceSQL"].ConnectionString.ToString();
			}
			catch
			{
				throw;
			}
<<<<<<< HEAD
=======
			*/
>>>>>>> origin/master
		}
		
		
		public DataTable Load()
		{
<<<<<<< HEAD
			using(SqlConnection dbConn = new SqlConnection(connStr))
			{
				//SqlConnection dbConn = new SqlConnection("Server=.;Database=MRMaintenance;User Id=mrsystems;Password=Reggie123;");
=======
			//using(SqlConnection dbConn = new SqlConnection(connStr))
			//{
				SqlConnection dbConn = new SqlConnection("Server=.;Database=MRMaintenance;User Id=mrsystems;Password=Reggie123;");
			
>>>>>>> origin/master
				SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM Facilities", dbConn);
				
				DataTable dt = new DataTable("Facilities");
				
				try
				{
					da.Fill(dt);
					return dt;
				}
				catch(Exception ex)
				{
					Debug.Print(Convert.ToString(ex.HResult));
					return null;
				}
				finally
				{
					dt.Dispose();
					da.Dispose();
					dbConn.Close();
					dbConn.Dispose();
				}
<<<<<<< HEAD
			}
=======
			//}
>>>>>>> origin/master
		}
		
		
		public int Insert(Facility facility)
		{
			using(SqlConnection dbConn = new SqlConnection(connStr))
			{
				dbConn.Open();
				SqlCommand cmd = new SqlCommand("INSERT INTO Facilities(name, addr1, addr2, city, stateId, zip, phone1, phone2, fax, lat, long)" +
				                                " VALUES(@name, @addr1, @addr2, @city, @stateId, @zip, @phone1, @phone2, @fax, @lat, @long)", dbConn);
				
				try
				{
					cmd.Parameters.AddWithValue("@name", facility.Name);
					cmd.Parameters.AddWithValue("@addr1", facility.Address1);
					cmd.Parameters.AddWithValue("@addr2", facility.Address2);
					cmd.Parameters.AddWithValue("@city", facility.City);
					cmd.Parameters.AddWithValue("@stateId", facility.StateID);
					cmd.Parameters.AddWithValue("@zip", facility.Zipcode);
					cmd.Parameters.AddWithValue("@phone1", facility.Phone1);
					cmd.Parameters.AddWithValue("@phone2", facility.Phone2);
					cmd.Parameters.AddWithValue("@fax", facility.Fax);
					cmd.Parameters.AddWithValue("@lat", facility.Latitude);
					cmd.Parameters.AddWithValue("@long", facility.Longitude);
					
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
		
		
		public int Update(Facility facility)
		{
			using(SqlConnection dbConn = new SqlConnection(connStr))
			{
				dbConn.Open();
				SqlCommand cmd = new SqlCommand("UPDATE Facilities SET name=@name, addr1=@addr1, addr2=@addr2, city=@city, stateId=@stateId, zip=@zip, phone1=@phone1, phone2=@phone2, fax=@fax, lat=@lat, long=@long" +
				                                " WHERE facId=@facId", dbConn);
				
				try
				{
					cmd.Parameters.AddWithValue("@facId", facility.ID);
					cmd.Parameters.AddWithValue("@name", facility.Name);
					cmd.Parameters.AddWithValue("@addr1", facility.Address1);
					cmd.Parameters.AddWithValue("@addr2", facility.Address2);
					cmd.Parameters.AddWithValue("@city", facility.City);
					cmd.Parameters.AddWithValue("@stateId", facility.StateID);
					cmd.Parameters.AddWithValue("@zip", facility.Zipcode);
					cmd.Parameters.AddWithValue("@phone1", facility.Phone1);
					cmd.Parameters.AddWithValue("@phone2", facility.Phone2);
					cmd.Parameters.AddWithValue("@fax", facility.Fax);
					cmd.Parameters.AddWithValue("@lat", facility.Latitude);
					cmd.Parameters.AddWithValue("@long", facility.Longitude);
					
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
		
		
		public int Delete(Facility facility)
		{
			using(SqlConnection dbConn = new SqlConnection(connStr))
			{
				dbConn.Open();
				SqlCommand cmd = new SqlCommand("DELETE FROM Facilities WHERE facId=@facId", dbConn);
				
				try
				{
					cmd.Parameters.AddWithValue("@facId", facility.ID);
					
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

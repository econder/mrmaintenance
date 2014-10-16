/***************************************************************************************************
 * Class:   	LocationDA.cs
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
	/// Description of Locations.
	/// </summary>
	public class LocationDA
	{
		private string connStr;
		
		public LocationDA()
		{
			connStr = Properties.Settings.Default.MRMaintenanceSql;
		}
		
		
		public DataTable Load()
		{
			using(SqlConnection dbConn = new SqlConnection(connStr))
			{
				dbConn.Open();
				SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM Locations ORDER BY name", dbConn);
				
				DataTable dt = new DataTable("Locations");
				
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
		
		
		public DataTable LoadByFacility(Facility facility)
		{
			using(SqlConnection dbConn = new SqlConnection(connStr))
			{
				dbConn.Open();
				SqlCommand cmd = new SqlCommand("SELECT * FROM Locations WHERE facId=@facId ORDER BY name", dbConn);
				cmd.Parameters.AddWithValue("@facId", facility.ID);
				
				SqlDataAdapter da = new SqlDataAdapter(cmd);
				DataTable dt = new DataTable("FacilityLocations");
				
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
		
		
		public int Insert(Location location)
		{
			using(SqlConnection dbConn = new SqlConnection(connStr))
			{
				dbConn.Open();
				SqlCommand cmd = new SqlCommand("INSERT INTO Locations(facId, name, addr1, addr2, city, stateId, zip, lat, long)" +
				                                " VALUES(@facId, @name, @addr1, @addr2, @city, @stateId, @zip, @lat, @long)", dbConn);
				
				try
				{
					cmd.Parameters.AddWithValue("@facId", location.FacilityID);
					cmd.Parameters.AddWithValue("@name", location.Name);
					cmd.Parameters.AddWithValue("@addr1", location.Address1);
					cmd.Parameters.AddWithValue("@addr2", location.Address2);
                    cmd.Parameters.AddWithValue("@city", location.City);
                    if (location.StateID != null) { cmd.Parameters.AddWithValue("@stateId", location.StateID); } else { cmd.Parameters.AddWithValue("stateId", DBNull.Value); }
					cmd.Parameters.AddWithValue("@zip", location.Zipcode);
                    if (location.Latitude != null) { cmd.Parameters.AddWithValue("@lat", location.Latitude); } else { cmd.Parameters.AddWithValue("@lat", DBNull.Value); }
                    if (location.Longitude != null) { cmd.Parameters.AddWithValue("@long", location.Longitude); } else { cmd.Parameters.AddWithValue("@long", DBNull.Value); }
					
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
		
		
		public int Update(Location location)
		{
			using(SqlConnection dbConn = new SqlConnection(connStr))
			{
				dbConn.Open();
				SqlCommand cmd = new SqlCommand("UPDATE Locations SET facId=@facId, name=@name, addr1=@addr1, addr2=@addr2, city=@city, stateId=@stateId, zip=@zip, lat=@lat, long=@long" +
				                                " WHERE locId=@locId", dbConn);
				
				try
				{
					cmd.Parameters.AddWithValue("@locId", location.ID);
					cmd.Parameters.AddWithValue("@facId", location.FacilityID);
					cmd.Parameters.AddWithValue("@name", location.Name);
					cmd.Parameters.AddWithValue("@addr1", location.Address1);
					cmd.Parameters.AddWithValue("@addr2", location.Address2);
                    cmd.Parameters.AddWithValue("@city", location.City);
                    if (location.StateID != null) { cmd.Parameters.AddWithValue("@stateId", location.StateID); } else { cmd.Parameters.AddWithValue("stateId", DBNull.Value); }
                    cmd.Parameters.AddWithValue("@zip", location.Zipcode);
                    if (location.Latitude != null) { cmd.Parameters.AddWithValue("@lat", location.Latitude); } else { cmd.Parameters.AddWithValue("@lat", DBNull.Value); }
                    if (location.Longitude != null) { cmd.Parameters.AddWithValue("@long", location.Longitude); } else { cmd.Parameters.AddWithValue("@long", DBNull.Value); }
					
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
		
		
		public int Delete(Location location)
		{
			using(SqlConnection dbConn = new SqlConnection(connStr))
			{
				dbConn.Open();
				SqlCommand cmd = new SqlCommand("DELETE FROM Locations WHERE locId=@locId", dbConn);
				
				try
				{
					cmd.Parameters.AddWithValue("@locId", location.ID);
					
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

/***************************************************************************************************
 * Class:   	Locations.cs
 * Created By: 	Eric Conder
 * Created On: 	7/23/2014
 * 
 * Changes:
 * 
 *
 * *************************************************************************************************/
using System;
using System.Data;
using System.Data.SqlClient;

using MRMaintenance.Data.Sql;


namespace MRMaintenance.Data
{
	/// <summary>
	/// Description of Locations.
	/// </summary>
	public class Locations
	{
		protected Locations()
		{
		}
		
		
		protected Locations(long id, long facilityId, string name, string address1, string address2, 
		                    string city, long stateId, string zipcode, Nullable<float> latitude, Nullable<float> longitude)
		{
			this.Id = id;
			this.FacilityId = facilityId;
			this.Name = name;
			this.Address1 = address1;
			this.Address2 = address2;
			this.City = city;
			this.Zipcode = zipcode;
			this.Latitude = latitude;
			this.Longitude = longitude;
		}
		
		
		protected SqlDataAdapter LocationsTable()
		{
			SqlDataAdapter da = new SqlDataAdapter();
			
			//SELECT
			da.SelectCommand.CommandText = "SELECT * FROM Locations ORDER BY name";
			
			//INSERT
			da.InsertCommand.CommandText = "INSERT INTO Locations(facId, name, addr1, addr2, city, stateId, zip, lat, long)" +
											" VALUES(@facId, @name, @addr1, @addr2, @city, @stateId, @zip, @lat, @long)";
			
			da.InsertCommand.Parameters.AddWithValue("@facId", this.FacilityId);
			da.InsertCommand.Parameters.AddWithValue("@name", this.Name);
			da.InsertCommand.Parameters.AddWithValue("@addr1", this.Address1);
			da.InsertCommand.Parameters.AddWithValue("@addr2", this.Address2);
			da.InsertCommand.Parameters.AddWithValue("@city", this.City);
			da.InsertCommand.Parameters.AddWithValue("@stateId", this.StateId);
			da.InsertCommand.Parameters.AddWithValue("@zip", this.Zipcode);
			da.InsertCommand.Parameters.AddWithValue("@lat", this.Latitude);
			da.InsertCommand.Parameters.AddWithValue("@long", this.Longitude);
			
			//UPDATE
			da.UpdateCommand.CommandText = "UPDATE Locations SET facId=@facId, name=@name, addr1=@addr1, addr2=@addr2, city=@city, stateId=@stateId, zip=@zip, lat=@lat, long=@long)" +
											" WHERE locId=@locId";
			
			da.UpdateCommand.Parameters.AddWithValue("@locId", this.Id);
			da.UpdateCommand.Parameters.AddWithValue("@facId", this.FacilityId);
			da.UpdateCommand.Parameters.AddWithValue("@name", this.Name);
			da.UpdateCommand.Parameters.AddWithValue("@addr1", this.Address1);
			da.UpdateCommand.Parameters.AddWithValue("@addr2", this.Address2);
			da.UpdateCommand.Parameters.AddWithValue("@city", this.City);
			da.UpdateCommand.Parameters.AddWithValue("@stateId", this.StateId);
			da.UpdateCommand.Parameters.AddWithValue("@zip", this.Zipcode);
			da.UpdateCommand.Parameters.AddWithValue("@lat", this.Latitude);
			da.UpdateCommand.Parameters.AddWithValue("@long", this.Longitude);
			
			//DELETE
			da.DeleteCommand.CommandText = "DELETE FROM Locations WHERE locId=@locId";
			
			da.DeleteCommand.Parameters.AddWithValue("@locId", this.Id);
			
			return da;
		}
		
		
		protected long Id { get; set; }
		protected long FacilityId { get; set; }
		protected string Name { get; set; }
		protected string Address1 { get; set; }
		protected string Address2 { get; set; }
		protected string City { get; set; }
		protected long StateId { get; set; }
		protected string Zipcode { get; set; }
		protected Nullable<float> Latitude { get; set; }
		protected Nullable<float> Longitude { get; set; }
	}
}

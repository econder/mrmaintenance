/***************************************************************************************************
 * Class:   	Facilities.cs
 * Created By: 	Eric Conder
 * Created On: 	7/23/2014
 * 
 * Changes:
 * 
 *
 * *************************************************************************************************/
using System;
using System.Data.SqlClient;

using MRMaintenance.Data.Sql;


namespace MRMaintenance.Data
{
	/// <summary>
	/// Description of Facilities.
	/// </summary>
	public class Facilities
	{
		protected Facilities()
		{
		}
		
		
		protected Facilities(long id, string name, string address1, string address2, string city, 
		                     long stateID, string zipcode, string phone1, string phone2, string fax)
		{
			this.Id = id;
			this.Name = name;
			this.Address1 = address1;
			this.Address2 = address2;
			this.City = city;
			this.StateId = stateID;
			this.Zipcode = zipcode;
			this.Phone1 = phone1;
			this.Phone2 = phone2;
			this.Fax = fax;
		}
		
		
		protected SqlDataAdapter FacilitiesTable()
		{
			SqlDataAdapter da = new SqlDataAdapter();
			
			//SELECT
			da.SelectCommand.CommandText = "SELECT * FROM Facilities ORDER BY name";
			
			//INSERT
			da.InsertCommand.CommandText = "INSERT INTO Facilities(name, addr1, addr2, city, stateId, zip, phone1, phone2, fax)" +
											" VALUES(@name, @addr1, @addr2, @city, @stateId, @zip, @phone1, @phone2, @fax)";
			
			da.InsertCommand.Parameters.AddWithValue("@facId", this.Id);
			da.InsertCommand.Parameters.AddWithValue("@name", this.Name);
			da.InsertCommand.Parameters.AddWithValue("@addr1", this.Address1);
			da.InsertCommand.Parameters.AddWithValue("@addr2", this.Address2);
			da.InsertCommand.Parameters.AddWithValue("@city", this.City);
			da.InsertCommand.Parameters.AddWithValue("@stateId", this.StateId);
			da.InsertCommand.Parameters.AddWithValue("@zip", this.Zipcode);
			da.InsertCommand.Parameters.AddWithValue("@phone1", this.Phone1);
			da.InsertCommand.Parameters.AddWithValue("@phone2", this.Phone2);
			da.InsertCommand.Parameters.AddWithValue("@fax", this.Fax);
			
			//UPDATE
			da.UpdateCommand.CommandText = "UPDATE Facilities SET name=@name, addr1=@addr1, addr2=@addr2, city=@city, stateId=@stateId, zip=@zip, phone1=@phone1, phone2=@phone2, fax=@fax" +
											" WHERE facId=@facId";
			
			da.UpdateCommand.Parameters.AddWithValue("@facId", this.Id);
			da.UpdateCommand.Parameters.AddWithValue("@name", this.Name);
			da.UpdateCommand.Parameters.AddWithValue("@addr1", this.Address1);
			da.UpdateCommand.Parameters.AddWithValue("@addr2", this.Address2);
			da.UpdateCommand.Parameters.AddWithValue("@city", this.City);
			da.UpdateCommand.Parameters.AddWithValue("@stateId", this.StateId);
			da.UpdateCommand.Parameters.AddWithValue("@zip", this.Zipcode);
			da.UpdateCommand.Parameters.AddWithValue("@phone1", this.Phone1);
			da.UpdateCommand.Parameters.AddWithValue("@phone2", this.Phone2);
			da.UpdateCommand.Parameters.AddWithValue("@fax", this.Fax);
			
			//DELETE
			da.DeleteCommand.CommandText = "DELETE FROM Facilities WHERE facId=@facId";
			
			da.DeleteCommand.Parameters.AddWithValue("@facId", this.Id);
			
			return da;
		}
		
		
		//Properties
		protected long Id { get; set; }
		protected string Name { get; set; }
		protected string Address1 { get; set; }
		protected string Address2 { get; set; }
		protected string City { get; set; }
		protected long StateId { get; set; }
		protected string Zipcode { get; set; }
		protected string Phone1 { get; set; }
		protected string Phone2 { get; set; }
		protected string Fax { get; set; }
	}
}

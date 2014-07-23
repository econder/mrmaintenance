/***************************************************************************************************
 * Class:   	Manufacturers.cs
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
	/// Description of Manufacturers.
	/// </summary>
	public class Manufacturers
	{
		protected Manufacturers()
		{
		}
		
		protected Manufacturers(string name, string address1, string address2, string city, 
		                     long stateID, string zipcode, string phone1, string phone2, string fax, string website)
		{
			this.Name = name;
			this.Address1 = address1;
			this.Address2 = address2;
			this.City = city;
			this.StateId = stateID;
			this.Zipcode = zipcode;
			this.Phone1 = phone1;
			this.Phone2 = phone2;
			this.Fax = fax;
			this.Website = website;
		}
		
		
		protected SqlDataAdapter ManufacturersTable()
		{
			SqlDataAdapter da = new SqlDataAdapter();
			
			//SELECT
			da.SelectCommand.CommandText = "SELECT * FROM Manufacturers ORDER BY name";
			
			//INSERT
			da.InsertCommand.CommandText = "INSERT INTO Manufacturers(name, addr1, addr2, city, stateId, zip, phone1, phone2, fax, web)" +
											" VALUES(@name, @addr1, @addr2, @city, @stateId, @zip, @phone1, @phone2, @fax, @web)";
			
			da.InsertCommand.Parameters.Add("@name", this.LocationName);
			da.InsertCommand.Parameters.Add("@addr1", this.Address1);
			da.InsertCommand.Parameters.Add("@addr2", this.Address2);
			da.InsertCommand.Parameters.Add("@city", this.City);
			da.InsertCommand.Parameters.Add("@stateId", this.StateId);
			da.InsertCommand.Parameters.Add("@zip", this.Zipcode);
			da.InsertCommand.Parameters.Add("@phone1", this.Phone1);
			da.InsertCommand.Parameters.Add("@phone2", this.Phone2);
			da.InsertCommand.Parameters.Add("@fax", this.Fax);
			da.InsertCommand.Parameters.Add("@web", this.Website);
			
			//UPDATE
			da.UpdateCommand.CommandText = "UPDATE Manufacturers SET name=@name, addr1=@addr1, addr2=@addr2, city=@city, stateId=@stateId, zip=@zip, phone1=@phone1, phone2=@phone2, fax=@fax, web=@web" +
											" WHERE manId=@manId";
			
			da.UpdateCommand.Parameters.Add("@manId", this.Id);
			da.UpdateCommand.Parameters.Add("@name", this.Name);
			da.UpdateCommand.Parameters.Add("@addr1", this.Address1);
			da.UpdateCommand.Parameters.Add("@addr2", this.Address2);
			da.UpdateCommand.Parameters.Add("@city", this.City);
			da.UpdateCommand.Parameters.Add("@stateId", this.StateId);
			da.UpdateCommand.Parameters.Add("@zip", this.Zipcode);
			da.UpdateCommand.Parameters.Add("@phone1", this.Phone1);
			da.UpdateCommand.Parameters.Add("@phone2", this.Phone2);
			da.UpdateCommand.Parameters.Add("@fax", this.Fax);
			da.UpdateCommand.Parameters.Add("@web", this.Website);
			
			//DELETE
			da.DeleteCommand.CommandText = "DELETE FROM Manufacturers WHERE manId=@manId";
			
			da.DeleteCommand.Parameters.Add("@manId", this.Id);
			
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
		protected string Website { get; set; }
	}
}

/***************************************************************************************************
 * Class:   	VendorContacts.cs
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
	/// Description of VendorContacts.
	/// </summary>
	public class VendorContacts
	{
		protected VendorContacts()
		{
		}
		
		
		protected VendorContacts(long vendorId, string firstName, string middleName, string lastName, string title, 
		                         string phone1, string phone2, string fax, string email)
		{
			this.VendorId = vendorId;
			this.FirstName = firstName;
			this.MiddleName = middleName;
			this.LastName = lastName;
			this.Title = title;
			this.Phone1 = phone1;
			this.Phone2 = phone2;
			this.Fax = fax;
			this.Email = email;
		}
		
		
		protected SqlDataAdapter VendorContactsTable()
		{
			SqlDataAdapter da = new SqlDataAdapter();
			
			//SELECT
			da.SelectCommand.CommandText = "SELECT * FROM VendorContacts ORDER BY lastName";
			
			//INSERT
			da.InsertCommand.CommandText = "INSERT INTO VendorContacts(venId, firstName, midName, lastName, title, phone1, phone2, fax, email)" +
											" VALUES(@venId, @firstName, @midName, @lastName, @title, @phone1, @phone2, @fax, @email)";
			
			da.InsertCommand.Parameters.AddWithValue("@venId", this.VendorId);
			da.InsertCommand.Parameters.AddWithValue("@firstName", this.FirstName);
			da.InsertCommand.Parameters.AddWithValue("@midName", this.MiddleName);
			da.InsertCommand.Parameters.AddWithValue("@lastName", this.LastName);
			da.InsertCommand.Parameters.AddWithValue("@title", this.Title);
			da.InsertCommand.Parameters.AddWithValue("@phone1", this.Phone1);
			da.InsertCommand.Parameters.AddWithValue("@phone2", this.Phone2);
			da.InsertCommand.Parameters.AddWithValue("@fax", this.Fax);
			da.InsertCommand.Parameters.AddWithValue("@email", this.Email);
			
			//UPDATE
			da.UpdateCommand.CommandText = "UPDATE Vendors SET venId=@venId, firstName=@firstName, midName=@midName, lastName=@lastName, title=@title, phone1=@phone1, phone2=@phone2, fax=@fax, email=@email" +
											" WHERE venContId=@venContId";
			
			da.UpdateCommand.Parameters.AddWithValue("@venContId", this.Id);
			da.UpdateCommand.Parameters.AddWithValue("@venId", this.VendorId);
			da.UpdateCommand.Parameters.AddWithValue("@firstName", this.FirstName);
			da.UpdateCommand.Parameters.AddWithValue("@midName", this.MiddleName);
			da.UpdateCommand.Parameters.AddWithValue("@lastName", this.LastName);
			da.UpdateCommand.Parameters.AddWithValue("@title", this.Title);
			da.UpdateCommand.Parameters.AddWithValue("@phone1", this.Phone1);
			da.UpdateCommand.Parameters.AddWithValue("@phone2", this.Phone2);
			da.UpdateCommand.Parameters.AddWithValue("@fax", this.Fax);
			da.UpdateCommand.Parameters.AddWithValue("@email", this.Email);
			
			//DELETE
			da.DeleteCommand.CommandText = "DELETE FROM VendorContacts WHERE venContId=@venContId";
			
			da.DeleteCommand.Parameters.AddWithValue("@venContId", this.Id);
			
			return da;
		}
		
		
		//Properties
		protected long Id { get; set; }
		protected long VendorId { get; set; }
		protected string FirstName { get; set; }
		protected string MiddleName { get; set; }
		protected string LastName { get; set; }
		protected string Title { get; set; }
		protected string Phone1 { get; set; }
		protected string Phone2 { get; set; }
		protected string Fax { get; set; }
		protected string Email { get; set; }
	}
}

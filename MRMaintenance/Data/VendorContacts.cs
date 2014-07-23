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
			
			da.InsertCommand.Parameters.Add("@venId", this.VendorId);
			da.InsertCommand.Parameters.Add("@firstName", this.FirstName);
			da.InsertCommand.Parameters.Add("@midName", this.MiddleName);
			da.InsertCommand.Parameters.Add("@lastName", this.LastName);
			da.InsertCommand.Parameters.Add("@title", this.Title);
			da.InsertCommand.Parameters.Add("@phone1", this.Phone1);
			da.InsertCommand.Parameters.Add("@phone2", this.Phone2);
			da.InsertCommand.Parameters.Add("@fax", this.Fax);
			da.InsertCommand.Parameters.Add("@email", this.Email);
			
			//UPDATE
			da.UpdateCommand.CommandText = "UPDATE Vendors SET venId=@venId, firstName=@firstName, midName=@midName, lastName=@lastName, title=@title, phone1=@phone1, phone2=@phone2, fax=@fax, email=@email" +
											" WHERE venContId=@venContId";
			
			da.UpdateCommand.Parameters.Add("@venContId", this.Id);
			da.UpdateCommand.Parameters.Add("@venId", this.VendorId);
			da.UpdateCommand.Parameters.Add("@firstName", this.FirstName);
			da.UpdateCommand.Parameters.Add("@midName", this.MiddleName);
			da.UpdateCommand.Parameters.Add("@lastName", this.LastName);
			da.UpdateCommand.Parameters.Add("@title", this.Title);
			da.UpdateCommand.Parameters.Add("@phone1", this.Phone1);
			da.UpdateCommand.Parameters.Add("@phone2", this.Phone2);
			da.UpdateCommand.Parameters.Add("@fax", this.Fax);
			da.UpdateCommand.Parameters.Add("@email", this.Email);
			
			//DELETE
			da.DeleteCommand.CommandText = "DELETE FROM VendorContacts WHERE venContId=@venContId";
			
			da.DeleteCommand.Parameters.Add("@venContId", this.Id);
			
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

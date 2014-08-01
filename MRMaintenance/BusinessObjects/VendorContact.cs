/***************************************************************************************************
 * Class:   	VendorContact.cs
 * Created By: 	Eric Conder
 * Created On: 	7/24/2014
 * 
 * Changes:
 * 
 *
 * *************************************************************************************************/
using System;


namespace MRMaintenance.BusinessObjects
{
	/// <summary>
	/// Description of VendorContact.
	/// </summary>
	[System.ComponentModel.DataObject]
	public class VendorContact
	{
		public VendorContact()
		{
		}
		
		
		//Properties
		public long ID { get; set; }
		public long VendorID { get; set; }
		public string FirstName { get; set; }
		public string MiddleName { get; set; }
		public string LastName { get; set; }
		public string Title { get; set; }
		public string Phone1 { get; set; }
		public string Phone2 { get; set; }
		public string Fax { get; set; }
		public string Email { get; set; }
	}
}

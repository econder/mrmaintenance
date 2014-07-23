/***************************************************************************************************
 * Class:   	Equipment.cs
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
	/// Description of Equipment.
	/// </summary>
	public class Equipment
	{
		protected Equipment()
		{
		}
		
		
		protected Equipment(long id, long equipmentTypeId, long manufacturerId, long vendorId, string equipmentNumber, string name, 
		                    string equipmentSerial, string equipmentModel, string equipmentModelDescr)
		{
			this.LocationId = locationId;
			this.EquipmentTypeId = equipmentTypeId;
			this.ManufacturerId = manufacturerId;
			this.VendorId = vendorId;
			this.EquipmentNumber = equipmentNumber;
			this.EquipmentName = name;
			this.EquipmentSerial = equipmentSerial;
			this.EquipmentModel = equipmentModel;
			this.EquipmentModelDescr = equipmentModelDescr;
		}
		
		
		protected Equipment(Nullable<long> id, long locationId, long equipmentTypeId, long manufacturerId, long vendorId, string equipmentNumber, string name, 
		                    string serial, string model, string description)
		{
			this.Id = id;
			this.LocationId = locationId;
			this.EquipmentTypeId = equipmentTypeId;
			this.ManufacturerId = manufacturerId;
			this.VendorId = vendorId;
			this.EquipmentNumber = equipmentNumber;
			this.Name = name;
			this.Serial = serial;
			this.Model = model;
			this.Description = description;
		}
		
		
		protected static SqlDataAdapter EquipmentTable()
		{
			SqlDataAdapter da = new SqlDataAdapter();
			
			//SELECT
			da.SelectCommand.CommandText = "SELECT * FROM Equipment ORDER BY name";
			
			//INSERT
			da.InsertCommand.CommandText = "INSERT INTO Equipment(locId, equipTypeId, manId, vendorId, equipNumber, equipName, equipSerial, equipModel, equipModelDesc)" +
											" VALUES(@locId, @equipTypeId, @manId, @vendorId, @equipNumber, @equipName, @equipSerial, @equipModel, @equipModelDesc)";
			
			da.InsertCommand.Parameters.Add("@locId", this.LocationId);
			da.InsertCommand.Parameters.Add("@equipTypeId", this.EquipmentTypeId);
			da.InsertCommand.Parameters.Add("@manId", this.ManufacturerId);
			da.InsertCommand.Parameters.Add("@vendorId", this.VendorId);
			da.InsertCommand.Parameters.Add("@equipNumber", this.EquipmentNumber);
			da.InsertCommand.Parameters.Add("@equipName", this.Name);
			da.InsertCommand.Parameters.Add("@equipSerial", this.Serial);
			da.InsertCommand.Parameters.Add("@equipModel", this.Model);
			da.InsertCommand.Parameters.Add("@equipModelDesc", this.Description);
			
			//UPDATE
			da.UpdateCommand.CommandText = "UPDATE Equipment SET locId=@locId, equipTypeId=@equipTypeId, manId=@manId, vendorId=@vendorId, equipNumber=@equipNumber, equipName=@equipName," +
											" equipSerial=@equipSerial, equipModel=@equipModel, equipModelDesc=@equipModelDesc" + 
											" WHERE equipId=@equipId";
			
			da.UpdateCommand.Parameters.Add("@equipId", this.Id);
			da.UpdateCommand.Parameters.Add("@locId", this.LocationId);
			da.UpdateCommand.Parameters.Add("@equipTypeId", this.EquipmentTypeId);
			da.UpdateCommand.Parameters.Add("@manId", this.ManufacturerId);
			da.UpdateCommand.Parameters.Add("@vendorId", this.VendorId);
			da.UpdateCommand.Parameters.Add("@equipNumber", this.EquipmentNumber);
			da.UpdateCommand.Parameters.Add("@equipName", this.Name);
			da.UpdateCommand.Parameters.Add("@equipSerial", this.Serial);
			da.UpdateCommand.Parameters.Add("@equipModel", this.Model);
			da.UpdateCommand.Parameters.Add("@equipModelDesc", this.Description);
			
			//DELETE
			da.DeleteCommand.CommandText = "DELETE FROM Equipment WHERE equipId=@equipId";
			da.DeleteCommand.Parameters.Add("@equipId", this.Id);
			
			return da;
		}
		
		
		//Properties
		protected Nullable<long> Id { get; set; }
		protected long LocationId { get; set; }
		protected long EquipmentTypeId { get; set; }
		protected long ManufacturerId { get; set; }
		protected long VendorId { get; set; }
		protected string EquipmentNumber { get; set; }
		protected string Name { get; set; }
		protected string Serial { get; set; }
		protected string Model { get; set; }
		protected string Description { get; set; }
	}
}

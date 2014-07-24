/***************************************************************************************************
 * Class:   	EquipmentTypes.cs
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
	/// Description of EquipmentTypes.
	/// </summary>
	public class EquipmentTypes
	{
		protected EquipmentTypes()
		{
		}
		
		
		protected EquipmentTypes(long id, string name, string description)
		{
			this.Id = id;
			this.Name = name;
			this.Description = description;
		}
		
		
		protected SqlDataAdapter EquipmentTypesTable()
		{
			SqlDataAdapter da = new SqlDataAdapter();
			
			//SELECT
			da.SelectCommand.CommandText = "SELECT * FROM EquipmentTypes ORDER BY typeName";
			
			//INSERT
			da.InsertCommand.CommandText = "INSERT INTO EquipmentTypes(typeName, typeDesc) VALUES(@typeName, @typeDesc)";
			
			da.InsertCommand.Parameters.AddWithValue("@typeName", this.Name);
			da.InsertCommand.Parameters.AddWithValue("@typeDesc", this.Description);
			
			//UPDATE
			da.UpdateCommand.CommandText = "UPDATE EquipmentTypes SET typeName=@typeName, typeDesc=@typeDesc WHERE typeId=@typeId";
			
			da.UpdateCommand.Parameters.AddWithValue("@typeId", this.Id);
			da.UpdateCommand.Parameters.AddWithValue("@typeName", this.Name);
			da.UpdateCommand.Parameters.AddWithValue("@typeDesc", this.Description);
			
			//DELETE
			da.DeleteCommand.CommandText = "DELETE FROM EquipmentTypes WHERE typeId=@typeId";
			
			da.DeleteCommand.Parameters.AddWithValue("@typeId", this.Id);
			
			return da;
		}
		
		
		//Properties
		protected long Id { get; set; }
		protected string Name { get; set; }
		protected string Description { get; set; }
	}
}

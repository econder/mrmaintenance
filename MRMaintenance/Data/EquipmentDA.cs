/***************************************************************************************************
 * Class:   	EquipmentDA.cs
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
	/// Description of Equipment.
	/// </summary>
	public class EquipmentDA
	{
		private string connStr;
		
		public EquipmentDA()
		{
			connStr = Properties.Settings.Default.MRMaintenanceSql;
		}
		
		
		public DataTable Load()
		{
			using(SqlConnection dbConn = new SqlConnection(connStr))
			{
				dbConn.Open();
				SqlDataAdapter da = new SqlDataAdapter("SELECT dbo.Equipment.equipId, dbo.Locations.facId, dbo.Equipment.locId, dbo.Equipment.equipTypeId, dbo.Equipment.manId, dbo.Equipment.vendorId," + 
														" dbo.Equipment.modelId, dbo.Equipment.equipNumber, dbo.Equipment.equipName, dbo.Equipment.descr, dbo.Equipment.equipSerial," +  
                      									" dbo.Equipment.hmiRuntimeTagname, dbo.Equipment.hmiCyclesTagname, dbo.Equipment.equipMccLoc, dbo.Equipment.equipMccPanel" + 
														" FROM dbo.Equipment INNER JOIN Locations ON Locations.locId = Equipment.locId" + 
														" ORDER BY dbo.Equipment.equipName", dbConn);
				
				DataTable dt = new DataTable("Equipment");
				
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
		
		
		public int Insert(Equipment equipment)
		{
			using(SqlConnection dbConn = new SqlConnection(connStr))
			{
				dbConn.Open();
				SqlCommand cmd = new SqlCommand("INSERT INTO Equipment(locId, equipTypeId, manId, vendorId, modelId, equipNumber, equipName, descr, equipSerial, hmiRuntimeTagname, hmiCyclesTagname, equipMccLoc, equipMccPanel)" +
											" VALUES(@locId, @equipTypeId, @manId, @vendorId, @modelId, @equipNumber, @equipName, @descr, @equipSerial, @hmiRuntimeTagname, @hmiCyclesTagname, @equipMccLoc, @equipMccPanel)", dbConn);
				
				try
				{
					cmd.Parameters.AddWithValue("@locId", equipment.LocationID);
					cmd.Parameters.AddWithValue("@equipTypeId", equipment.EquipmentTypeID);
					cmd.Parameters.AddWithValue("@manId", equipment.ManufacturerID);
                    if (equipment.VendorID != null) { cmd.Parameters.AddWithValue("@vendorId", equipment.VendorID); } else { cmd.Parameters.AddWithValue("@vendorId", DBNull.Value); }
                    if (equipment.ModelID != null) { cmd.Parameters.AddWithValue("@modelId", equipment.ModelID); } else { cmd.Parameters.AddWithValue("modelId", DBNull.Value); }
					cmd.Parameters.AddWithValue("@equipNumber", equipment.EquipmentNumber);
					cmd.Parameters.AddWithValue("@equipName", equipment.Name);
					cmd.Parameters.AddWithValue("@descr", equipment.Description);
					cmd.Parameters.AddWithValue("@equipSerial", equipment.Serial);
                    if (equipment.HmiRuntimeTagname.Length != 0) { cmd.Parameters.AddWithValue("@hmiRuntimeTagname", equipment.HmiRuntimeTagname); } else { cmd.Parameters.AddWithValue("@hmiRuntimeTagname", DBNull.Value); }
                    if (equipment.HmiCyclesTagname.Length != 0) { cmd.Parameters.AddWithValue("@hmiCyclesTagname", equipment.HmiCyclesTagname); } else { cmd.Parameters.AddWithValue("@hmiCyclesTagname", DBNull.Value); }
					cmd.Parameters.AddWithValue("@equipMccLoc", equipment.MccLocation);
					cmd.Parameters.AddWithValue("@equipMccPanel", equipment.MccPanel);
					
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
		
		
		public int Update(Equipment equipment)
		{
			using(SqlConnection dbConn = new SqlConnection(connStr))
			{
				dbConn.Open();
				SqlCommand cmd = new SqlCommand("UPDATE Equipment SET locId=@locId, equipTypeId=@equipTypeId, manId=@manId, vendorId=@vendorId, modelId=@modelId, equipNumber=@equipNumber, equipName=@equipName," +
				                                " descr=@descr, equipSerial=@equipSerial, hmiRuntimeTagname=@hmiRuntimeTagname, hmiCyclesTagname=@hmiCyclesTagname, equipMccLoc=@equipMccLoc, equipMccPanel=@equipMccPanel" +
				                                " WHERE equipId=@equipId", dbConn);
				
				try
				{
					cmd.Parameters.AddWithValue("@equipId", equipment.ID);
					cmd.Parameters.AddWithValue("@locId", equipment.LocationID);
					cmd.Parameters.AddWithValue("@equipTypeId", equipment.EquipmentTypeID);
					cmd.Parameters.AddWithValue("@manId", equipment.ManufacturerID);
                    if (equipment.VendorID != null) { cmd.Parameters.AddWithValue("@vendorId", equipment.VendorID); } else { cmd.Parameters.AddWithValue("@vendorId", DBNull.Value); }
                    if (equipment.ModelID != null) { cmd.Parameters.AddWithValue("@modelId", equipment.ModelID); } else { cmd.Parameters.AddWithValue("modelId", DBNull.Value); }
					cmd.Parameters.AddWithValue("@equipNumber", equipment.EquipmentNumber);
					cmd.Parameters.AddWithValue("@equipName", equipment.Name);
					cmd.Parameters.AddWithValue("@descr", equipment.Description);
					cmd.Parameters.AddWithValue("@equipSerial", equipment.Serial);
                    if (equipment.HmiRuntimeTagname.Length != 0) { cmd.Parameters.AddWithValue("@hmiRuntimeTagname", equipment.HmiRuntimeTagname); } else { cmd.Parameters.AddWithValue("@hmiRuntimeTagname", DBNull.Value); }
                    if (equipment.HmiCyclesTagname.Length != 0) { cmd.Parameters.AddWithValue("@hmiCyclesTagname", equipment.HmiCyclesTagname); } else { cmd.Parameters.AddWithValue("@hmiCyclesTagname", DBNull.Value); }
					cmd.Parameters.AddWithValue("@equipMccLoc", equipment.MccLocation);
					cmd.Parameters.AddWithValue("@equipMccPanel", equipment.MccPanel);
					
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
		
		
		public int Delete(Equipment equipment)
		{
			using(SqlConnection dbConn = new SqlConnection(connStr))
			{
				dbConn.Open();
				SqlCommand cmd = new SqlCommand("DELETE FROM Equipment WHERE equipId=@equipId", dbConn);
				
				try
				{
					cmd.Parameters.AddWithValue("@equipId", equipment.ID);
					
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

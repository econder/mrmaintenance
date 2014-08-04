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
			connStr = ConfigurationManager.ConnectionStrings["MRMaintenanceSQL"].ConnectionString;
		}
		
		
		public DataTable Load()
		{
			using(SqlConnection dbConn = new SqlConnection(connStr))
			{
				dbConn.Open();
				SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM Equipment ORDER BY equipName", dbConn);
				
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
				SqlCommand cmd = new SqlCommand("INSERT INTO Equipment(locId, equipTypeId, manId, vendorId, equipNumber, equipName, equipSerial, equipModel, descr)" +
											" VALUES(@locId, @equipTypeId, @manId, @vendorId, @equipNumber, @equipName, @equipSerial, @equipModel, @descr)", dbConn);
				
				try
				{
					cmd.Parameters.AddWithValue("@locId", equipment.LocationID);
					cmd.Parameters.AddWithValue("@equipTypeId", equipment.EquipmentTypeID);
					cmd.Parameters.AddWithValue("@manId", equipment.ManufacturerID);
					cmd.Parameters.AddWithValue("@vendorId", equipment.VendorID);
					cmd.Parameters.AddWithValue("@equipNumber", equipment.EquipmentNumber);
					cmd.Parameters.AddWithValue("@equipName", equipment.Name);
					cmd.Parameters.AddWithValue("@equipSerial", equipment.Serial);
					cmd.Parameters.AddWithValue("@equipModel", equipment.Model);
					cmd.Parameters.AddWithValue("@descr", equipment.Description);
					
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
				SqlCommand cmd = new SqlCommand("UPDATE Equipment SET locId=@locId, equipTypeId=@equipTypeId, manId=@manId, vendorId=@vendorId, equipNumber=@equipNumber, equipName=@equipName," +
				                                " equipSerial=@equipSerial, equipModel=@equipModel, descr=@descr" +
				                                " WHERE equipId=@equipId", dbConn);
				
				try
				{
					cmd.Parameters.AddWithValue("@equipId", equipment.ID);
					cmd.Parameters.AddWithValue("@locId", equipment.LocationID);
					cmd.Parameters.AddWithValue("@equipTypeId", equipment.EquipmentTypeID);
					cmd.Parameters.AddWithValue("@manId", equipment.ManufacturerID);
					cmd.Parameters.AddWithValue("@vendorId", equipment.VendorID);
					cmd.Parameters.AddWithValue("@equipNumber", equipment.EquipmentNumber);
					cmd.Parameters.AddWithValue("@equipName", equipment.Name);
					cmd.Parameters.AddWithValue("@equipSerial", equipment.Serial);
					cmd.Parameters.AddWithValue("@equipModel", equipment.Model);
					cmd.Parameters.AddWithValue("@descr", equipment.Description);
					
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

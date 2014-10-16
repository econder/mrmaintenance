/***************************************************************************************************
 * Class:   	SizeUnitDA.cs
 * Created By: 	Eric Conder
 * Created On: 	8/7/2014
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
	/// Description of SizeUnitDA.
	/// </summary>
	public class SizeUnitDA
	{
		private string connStr;
		
		
		public SizeUnitDA()
		{
			connStr = Properties.Settings.Default.MRMaintenanceSql;
		}
		
		
		public DataTable Load()
		{
			using(SqlConnection dbConn = new SqlConnection(connStr))
			{
				dbConn.Open();
				SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM Units", dbConn);
				
				DataTable dt = new DataTable("SizeUnits");
				
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
		
		
		public int Insert(SizeUnit sizeUnit)
		{
			using(SqlConnection dbConn = new SqlConnection(connStr))
			{
				dbConn.Open();
				SqlCommand cmd = new SqlCommand("INSERT INTO Units(unitName, unitAbbr)" +
				                                " VALUES(@unitName, @unitAbbr)", dbConn);
				
				try
				{
					cmd.Parameters.AddWithValue("@unitName", sizeUnit.Name);
					cmd.Parameters.AddWithValue("@unitAbbr", sizeUnit.Abbreviation);
					
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
		
		
		public int Update(SizeUnit sizeUnit)
		{
			using(SqlConnection dbConn = new SqlConnection(connStr))
			{
				dbConn.Open();
				SqlCommand cmd = new SqlCommand("UPDATE Units SET unitName=@unitName, unitAbbr=@unitAbbr" +
				                                " WHERE sizeUnitId=@sizeUnitId", dbConn);
				
				try
				{
					cmd.Parameters.AddWithValue("@unitId", sizeUnit.ID);
					cmd.Parameters.AddWithValue("@unitName", sizeUnit.Name);
					cmd.Parameters.AddWithValue("@unitAbbr", sizeUnit.Abbreviation);
					
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
		
		
		public int Delete(SizeUnit sizeUnit)
		{
			using(SqlConnection dbConn = new SqlConnection(connStr))
			{
				dbConn.Open();
				SqlCommand cmd = new SqlCommand("DELETE FROM Units WHERE unitId=@unitId", dbConn);
				
				try
				{
					cmd.Parameters.AddWithValue("@unitId", sizeUnit.ID);
					
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

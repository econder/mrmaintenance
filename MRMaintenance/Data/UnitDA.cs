/***************************************************************************************************
 * Class:   	UnitDA.cs
 * Created By: 	Eric Conder
 * Created On: 	9/15/2014
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
	/// Description of UnitDA.
	/// </summary>
	public class UnitDA
	{
		private string connStr;
		
		
		public UnitDA()
		{
			connStr = Properties.Settings.Default.MRMaintenanceSql;
		}
		
		
		public DataTable Load()
		{
			using(SqlConnection dbConn = new SqlConnection(connStr))
			{
				dbConn.Open();
				SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM Units ORDER BY unitAbbr", dbConn);
				
				DataTable dt = new DataTable("Units");
				
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
		
		
		public int Insert(Unit unit)
		{
			using(SqlConnection dbConn = new SqlConnection(connStr))
			{
				dbConn.Open();
				SqlCommand cmd = new SqlCommand("INSERT INTO Units(unitName, unitAbbr)" +
				                                " VALUES(@unitName, @unitAbbr)", dbConn);
				
				try
				{
					cmd.Parameters.AddWithValue("@unitName", unit.Name);
					cmd.Parameters.AddWithValue("@unitAbbr", unit.Abbreviation);
					
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
		
		
		public int Update(Unit unit)
		{
			using(SqlConnection dbConn = new SqlConnection(connStr))
			{
				dbConn.Open();
				SqlCommand cmd = new SqlCommand("UPDATE Units SET unitId=@unitId, unitName=@unitName, unitAbbr=@unitAbbr" +
				                                " WHERE unitId=@unitId", dbConn);
				
				try
				{
					cmd.Parameters.AddWithValue("@unitId", unit.ID);
					cmd.Parameters.AddWithValue("@unitName", unit.Name);
					cmd.Parameters.AddWithValue("@unitAbbr", unit.Abbreviation);
					
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
		
		
		public int Delete(Unit unit)
		{
			using(SqlConnection dbConn = new SqlConnection(connStr))
			{
				dbConn.Open();
				SqlCommand cmd = new SqlCommand("DELETE FROM Units WHERE unitId=@unitId", dbConn);
				
				try
				{
					cmd.Parameters.AddWithValue("@unitId", unit.ID);
					
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

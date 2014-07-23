﻿/***************************************************************************************************
 * Class: 		MRDatabase.cs
 * Created By:	Eric Conder
 * Created On:	2014-07-10
 * 
 * Changes:
 * 2014-07-21	Added TestConnection, WorkOrders, & WorkOrdersDue methods.
 * 
 * *************************************************************************************************/
using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;


namespace MRMaintenance.Data.Sql
{
	/// <summary>
	/// MRPlatform2014.Data.Sql.MRDbConnection class.
	/// </summary>
	public class MRDatabase
	{
		private string _connectionString;
		private string _dbSettingsPath;
		
		/// <summary>
		/// Initializes an instance of MRDbConnection
		/// </summary>
		protected internal MRDatabase()
		{
			this.Username = "mrsystems";
			this.Password = "Reggie123";
			
			this.ConnectionString = String.Format("Server={0}; Database={1}; User Id={2}; Password={3};", "ECVM-WW2014", "MRMaintenance", "mrsystems", "Reggie123");
			
			this._dbSettingsPath = string.Format("{0}\\MR Systems\\MRMaintenance", Environment.GetFolderPath(Environment.SpecialFolder.ApplicationData).ToString());
		}
		
		
		/********************************************************
		 * Class Properties
		 ********************************************************/
		protected internal string Username { get; set; }
		protected internal string Password { get; set; }
		protected internal string ServerName { get; set; }
		protected internal string Database { get; set; }
		protected internal string ConnectionString { get; set; }
			/*
			get {
				try
				{
					//Read connection string from file
					StreamReader sr = new StreamReader(string.Format("{0}\\DB", this._dbSettingsPath));
					this._connectionString = sr.ReadLine();
					
					return this._connectionString;
				}
				catch(ArgumentNullException e)
				{
					WinEventLog winel = new WinEventLog();
					winel.WriteEvent(e);
					return null;
				}
				catch(FormatException e)
				{
					WinEventLog winel = new WinEventLog();
					winel.WriteEvent(e);
					return null;
				}
			}
			set {
				this._connectionString = value;
			}
		}
		*/
		
		
		/********************************************************
		 * Class Methods
		 ********************************************************/
		/// <summary>
		/// Tests the connection to the database
		/// </summary>
		/// <param name="serverName">The name of the computer hosting the database.</param>
		/// <param name="database">The name of the database.</param>
		/// <returns>True if the test is successful. False if the test failed.</returns>
		protected internal bool TestConnection(string serverName, string database)
		{
			try
			{
				string connStr = String.Format("Server={0}; Database={1}; User Id={2}; Password={3};", serverName, database, this.Username, this.Password);
				
				using(SqlConnection sqlConn = new SqlConnection(connStr))
				{
					sqlConn.Open();
					
					if(sqlConn.State == ConnectionState.Open)
					{
						return true;
					}
					else
					{
						return false;
					}
				}
			}
			catch(Exception e)
			{
				WinEventLog winel = new WinEventLog();
				winel.WriteEvent(e);
				return false;
			}
		}
		
		
		/// <summary>
		/// Saves database connection string to a file.
		/// </summary>
		/// <param name="serverName">The name of the computer hosting the database.</param>
		/// <param name="database">The name of the database.</param>
		protected internal void SaveConnection(string serverName, string database)
		{
			//Update ConnectionString property
			this.ConnectionString = String.Format("Server={0}; Database={1}; User Id={2}; Password={3};", serverName, database, this.Username, this.Password);
			
			try
			{
				string filePath = string.Format("{0}\\MR Systems\\MRMaintenance", Environment.GetFolderPath(Environment.SpecialFolder.ApplicationData).ToString());
				
				if(File.Exists(filePath))
				{
					//Clear file contents before writing new data
					File.WriteAllText(filePath, string.Empty);
				}
				
				if(!Directory.Exists(filePath))
				{
					Directory.CreateDirectory(filePath);
				}
				
				//Save connection string to file
				StreamWriter sw = new StreamWriter(Path.Combine(filePath, "DB"), false);
				sw.WriteLine(this.ConnectionString);
				sw.Flush();
			}
			catch(Exception e)
			{
				WinEventLog winel = new WinEventLog();
				winel.WriteEvent(e);
				return;
			}
		}
		
		
		protected internal DataTable Facilities()
		{
			try
			{
				using(SqlConnection dbConn = new SqlConnection(this.ConnectionString))
				{
					dbConn.Open();
					
					SqlCommand sqlCmd = new SqlCommand();
					sqlCmd.Connection = dbConn;
					sqlCmd.CommandText = "SELECT facId, name FROM Facilities ORDER BY name";
					
					SqlDataAdapter adapt = new SqlDataAdapter(sqlCmd);
					DataTable dt = new DataTable("Facilities");
					adapt.Fill(dt);
					
					return dt;
				}
			}
			catch(Exception e)
			{
				WinEventLog winel	 = new WinEventLog();
				winel.WriteEvent(e);
				return null;
			}
		}
		
		
		protected internal DataTable Departments()
		{
			try
			{
				using(SqlConnection dbConn = new SqlConnection(this.ConnectionString))
				{
					dbConn.Open();
					
					SqlCommand sqlCmd = new SqlCommand();
					sqlCmd.Connection = dbConn;
					sqlCmd.CommandText = "SELECT deptId, name FROM Departments ORDER BY name";
					
					SqlDataAdapter adapt = new SqlDataAdapter(sqlCmd);
					DataTable dt = new DataTable("Departments");
					adapt.Fill(dt);
					
					return dt;
				}
			}
			catch(Exception e)
			{
				WinEventLog winel	 = new WinEventLog();
				winel.WriteEvent(e);
				return null;
			}
		}
		
		
		protected internal DataTable Equipment()
		{
			try
			{
				using(SqlConnection dbConn = new SqlConnection(this.ConnectionString))
				{
					dbConn.Open();
					
					SqlCommand sqlCmd = new SqlCommand();
					sqlCmd.Connection = dbConn;
					sqlCmd.CommandText = "SELECT equipId, equipName FROM Equipment ORDER BY equipName";
					
					SqlDataAdapter adapt = new SqlDataAdapter(sqlCmd);
					DataTable dt = new DataTable("Equipment");
					adapt.Fill(dt);
					
					return dt;
				}
			}
			catch(Exception e)
			{
				WinEventLog winel	 = new WinEventLog();
				winel.WriteEvent(e);
				return null;
			}
		}
		
		
		protected internal DataTable FacilityLocations(string facilityName)
		{
			try
			{
				using(SqlConnection dbConn = new SqlConnection(this.ConnectionString))
				{
					dbConn.Open();
					
					SqlCommand sqlCmd = new SqlCommand();
					sqlCmd.Connection = dbConn;
					sqlCmd.CommandText = "SELECT Locations.locId, Locations.name FROM Locations INNER JOIN Facilities ON Locations.facId = Facilities.facId WHERE Facilities.name = @facilityName ORDER BY name";
					
					sqlCmd.Parameters.AddWithValue("@facilityName", facilityName);
					
					SqlDataAdapter adapt = new SqlDataAdapter(sqlCmd);
					DataTable dt = new DataTable("FacilityLocations");
					adapt.Fill(dt);
					
					return dt;
				}
			}
			catch(Exception e)
			{
				WinEventLog winel	 = new WinEventLog();
				winel.WriteEvent(e);
				return null;
			}
		}
		
		
		protected internal DataTable TimeIntervals()
		{
			try
			{
				using(SqlConnection dbConn = new SqlConnection(this.ConnectionString))
				{
					dbConn.Open();
					
					SqlCommand sqlCmd = new SqlCommand();
					sqlCmd.Connection = dbConn;
					sqlCmd.CommandText = "SELECT intId, intName FROM TimeIntervals ORDER BY intId";
					
					SqlDataAdapter adapt = new SqlDataAdapter(sqlCmd);
					DataTable dt = new DataTable("TimeIntervals");
					adapt.Fill(dt);
					
					return dt;
				}
			}
			catch(Exception e)
			{
				WinEventLog winel	 = new WinEventLog();
				winel.WriteEvent(e);
				return null;
			}
		}
		
		
		/// <summary>
		/// Gets all work orders.
		/// </summary>
		/// <returns>DataTable object.</returns>
		protected internal DataTable WorkOrdersDue(int dueDateDeadband = 7)
		{
			try
			{
				using(SqlConnection dbConn = new SqlConnection(this.ConnectionString))
				{
					dbConn.Open();
					
					SqlCommand cmd = new SqlCommand("spWorkOrdersDue", dbConn);
					cmd.Parameters.AddWithValue("@dueDateDeadband", dueDateDeadband);
					
					cmd.CommandType = CommandType.StoredProcedure;
					
					DataTable dt = new DataTable("Work Orders Due");
					dt.Load(cmd.ExecuteReader());
					
					return dt;
				}
			}
			catch(Exception e)
			{
				WinEventLog winel	 = new WinEventLog();
				winel.WriteEvent(e);
				return null;
			}
		}
		
		
		
		/// <summary>
		/// Gets all work orders that are due or overdue.
		/// </summary>
		/// <param name="dueDateDeadband">The number of days in the future in which to return work orders due.</param>
		/// <returns>DataTable object.</returns>
		protected internal DataTable WorkOrdersDue(string facility, int dueDateDeadband = 7)
		{
			try
			{
				using(SqlConnection dbConn = new SqlConnection(this.ConnectionString))
				{
					dbConn.Open();
					
					SqlCommand cmd = new SqlCommand("spWorkOrdersDueByFacility", dbConn);
					cmd.Parameters.AddWithValue("@facility", facility);
					cmd.Parameters.AddWithValue("@dueDateDeadband", dueDateDeadband);
					
					cmd.CommandType = CommandType.StoredProcedure;
					
					DataTable dt = new DataTable("Work Orders Due");
					dt.Load(cmd.ExecuteReader());
					
					return dt;
				}
			}
			catch(Exception e)
			{
				WinEventLog winel	 = new WinEventLog();
				winel.WriteEvent(e);
				return null;
			}
		}
		
	}
}

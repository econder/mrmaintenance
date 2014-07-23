using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Windows.Forms;

using MRMaintenance.Data.Sql;

namespace MRMaintenance
{
	/// <summary>
	/// Form to modify the database connection properties.
	/// </summary>
	public partial class frmDatabaseConnection : Form
	{
		public frmDatabaseConnection()
		{
			InitializeComponent();
			
			this.txtDatabase.Text = ConfigurationManager.AppSettings.Get("Database");
			this.txtServerName.Text = ConfigurationManager.AppSettings.Get("ServerName");
			this.txtUsername.Text = ConfigurationManager.AppSettings.Get("Username");
			this.txtPassword.Text = ConfigurationManager.AppSettings.Get("Password");
		}
		
		
		void BtnTestClick(object sender, EventArgs e)
		{
			MRDatabase mrdb = new MRDatabase();
			if(mrdb.TestConnection(this.txtServerName.Text, this.txtDatabase.Text))
			{
				MessageBox.Show("Connection Succeeded!", "Connection Test", MessageBoxButtons.OK, MessageBoxIcon.Information);
			}
			else
			{
				MessageBox.Show("Connection Failed.", "Connection Test", MessageBoxButtons.OK, MessageBoxIcon.Error);
			}
		}
		
		
		void BtnOKClick(object sender, EventArgs e)
		{
			if(ConfigurationManager.AppSettings.Get("Database") != null) {
				ConfigurationManager.AppSettings.Set("Database", this.txtDatabase.Text);
			} else {
				ConfigurationManager.AppSettings.Add("Database", this.txtDatabase.Text);
			}
			
			if(ConfigurationManager.AppSettings.Get("ServerName") != null) {
				ConfigurationManager.AppSettings.Set("ServerName", this.txtServerName.Text);
			} else {
				ConfigurationManager.AppSettings.Add("ServerName", this.txtServerName.Text);
			}
			
			if(ConfigurationManager.AppSettings.Get("Username") != null) {
				ConfigurationManager.AppSettings.Set("Username", this.txtUsername.Text);
			} else {
				ConfigurationManager.AppSettings.Add("Username", this.txtUsername.Text);
			}
			
			if(ConfigurationManager.AppSettings.Get("Password") != null) {
				ConfigurationManager.AppSettings.Set("Password", this.txtPassword.Text);
			} else {
				ConfigurationManager.AppSettings.Add("Password", this.txtPassword.Text);
			}
			
			
			//TODO: Change this to use ConfigurationManager.ConnectionString
			string connStr = String.Format("Server={0}; Database={1}; User Id={2}; Password={3};", this.txtServerName.Text, this.txtDatabase.Text, this.txtUsername.Text, this.txtPassword.Text);
			
			if(ConfigurationManager.AppSettings.Get("ConnectionString") != null) {
				ConfigurationManager.AppSettings.Set("ConnectionString", connStr);
			} else {
				ConfigurationManager.AppSettings.Add("ConnectionString", connStr);
			}
			
			this.Hide();
		}
		
		
		void BtnCancelClick(object sender, EventArgs e)
		{
			this.Hide();
		}
	}
}

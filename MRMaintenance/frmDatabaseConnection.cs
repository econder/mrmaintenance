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
			MRDatabase mrdb = new MRDatabase();
			mrdb.SaveConnection(this.txtServerName.Text, this.txtDatabase.Text);
			
			this.Hide();
		}
		
		
		void BtnCancelClick(object sender, EventArgs e)
		{
			this.Hide();
		}
	}
}

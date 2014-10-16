using System;
using System.Collections.Generic;
using System.Configuration;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace MRMaintenance
{
    public partial class frmDbConnectionSettings : Form
    {
        public frmDbConnectionSettings()
        {
            InitializeComponent();

            try
            {
                txtServer.Text = Properties.Settings.Default.ServerName;
                txtDatabase.Text = Properties.Settings.Default.DatabaseName;
                txtUser.Text = Properties.Settings.Default.DatabaseUser;
            }
            catch(Exception)
            {
                return;
            }
        }


        private void btnOK_Click(object sender, EventArgs e)
        {
            try
            {
                Properties.Settings.Default.ServerName = txtServer.Text;
                Properties.Settings.Default.DatabaseName = txtDatabase.Text;
                Properties.Settings.Default.DatabaseUser = txtUser.Text;
                Properties.Settings.Default.DatabasePwd = txtPwd.Text;

                SqlConnectionStringBuilder connStr = new SqlConnectionStringBuilder();
                connStr.DataSource = Properties.Settings.Default.ServerName;
                connStr.InitialCatalog = Properties.Settings.Default.DatabaseName;
                connStr.UserID = Properties.Settings.Default.DatabaseUser;
                connStr.Password = Properties.Settings.Default.DatabasePwd;
                connStr.PersistSecurityInfo = false;
                connStr.ConnectTimeout = 10;
                
                Properties.Settings.Default.MRMaintenanceSql = connStr.ConnectionString;
                Properties.Settings.Default.Save();

                this.Hide();
            }
            catch(Exception)
            {
                //Do something
            }
        }


        private void btnCancel_Click(object sender, EventArgs e)
        {
            this.Dispose();
        }
    }
}

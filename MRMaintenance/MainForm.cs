/***************************************************************************************************
 * Class:   MRDbConnection.cs
 * Created By: Eric Conder
 * Created On: 7/9/2014
 * 
 * Changes:
 * 
 *
 * *************************************************************************************************/
using System;
using System.Collections.Generic;
using System.Data;
using System.Drawing;
using System.IO;
using System.Windows.Forms;

using MRMaintenance.Data.Sql;


namespace MRMaintenance
{
	/// <summary>
	/// Description of MainForm.
	/// </summary>
	public partial class MainForm : Form
	{
		public MainForm()
		{
			InitializeComponent();
			
			//Initialize MRDatabase class
			MRDatabase mrdb = new MRDatabase();
			
			//Load facilities comobobox
			cboFacilties.DataSource = mrdb.Facilities();
			cboFacilties.DisplayMember = "name";
			
			//Load first facility's work orders
			if(cboFacilties.Items.Count > 0)
			{
				try
				{
					DataTable dt = new DataTable();
					dt = mrdb.WorkOrdersDue(cboFacilties.Text, 7);
					
					DataSet ds = new DataSet();
					ds.Tables.Add(dt);
					
					dgview.DataSource = ds;
				}
				catch(Exception ex)
				{
					WinEventLog winel = new WinEventLog();
					winel.WriteEvent(ex);
					return;
				}
			}
		}
				
		
		private void SettingsToolStripMenuItemClick(object sender, EventArgs e)
		{
			frmDatabaseConnection frm = new frmDatabaseConnection();
			frm.ShowDialog();
		}
		
		private void CboFaciltiesSelectedIndexChanged(object sender, EventArgs e)
		{
			MRDatabase mrdb = new MRDatabase();
			
			try
			{
				dgview.DataSource = mrdb.WorkOrdersDue(this.cboFacilties.SelectedText, 7);
			}
			catch(Exception ex)
			{
				WinEventLog winel = new WinEventLog();
				winel.WriteEvent(ex);
				return;
			}
		}
	}
}

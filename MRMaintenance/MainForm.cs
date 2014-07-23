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
			
			try
			{
				//Initialize MRDatabase class
				MRDatabase mrdb = new MRDatabase();
				
				//Load and bind facilities combobox
				cboFacilties.DataSource = mrdb.Facilities();
				cboFacilties.DisplayMember = "name";
				cboFacilties.ValueMember = "name";
				
				
				//Load and bind time intervals combobox
				cboInterval.DataSource = mrdb.TimeIntervals();
				cboInterval.DisplayMember = "intName";
				cboInterval.ValueMember = "intName";
				
				
				//Load and bind departments combobox
				cboDept.DataSource = mrdb.Departments();
				cboDept.DisplayMember = "name";
				cboDept.ValueMember = "name";
				
				
				//Load and bind equipment combobox
				cboEquip.DataSource = mrdb.Equipment();
				cboEquip.DisplayMember = "equipName";
				cboEquip.ValueMember = "equipName";
				
				
				//Load and bind facility locations combobox
				cboLocation.DataSource = mrdb.FacilityLocations(cboFacilties.SelectedValue.ToString());
				cboLocation.DisplayMember = "name";
				cboLocation.ValueMember = "name";
				
				
				//Load first facility's work orders
				/*
				if(cboFacilties.Items.Count > 0)
				{
					DataTable dt = new DataTable();
					dt = mrdb.WorkOrdersDue(this.cboFacilties.SelectedValue.ToString(), 7);
					
					this.dgview.DataSource = dt;
				}
				*/
			}
			catch(InvalidCastException ex)
			{
				//Do nothing since this will happen each time a  
				//work order with a null Next Due date is clicked.
				return;
			}
			catch(Exception ex)
			{
				WinEventLog winel = new WinEventLog();
				winel.WriteEvent(ex);
				return;
			}
		}
		
		
		private void SettingsToolStripMenuItemClick(object sender, EventArgs e)
		{
			frmDatabaseConnection frm = new frmDatabaseConnection();
			frm.ShowDialog();
		}
		
		
		private void cboFaciltiesSelectedIndexChanged(object sender, EventArgs e)
		{
			try
			{
				MRDatabase mrdb = new MRDatabase();
				DataTable dt = new DataTable();
				dt = mrdb.WorkOrdersDue(this.cboFacilties.SelectedValue.ToString(), 1000);
				
				this.dgview.DataSource = dt;
				
				//Set data bindings
				this.txtName.DataBindings.Add(new Binding("Text", dt, "Name"));
				this.txtDescr.DataBindings.Add("Text", dt, "Description");
				this.dtStartDate.DataBindings.Add("Value", dt, "Start Date");
				this.numFreq.DataBindings.Add("Value", dt, "Frequency");
				this.cboInterval.DataBindings.Add("SelectedValue", dt, "Interval");
				this.dtLastCompleted.DataBindings.Add("Value", dt, "Last Completed");
				this.dtNextDue.Enabled = true;
				this.dtNextDue.DataBindings.Add("Value", dt, "Next Due");
				this.cboDept.DataBindings.Add("SelectedValue", dt, "Department");
				this.cboEquip.DataBindings.Add("SelectedValue", dt, "Equipment");
				this.cboLocation.DataBindings.Add("SelectedValue", dt, "Location");
			}
			catch(InvalidCastException ex)
			{
				//Catch null datetimepicker values but ignore them since they are ok.
				//Caught in its own catch block to prevent filling up the
				//log file with useless errors that are unpreventable at this point.
				return;
			}
			catch(Exception ex)
			{
				WinEventLog winel = new WinEventLog();
				winel.WriteEvent(ex);
				return;
			}
		}
		
		
		void cboDept_Validating(object sender, System.ComponentModel.CancelEventArgs e)
		{
			if(!this.cboDept.Items.Contains(this.cboDept.Text)) {
				
				if(MessageBox.Show(string.Format("{0} does not exist in the database. Would you like to add it?", this.cboDept.Text), "", 
				                   MessageBoxButtons.YesNo, MessageBoxIcon.Question, MessageBoxDefaultButton.Button1) == DialogResult.Yes) {
					//TODO: Code to show Equipment add dialog box.
				}
				else {
					
				}
			}
		}
		
		
		void cboEquip_Validating(object sender, System.ComponentModel.CancelEventArgs e)
		{
			//try
			//{
				
				if(!this.cboEquip.Items.Contains(this.cboEquip.Text)) {
					
					if(MessageBox.Show(string.Format("{0} does not exist in the database. Would you like to add it?", this.cboEquip.Text), "",
					                   MessageBoxButtons.YesNo, MessageBoxIcon.Question, MessageBoxDefaultButton.Button1) == DialogResult.Yes) {
						//TODO: Code to show Equipment add dialog box.
					}
				}
			//}
		}
		
		
		void cboLocation_Validating(object sender, System.ComponentModel.CancelEventArgs e)
		{
			if(!this.cboLocation.Items.Contains(this.cboLocation.Text)) {
				
				if(MessageBox.Show(string.Format("{0} does not exist in the database. Would you like to add it?", this.cboLocation.Text), "", 
				                   MessageBoxButtons.YesNo, MessageBoxIcon.Question, MessageBoxDefaultButton.Button1) == DialogResult.Yes) {
					//TODO: Code to show Equipment add dialog box.
				}
			}
		}
		
		
		
	}
}

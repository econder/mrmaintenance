﻿/***************************************************************************************************
 * Class:   	MainForm.cs
 * Created By: 	Eric Conder
 * Created On: 	7/9/2014
 * 
 * Changes:
 * 
 *
 * *************************************************************************************************/
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Drawing;
using System.IO;
using System.Data.SqlClient;
using System.Windows.Forms;

using MRMaintenance.BusinessAccess;


namespace MRMaintenance
{
	/// <summary>
	/// Description of MainForm.
	/// </summary>
	public partial class MainForm : Form
	{
		private FacilityBA facility;
		private LocationBA location;
		private EquipmentBA equip;
		private DepartmentBA dept;
		private TimeIntervalBA timeInterval;
		private WorkOrderViewBA woView;
		
		
		public MainForm()
		{
			InitializeComponent();
			
			facility = new FacilityBA();
			timeInterval = new TimeIntervalBA();
			dept = new DepartmentBA();
			equip = new EquipmentBA();
			location = new LocationBA();
			woView = new WorkOrderViewBA();
			
			this.FillData();
		}
		
		
		private void FillData()
		{
			//Load and bind facilities combobox
			DataTable dtFacility = facility.Load();
			
			cboFacilties.DataSource = dtFacility;
			cboFacilties.DisplayMember = "name";
			cboFacilties.ValueMember = "facId";
			
			//Load and bind time intervals combobox
			cboInterval.DataSource = timeInterval.Load();
			cboInterval.DisplayMember = "intName";
			cboInterval.ValueMember = "intId";
			
			//Load and bind departments combobox
			cboDept.DataSource = dept.Load();
			cboDept.DisplayMember = "name";
			cboDept.ValueMember = "deptId";
			
			//Load and bind equipment combobox
			cboEquip.DataSource = equip.Load();
			cboEquip.DisplayMember = "equipName";
			cboEquip.ValueMember = "equipId";
			
			//Load and bind facility locations combobox
			cboLocation.DataSource = location.LoadByFacility((long)cboFacilties.SelectedValue);
			cboLocation.DisplayMember = "name";
			cboLocation.ValueMember = "locId";
		}
		
		
		void cboFacilties_SelectedIndexChanged(object sender, EventArgs e)
		{
			try
			{
				//Load DataGridView with WorkOrdersDueByFacility
				DataTable dt = woView.LoadByFacility((long)this.cboFacilties.SelectedValue, 300);
				this.dgview.DataSource = dt;
				
				//Set data bindings
				this.txtName.DataBindings.Add("Text", dt, "Name", true, DataSourceUpdateMode.OnPropertyChanged, "");
				this.txtDescr.DataBindings.Add("Text", dt, "Description", true, DataSourceUpdateMode.OnPropertyChanged, "");
				this.dtStartDate.DataBindings.Add("Value", dt, "Start Date", true, DataSourceUpdateMode.OnPropertyChanged, DateTime.Parse("1/1/1980"));
				this.numFreq.DataBindings.Add("Value", dt, "Frequency", true, DataSourceUpdateMode.OnPropertyChanged, 0);
				this.cboInterval.DataBindings.Add("SelectedValue", dt, "Interval", true, DataSourceUpdateMode.OnPropertyChanged, -1);
				this.dtLastCompleted.DataBindings.Add("Value", dt, "Last Completed", true, DataSourceUpdateMode.OnPropertyChanged, DateTime.Parse("1/1/1980"));
				this.dtNextDue.DataBindings.Add("Value", dt, "Next Due", true, DataSourceUpdateMode.OnPropertyChanged, DateTime.Parse("1/1/1980"));
				this.cboDept.DataBindings.Add("SelectedValue", dt, "Department", true, DataSourceUpdateMode.OnPropertyChanged, -1);
				this.cboEquip.DataBindings.Add("SelectedValue", dt, "Equipment", true, DataSourceUpdateMode.OnPropertyChanged, -1);
				this.cboLocation.DataBindings.Add("SelectedValue", dt, "Location", true, DataSourceUpdateMode.OnPropertyChanged, -1);
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
			/*
			try
			{
				DataTable dt = (DataTable)cboEquip.DataSource;
				var result = dt.Select(string.Format("name='{0}'", this.cboDept.Text));
				
				if(result.Length == 0) {
					
					if(MessageBox.Show(string.Format("{0} does not exist in the database. Would you like to add it?", this.cboDept.Text), "",
					                   MessageBoxButtons.YesNo, MessageBoxIcon.Question, MessageBoxDefaultButton.Button1) == DialogResult.Yes) {
						
						//TODO: Code to show Department add dialog box.
					}
				}
			}
			catch(Exception ex)
			{
				WinEventLog winel = new WinEventLog();
				winel.WriteEvent(ex);
				return;
			}
			*/
		}
		
		
		void cboEquip_Validating(object sender, System.ComponentModel.CancelEventArgs e)
		{
			/*
			try
			{
				DataTable dt = (DataTable)cboEquip.DataSource;
				var result = dt.Select(string.Format("equipName='{0}'", this.cboEquip.Text));
				
				if(result.Length == 0) {
					
					if(MessageBox.Show(string.Format("{0} does not exist in the database. Would you like to add it?", this.cboEquip.Text), "",
					                   MessageBoxButtons.YesNo, MessageBoxIcon.Question, MessageBoxDefaultButton.Button1) == DialogResult.Yes) {
						
						//TODO: Code to show Equipment add dialog box.
					}
				}
			}
			catch(Exception ex)
			{
				WinEventLog winel = new WinEventLog();
				winel.WriteEvent(ex);
				return;
			}
			*/
		}
		
		
		void cboLocation_Validating(object sender, System.ComponentModel.CancelEventArgs e)
		{
			/*
			try
			{
				DataTable dt = (DataTable)cboEquip.DataSource;
				var result = dt.Select(string.Format("name='{0}'", this.cboLocation.Text));
				
				if(result.Length == 0) {
					
					if(MessageBox.Show(string.Format("{0} does not exist in the database. Would you like to add it?", this.cboLocation.Text), "",
					                   MessageBoxButtons.YesNo, MessageBoxIcon.Question, MessageBoxDefaultButton.Button1) == DialogResult.Yes) {
						
						//TODO: Code to show Location add dialog box.
					}
				}
			}
			catch(Exception ex)
			{
				WinEventLog winel = new WinEventLog();
				winel.WriteEvent(ex);
				return;
			}
			*/
		}
		
		
		void EquipmentToolStripMenuItemClick(object sender, EventArgs e)
		{
			frmEquipment form = new frmEquipment();
			form.Show();
		}
		
		
		void WorkOrderSchedulesToolStripMenuItemClick(object sender, EventArgs e)
		{
			frmWorkOrderSchedule form = new frmWorkOrderSchedule();
			form.Show();
		}
		
		
		void LocationsToolStripMenuItemClick(object sender, EventArgs e)
		{
			frmLocations form = new frmLocations();
			form.Show();
		}
	}
}

/***************************************************************************************************
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
using System.Data.SqlClient;
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
		private DataTable dt;
		
		public MainForm()
		{
			InitializeComponent();
			
			facility = new FacilityBA();
			timeInterval = new TimeIntervalBA();
			dept = new DepartmentBA();
			equip = new EquipmentBA();
			location = new LocationBA();
			woView = new WorkOrderViewBA();
			
			//Load and bind facilities combobox
			DataTable dtFacility = facility.Load();
			cboFacilties.DataSource = dtFacility;
			cboFacilties.DisplayMember = "name";
			cboFacilties.ValueMember = "facId";
			
			//Setup event handler after loading and binding the control
			//to prevent firing the event before the control is populated
			this.cboFacilties.SelectedIndexChanged += new System.EventHandler(this.cboFacilties_SelectedIndexChanged);
			
			this.FillData();
		}
		
		
		private void FillData()
		{	
			//Load DataGridView with WorkOrdersDueByFacility
			dt = woView.LoadByFacility((long)this.cboFacilties.SelectedValue, 300);
			this.dgview.DataSource = dt;
			
			//Load and bind equipment combobox
			cboEquip.DataSource = equip.Load();
			cboEquip.DisplayMember = "equipName";
			cboEquip.ValueMember = "equipId";
			this.cboEquip.DataBindings.Add("SelectedValue", dt, "Equipment", true, DataSourceUpdateMode.OnPropertyChanged, -1);
			
			//Load and bind facility locations combobox
			cboLocation.DataSource = location.LoadByFacility((long)cboFacilties.SelectedValue);
			cboLocation.DisplayMember = "name";
			cboLocation.ValueMember = "locId";
			this.cboLocation.DataBindings.Add("SelectedValue", dt, "Location", true, DataSourceUpdateMode.OnPropertyChanged, -1);
			
			//Bind work order name textbox
			this.txtName.DataBindings.Add("Text", dt, "Name", true, DataSourceUpdateMode.OnPropertyChanged, "");
			
			//Bind description textbox
			this.txtDescr.DataBindings.Add("Text", dt, "Description", true, DataSourceUpdateMode.OnPropertyChanged, "");
			
			//Bind start date dtpicker
			this.dtStartDate.DataBindings.Add("Value", dt, "Start Date", true, DataSourceUpdateMode.OnPropertyChanged, DateTime.Parse("1/1/1980"));
			
			//Bind frequency numeric control
			this.numFreq.DataBindings.Add("Value", dt, "Frequency", true, DataSourceUpdateMode.OnPropertyChanged, 0);
			
			//Load and bind time intervals combobox
			cboInterval.DataSource = timeInterval.Load();
			cboInterval.DisplayMember = "intName";
			cboInterval.ValueMember = "intId";
			this.cboInterval.DataBindings.Add("SelectedValue", dt, "Interval", true, DataSourceUpdateMode.OnPropertyChanged, -1);
			
			//Bind last completed dtpicker
			this.dtLastCompleted.DataBindings.Add("Value", dt, "Last Completed", true, DataSourceUpdateMode.OnPropertyChanged, DateTime.Parse("1/1/1980"));
			
			//Bind next due dtpicker
			this.dtNextDue.DataBindings.Add("Value", dt, "Next Due", true, DataSourceUpdateMode.OnPropertyChanged, DateTime.Parse("1/1/1980"));
			
			//Load and bind departments combobox
			cboDept.DataSource = dept.Load();
			cboDept.DisplayMember = "name";
			cboDept.ValueMember = "deptId";
			this.cboDept.DataBindings.Add("SelectedValue", dt, "Department", true, DataSourceUpdateMode.OnPropertyChanged, -1);
		}
		
		
		private void ResetControlBindings()
		{
			//Clear existing databindings for each control
			cboEquip.DataBindings.Clear();
			cboLocation.DataBindings.Clear();
			txtName.DataBindings.Clear();
			txtDescr.DataBindings.Clear();
			dtStartDate.DataBindings.Clear();
			numFreq.DataBindings.Clear();
			cboInterval.DataBindings.Clear();
			dtLastCompleted.DataBindings.Clear();
			dtNextDue.DataBindings.Clear();
			cboDept.DataBindings.Clear();
			
			//Clear and reload datatable
			dt.Clear();
			
			//Load database and re-bind all the controls
			this.FillData();
		}
		
		
		void cboFacilties_SelectedIndexChanged(object sender, EventArgs e)
		{
			try
			{
				//Load locations listbox with LocationsByFacility
				dt = woView.LoadByFacility((long)cboFacilties.SelectedValue, 7);
				
				this.ResetControlBindings();
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
			form.ShowDialog();
		}
		
		
		void WorkOrderSchedulesToolStripMenuItemClick(object sender, EventArgs e)
		{
			frmWorkOrderSchedule form = new frmWorkOrderSchedule();
			form.ShowDialog();
		}
		
		
		void LocationsToolStripMenuItemClick(object sender, EventArgs e)
		{
			frmLocations form = new frmLocations();
			form.ShowDialog();
		}
		
		void FacilitiesToolStripMenuItemClick(object sender, EventArgs e)
		{
			frmFacility form = new frmFacility();
			form.ShowDialog();
		}
		
		void DepartmentsToolStripMenuItemClick(object sender, EventArgs e)
		{
			frmDepartment form = new frmDepartment();
			form.ShowDialog();
		}
		
		void ManufacturersToolStripMenuItemClick(object sender, EventArgs e)
		{
			frmManufacturer form = new frmManufacturer();
			form.ShowDialog();
		}
		
		void VendorsToolStripMenuItemClick(object sender, EventArgs e)
		{
			frmVendor form = new frmVendor();
			form.ShowDialog();
		}
	}
}

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
		private WorkOrderViewBA woView;
		
		private DataTable dt;
		
		
		public MainForm()
		{
			InitializeComponent();
			
			facility = new FacilityBA();
			woView = new WorkOrderViewBA();
			
			//Load and bind facilities combobox
			DataTable dtFacility = facility.Load();
			cboFacilities.DataSource = dtFacility;
			cboFacilities.DisplayMember = "name";
			cboFacilities.ValueMember = "facId";
			
			//Setup event handler after loading and binding the control
			//to prevent firing the event before the control is populated
			this.cboFacilities.SelectedIndexChanged += new System.EventHandler(this.cboFacilities_SelectedIndexChanged);
			
			this.FillData();
		}
		
		
		private void FillData()
		{	
			//Load DataGridView with WorkOrdersDueByFacility
			dt = woView.LoadByFacility((long)this.cboFacilities.SelectedValue, 300);
			this.dgview.DataSource = dt;
		}
		
		
		private void ResetControlBindings()
		{
			//Clear and reload datatable
			dt.Clear();
			
			//Load database and re-bind all the controls
			this.FillData();
		}
		
		
		void cboFacilities_SelectedIndexChanged(object sender, EventArgs e)
		{
			try
			{
				//Load locations listbox with LocationsByFacility
				dt = woView.LoadByFacility((long)cboFacilities.SelectedValue, 7);
				
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
		
		
		void dgview_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
		{
			frmWorkOrderSchedule form = new frmWorkOrderSchedule((long)dgview.SelectedRows[0].Cells["ID"].Value);
			form.ShowDialog();
		}
	}
}

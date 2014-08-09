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
using MRMaintenance.BusinessObjects;
using MRMaintenance.Reports;


namespace MRMaintenance
{
	/// <summary>
	/// Description of MainForm.
	/// </summary>
	public partial class MainForm : Form
	{
		private FacilityBA facility;
		private WorkOrderRequestBA workOrderReqBA;
		private WorkOrderBA workOrderBA;
		
		private DataTable dt;
		private DataTable dtWorkOrders;
		
		private WorkOrderRequest workOrderReq;
		
		public MainForm()
		{
			InitializeComponent();
			
			facility = new FacilityBA();
			workOrderReqBA = new WorkOrderRequestBA();
			workOrderBA = new WorkOrderBA();
			
			//Create work order request object to hold datagridview 
			//information as row selection changes
			workOrderReq = new WorkOrderRequest();
			
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
			dt = workOrderReqBA.LoadByFacilityBrief((long)this.cboFacilities.SelectedValue, 300);
			this.dgview.DataSource = dt;
			
			//Load WorkOrders
			dtWorkOrders = workOrderBA.LoadByFacility((long)this.cboFacilities.SelectedValue);
			this.dgviewWO.DataSource = dtWorkOrders;
		}
		
		
		private void ResetControlBindings()
		{
			//Clear and reload datatable
			dt.Clear();
			
			//Load database and re-bind all the controls
			this.FillData();
		}
		
		
		private void cboFacilities_SelectedIndexChanged(object sender, EventArgs e)
		{
			try
			{
				//Load locations listbox with LocationsByFacility
				dt = workOrderReqBA.LoadByFacilityBrief((long)cboFacilities.SelectedValue, 7);
				
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
		
		
		private void EquipmentToolStripMenuItemClick(object sender, EventArgs e)
		{
			frmEquipment form = new frmEquipment();
			form.ShowDialog();
		}
		
		
		private void WorkOrderRequestsToolStripMenuItemClick(object sender, EventArgs e)
		{
			frmWorkOrderRequest form = new frmWorkOrderRequest();
			form.ShowDialog();
		}
		
		
		private void LocationsToolStripMenuItemClick(object sender, EventArgs e)
		{
			frmLocations form = new frmLocations();
			form.ShowDialog();
		}
		
		
		private void FacilitiesToolStripMenuItemClick(object sender, EventArgs e)
		{
			frmFacility form = new frmFacility();
			form.ShowDialog();
		}
		
		
		private void DepartmentsToolStripMenuItemClick(object sender, EventArgs e)
		{
			frmDepartment form = new frmDepartment();
			form.ShowDialog();
		}
		
		
		private void ManufacturersToolStripMenuItemClick(object sender, EventArgs e)
		{
			frmManufacturer form = new frmManufacturer();
			form.ShowDialog();
		}
		
		
		private void VendorsToolStripMenuItemClick(object sender, EventArgs e)
		{
			frmVendor form = new frmVendor();
			form.ShowDialog();
		}
		
		
		//Populated workOrderRequest class properties on selection change
		void dgview_SelectionChanged(object sender, EventArgs e)
		{
			workOrderReq.ID = (long)dgview.SelectedRows[0].Cells["ID"].Value;
			workOrderReq.Name = (string)dgview.SelectedRows[0].Cells["Name"].Value;
			workOrderReq.DateSubmitted = (DateTime)dgview.SelectedRows[0].Cells["Date Submitted"].Value;
			workOrderReq.EquipmentID = (long)dgview.SelectedRows[0].Cells["Equipment ID"].Value;
			workOrderReq.NextDue = (DateTime)dgview.SelectedRows[0].Cells["Due By"].Value;
		}
		
		
		private void dgview_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
		{
			frmWorkOrderRequest form = new frmWorkOrderRequest((long)dgview.SelectedRows[0].Cells["ID"].Value);
			form.ShowDialog();
		}
		
		
		//Create Work Order from Work Order Request
		void CreateWorkOrderFromRequest(object sender, EventArgs e)
		{
			workOrderReqBA.CreateWorkOrder(workOrderReq);
		}
		
		
		//Mark Work Order as Complete
		private void MarkAsCompleteClick(object sender, EventArgs e)
		{
			workOrderBA.MarkComplete((long)dgview.SelectedRows[0].Cells["ID"].Value);
			this.ResetControlBindings();
		}
		
		
		private void AllToolStripMenuItemClick(object sender, EventArgs e)
		{
			frmReportViewer form = new frmReportViewer("C:/Users/mrsystems/Documents/repos/mrmaintenance/MRMaintenance/Reports/rptWorkOrdersAll.srd");
			form.Show(this);
		}
	}
}

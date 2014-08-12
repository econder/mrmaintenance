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
using System.Diagnostics;
using System.Drawing;
using System.IO;
using System.Windows.Forms;
using MRMaintenance.BusinessAccess;
using MRMaintenance.BusinessObjects;
using MRMaintenance.Data;


namespace MRMaintenance
{
	/// <summary>
	/// Description of MainForm.
	/// </summary>
	public partial class MainForm : Form
	{
		private FacilityBA facilityBA;
		private WorkOrderRequestBA workOrderReqBA;
		private WorkOrderBA workOrderBA;
		
		private DataTable dtWorkOrderRequests;
		private DataTable dtWorkOrders;
		
		private WorkOrderRequest workOrderReq;
		
		public MainForm()
		{
			InitializeComponent();
			
			facilityBA = new FacilityBA();
			workOrderReqBA = new WorkOrderRequestBA();
			workOrderBA = new WorkOrderBA();
			
			//Create work order request object to hold datagridview 
			//information as row selection changes
			workOrderReq = new WorkOrderRequest();
			
			//Load and bind facilities combobox
			DataTable dtFacility = facilityBA.Load();
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
			Facility facility = new Facility();
			facility.ID = (long)this.cboFacilities.SelectedValue;
			
			
			//Load DataGridView with WorkOrdersDueByFacility
			dtWorkOrderRequests = workOrderReqBA.LoadByFacilityBrief(facility, 300);
			this.dgview.DataSource = dtWorkOrderRequests;
			
			//Load WorkOrders
			dtWorkOrders = workOrderBA.LoadOpenByFacilityBrief(facility);
			this.dgviewWO.DataSource = dtWorkOrders;
			
			//Update work order request row colors
			//this.dgViewUpdateRowColors();
		}
		
		
		private void ResetControlBindings()
		{
			
			//Clear and reload datatables
			dtWorkOrderRequests.Clear();
			dtWorkOrders.Clear();
			
			//Load database and re-bind all the controls
			this.FillData();
		}
		
		
		private void cboFacilities_SelectedIndexChanged(object sender, EventArgs e)
		{
			Facility facility = new Facility();
			
			try
			{
				//Load locations listbox with LocationsByFacility
				facility.ID = (long)this.cboFacilities.SelectedValue;
				dtWorkOrderRequests = workOrderReqBA.LoadByFacilityBrief(facility, 7);
				
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
		private void dgview_SelectionChanged(object sender, EventArgs e)
		{
			workOrderReq.ID = (long)dgview.SelectedRows[0].Cells["ID"].Value;
			workOrderReq.Name = (string)dgview.SelectedRows[0].Cells["Name"].Value;
			workOrderReq.DateSubmitted = (DateTime)dgview.SelectedRows[0].Cells["Date Submitted"].Value;
			workOrderReq.EquipmentID = (long)dgview.SelectedRows[0].Cells["Equipment ID"].Value;
			workOrderReq.NextDue = (DateTime)dgview.SelectedRows[0].Cells["Due By"].Value;
		}
		
		
		//Show work order request form
		private void dgview_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
		{
			frmWorkOrderRequest form = new frmWorkOrderRequest((long)dgview.SelectedRows[0].Cells["ID"].Value);
			form.ShowDialog();
		}
		
		
		//Changed work order request row color if request has open an work order 
		private void dgViewUpdateRowColors()
		{
			if(dgview.RowCount > 0)
			{
				for(int i = 0; i < dgview.RowCount; i++)
				{
					if((int)dgview.Rows[i].Cells["Open Work Orders"].Value > 0)
					{
						dgview.Rows[i].DefaultCellStyle.BackColor = Color.Cyan;
					}
				}
			}
		}
		
		
		//Select row and display context menu on right-click
		void dgview_CellMouseDown(object sender, DataGridViewCellMouseEventArgs e)
		{
			if (e.RowIndex >= 0 && e.ColumnIndex >= 0 && e.Button == MouseButtons.Right)
			{
				dgview.Rows[e.RowIndex].Selected = true;
				Rectangle r = dgview.GetCellDisplayRectangle(e.ColumnIndex, e.RowIndex, true);

				menuWorkOrderReq.Show((Control)sender, r.Left + e.X, r.Top + e.Y);
			}
		}
		
		
		//Select row and display context menu on right-click
		void dgviewWO_CellMouseDown(object sender, DataGridViewCellMouseEventArgs e)
		{
			if (e.RowIndex >= 0 && e.ColumnIndex >= 0 && e.Button == MouseButtons.Right)
			{
				dgviewWO.Rows[e.RowIndex].Selected = true;
				Rectangle r = dgviewWO.GetCellDisplayRectangle(e.ColumnIndex, e.RowIndex, true);

				menuWorkOrders.Show((Control)sender, r.Left + e.X, r.Top + e.Y);
			}
		}
		
		
		//Create Work Order from Work Order Request
		private void CreateWorkOrderFromRequest(object sender, EventArgs e)
		{
			if(workOrderReqBA.CreateWorkOrder(workOrderReq) == -1)
				MessageBox.Show("Unable to create work order. An open work order already exists for this work request.", "", MessageBoxButtons.OK, MessageBoxIcon.Information);
		}
		
		
		//Mark Work Order as Complete
		private void MarkAsCompleteClick(object sender, EventArgs e)
		{
			WorkOrder workOrder = new WorkOrder();
			workOrder.ID = (long)dgview.SelectedRows[0].Cells["ID"].Value;
			workOrderBA.MarkComplete(workOrder);
			this.ResetControlBindings();
		}
		
		
		
		/********************************************************************
		 * Display Reports
		 ********************************************************************/
		
		//Show Work Orders All Report
		private void AllToolStripMenuItemClick(object sender, EventArgs e)
		{
			frmReportViewer form = new frmReportViewer("WorkOrdersAll");
			form.Show(this);
		}
		
		
		//Show Work Order Detail Report
		void ToolStripMenuItem1Click(object sender, EventArgs e)
		{
			int id = (int)dgviewWO.SelectedRows[0].Cells["ID"].Value;
			frmReportViewer form = new frmReportViewer(string.Format("WorkOrderDetailsByID?workOrderId={0}", id));
			form.Show(this);
		}
	}
}

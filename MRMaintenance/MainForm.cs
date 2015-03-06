/***************************************************************************************************
 * Class:   	MainForm.cs
 * Created By: 	Eric Conder
 * Created On: 	7/9/2014
 * 
 * Changes:
 * 2014-08-21	Fixed bug that crashed app when right-clicking on WorkOrder to view report.
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
        private string _dbServerName;
		private WorkOrderRequest workOrderReq;
		private DataTable dtWorkOrderRequests;
		private DataTable dtWorkOrders;

        private static int DUE_DATE_DEADBAND = 5;
        private static int DUE_HRS_DEADBAND = 48;
        private static int DUE_CYC_DEADBAND = 50;

		public MainForm()
		{
            InitializeComponent();

            if (this.TestDbConnection() == true)
            {
                Initialize();
            }
		}


        private bool TestDbConnection()
        {
            SqlConnection conn = new SqlConnection(Properties.Settings.Default.MRMaintenanceSql);
            try
            {
                conn.Open();
                if(conn.State == ConnectionState.Open)
                {
                    this._dbServerName = Properties.Settings.Default.ServerName;
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch(Exception ex)
            {
                MessageBox.Show(string.Format("MRMaintenance database connection failed with message \"{0}\"", ex.Message));
                return false;
            }
        }
		
		
		private void Initialize()
		{
			FacilityBA facilityBA = new FacilityBA();
			WorkOrderRequestBA workOrderReqBA = new WorkOrderRequestBA();
			WorkOrderBA workOrderBA = new WorkOrderBA();
			
			Facility facility = new Facility();
			
			//Create work order request object to hold datagridview
			//information as row selection changes
			workOrderReq = new WorkOrderRequest();
			
			//Load and bind facilities combobox
			DataTable dtFacility = facilityBA.Load();
			cboFacilities.DataSource = dtFacility;
			cboFacilities.DisplayMember = "name";
			cboFacilities.ValueMember = "facId";

            if (dtFacility.Rows.Count > 0)
            {
                if (cboFacilities.Items.Count > 0)
                {
                    cboFacilities.SelectedIndex = 0;
                    facility.ID = (long)cboFacilities.SelectedValue;
                }

                //Setup event handler after loading and binding the control
                //to prevent firing the event before the control is populated
                this.cboFacilities.SelectedIndexChanged += new System.EventHandler(this.cboFacilities_SelectedIndexChanged);

                this.FillData();
            }
		}
		
		
		private void FillData()
		{
			Facility facility = new Facility();
			facility.ID = (long)cboFacilities.SelectedValue;
			
			//Load DataGridView with WorkOrdersDueByFacility
            WorkOrderRequestBA workOrderReqBA = new WorkOrderRequestBA();
			dtWorkOrderRequests = workOrderReqBA.LoadByFacilityBrief(facility, DUE_DATE_DEADBAND, DUE_HRS_DEADBAND, DUE_CYC_DEADBAND);
			if(dtWorkOrderRequests.Rows.Count > 0)
			{
				this.dgview.DataSource = dtWorkOrderRequests;
				
				//Update work order request row colors
				//this.dgViewUpdateRowColors();
			}
			
			//Load WorkOrders
            WorkOrderBA workOrderBA = new WorkOrderBA();
			dtWorkOrders = workOrderBA.LoadOpenByFacilityBrief(facility);
			if(dtWorkOrders.Rows.Count > 0)
			{
				this.dgviewWO.DataSource = dtWorkOrders;
			}
		}
		
		
		private void ResetControlBindings()
		{
			//Clear databindings
			dgview.DataBindings.Clear();
			dgviewWO.DataBindings.Clear();
			
			//Clear and reload datatables
			dtWorkOrderRequests.Clear();
			dtWorkOrders.Clear();
			
			//Load database and re-bind all the controls
			this.FillData();
		}
		
		
		private void cboFacilities_SelectedIndexChanged(object sender, EventArgs e)
		{
			//Load locations listbox with LocationsByFacility
			//facility.ID = (long)this.cboFacilities.SelectedValue;
			//dtWorkOrderRequests = workOrderReqBA.LoadByFacilityBrief(facility, 7);
			this.ResetControlBindings();
		}
		
		
		private void EquipmentToolStripMenuItemClick(object sender, EventArgs e)
		{
            Facility facility = new Facility();
            facility.ID = (long)cboFacilities.SelectedValue;
			frmEquipment form = new frmEquipment(facility);
			form.ShowDialog(this);
		}
		
		
		private void WorkOrderRequestsToolStripMenuItemClick(object sender, EventArgs e)
		{
            Facility facility = new Facility();
            facility.ID = (long)cboFacilities.SelectedValue;
			frmWorkOrderRequest form = new frmWorkOrderRequest(facility);
			form.ShowDialog(this);
		}
		
		
		private void LocationsToolStripMenuItemClick(object sender, EventArgs e)
		{
			frmLocations form = new frmLocations();
			form.ShowDialog(this);
		}
		
		
		private void FacilitiesToolStripMenuItemClick(object sender, EventArgs e)
		{
			frmFacility form = new frmFacility();
			form.ShowDialog(this);
		}
		
		
		private void DepartmentsToolStripMenuItemClick(object sender, EventArgs e)
		{
			frmDepartment form = new frmDepartment();
			form.ShowDialog(this);
		}
		
		
		private void ManufacturersToolStripMenuItemClick(object sender, EventArgs e)
		{
			frmManufacturer form = new frmManufacturer();
			form.ShowDialog(this);
		}
		
		
		private void VendorsToolStripMenuItemClick(object sender, EventArgs e)
		{
			frmVendor form = new frmVendor();
			form.ShowDialog(this);
		}
		
		
		void PartsToolStripMenuItemClick(object sender, EventArgs e)
		{
			frmPart form = new frmPart();
			form.ShowDialog(this);
		}
		
		
		//Show work order request form
		private void dgview_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
		{
			if(e.RowIndex >= 0)
			{
				frmWorkOrderRequest form = new frmWorkOrderRequest((long)dgview.SelectedRows[0].Cells["Equipment ID"].Value, (long)dgview.SelectedRows[0].Cells["ID"].Value);
				if(form.ShowDialog(this) == DialogResult.OK)
				{
					this.ResetControlBindings();
				}
			}
		}
		
		
		//Changed work order request row color if request has open an work order
        /*
		private void dgViewUpdateRowColors()
		{
			if(dgview.RowCount > 0)
			{
				for(int i = 0; i < dgview.RowCount; i++)
				{
					if(dgview.Rows[i].Cells["Open Work Orders"].Value != DBNull.Value)
					{
						if(Convert.ToInt32(dgview.Rows[i].Cells["Open Work Orders"].Value) == 0)
						{
							dgview.Rows[i].DefaultCellStyle.BackColor = Color.Cyan;
						}
					}
				}
			}
		} */
		
		
		//Select row and display context menu on right-click
		private void dgview_CellMouseDown(object sender, DataGridViewCellMouseEventArgs e)
		{
			//Populated workOrderRequest class properties on selection change
            WorkOrderRequest workOrderReq = new WorkOrderRequest();
			workOrderReq.ID = (long)dgview.SelectedRows[0].Cells["ID"].Value;
			workOrderReq.Name = (string)dgview.SelectedRows[0].Cells["Name"].Value;
			workOrderReq.DateSubmitted = (DateTime)dgview.SelectedRows[0].Cells["Date Submitted"].Value;
			workOrderReq.EquipmentID = (long)dgview.SelectedRows[0].Cells["Equipment ID"].Value;
            if (dgview.SelectedRows[0].Cells["Due By"].Value != DBNull.Value)
            {
                workOrderReq.NextDue = (DateTime)dgview.SelectedRows[0].Cells["Due By"].Value;
            }
			
			//Handle left-click
			if(e.RowIndex >= 0 && e.ColumnIndex >= 0 && e.Button == MouseButtons.Left)
			{
				
			}
			
			
			//Handle right-click
			if(e.RowIndex >= 0 && e.ColumnIndex >= 0 && e.Button == MouseButtons.Right)
			{
				dgview.Rows[e.RowIndex].Selected = true;
				Rectangle r = dgview.GetCellDisplayRectangle(e.ColumnIndex, e.RowIndex, true);

				menuWorkOrderReq.Show((Control)sender, r.Left + e.X, r.Top + e.Y);
			}
		}
		
		
		//Select row and display context menu on right-click
		private void dgviewWO_CellMouseDown(object sender, DataGridViewCellMouseEventArgs e)
		{
			if (e.RowIndex >= 0 && e.ColumnIndex >= 0 && e.Button == MouseButtons.Right)
			{
				dgviewWO.Rows[e.RowIndex].Selected = true;
				Rectangle r = dgviewWO.GetCellDisplayRectangle(e.ColumnIndex, e.RowIndex, true);

				menuWorkOrders.Show((Control)sender, r.Left + e.X, r.Top + e.Y);
			}
		}
		

        //Show work order request form
        private void dgviewWO_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            if (e.RowIndex >= 0)
            {
                WorkOrder wo = new WorkOrder();
                wo.ID = (long)dgviewWO.SelectedRows[0].Cells["Work Order ID"].Value;
                wo.RequestID = (long)dgviewWO.SelectedRows[0].Cells["Work Request ID"].Value;
                wo.DateCreated = Convert.ToDateTime(dgviewWO.SelectedRows[0].Cells["Date Created"].Value);
                wo.DateDue = Convert.ToDateTime(dgviewWO.SelectedRows[0].Cells["Date Due"].Value);

                frmWorkOrder form = new frmWorkOrder(wo);
                if (form.ShowDialog(this) == DialogResult.OK)
                {
                    this.ResetControlBindings();
                }
            }
        }
		

		//Create Work Order from Work Order Request
		private void CreateWorkOrderFromRequest(object sender, EventArgs e)
		{
            WorkOrderRequest workOrderReq = new WorkOrderRequest();
            workOrderReq.ID = (long)dgview.SelectedRows[0].Cells["ID"].Value;
            if (dgview.SelectedRows[0].Cells["Due By"].Value != DBNull.Value)
            {
                workOrderReq.NextDue = (DateTime)dgview.SelectedRows[0].Cells["Due By"].Value;
            }

            WorkOrderRequestBA workOrderReqBA = new WorkOrderRequestBA();
            workOrderReqBA.CreateWorkOrder(workOrderReq);

			//if(workOrderReqBA.CreateWorkOrder(workOrderReq) == -1)
			//	MessageBox.Show("Unable to create work order. An open work order already exists for this work request.", "", MessageBoxButtons.OK, MessageBoxIcon.Information);
		}


        /********************************************************************
		 * File Menu
		 ********************************************************************/
        private void exitToolStripMenuItem_Click(object sender, EventArgs e)
        {
            this.Close();
            this.Dispose();
        }


        /********************************************************************
		 * Settings Menu
		 ********************************************************************/
        private void databaseConnectionToolStripMenuItem_Click(object sender, EventArgs e)
        {
            frmDbConnectionSettings form = new frmDbConnectionSettings();
            if(form.ShowDialog(this) == System.Windows.Forms.DialogResult.OK)
            {
                if (this.TestDbConnection())
                {
                    this.Initialize();
                }
                
                /*
                //Load and bind facilities combobox
                FacilityBA facilityBA = new FacilityBA();
                DataTable dtFacility = facilityBA.Load();

                if (dtFacility.Rows.Count > 0)
                {
                    cboFacilities.DataSource = dtFacility;
                    cboFacilities.DisplayMember = "name";
                    cboFacilities.ValueMember = "facId";

                    if (cboFacilities.Items.Count > 0)
                    {
                        cboFacilities.SelectedIndex = 0;
                    }

                    this.FillData();
                }
                */
            }
        }
		
		
		/********************************************************************
		 * Display Reports
		 ********************************************************************/
		//Show Work Orders All Report
		private void AllToolStripMenuItemClick(object sender, EventArgs e)
		{
            Process.Start("iexplore.exe", string.Format("http://{0}/ReportServer/Pages/ReportViewer.aspx?%2fWorkOrdersAll&rs:Command=Render", this._dbServerName));
		}
		
		
		//Show Work Order Detail Report
		private void ToolStripMenuItem1Click(object sender, EventArgs e)
		{
			string id = dgviewWO.SelectedRows[0].Cells["ID"].Value.ToString();
            Process.Start("iexplore.exe", string.Format("http://{0}/ReportServer/Pages/ReportViewer.aspx?%2fWorkOrderDetailsByID&rs:Command=Render&workOrderId={1}", this._dbServerName, id));
		}

        private void aboutToolStripMenuItem_Click(object sender, EventArgs e)
        {
            frmAbout form = new frmAbout();
            form.ShowDialog(this);
        }

        private void equipmentTypeToolStripMenuItem_Click(object sender, EventArgs e)
        {
            frmEquipmentType form = new frmEquipmentType();
            form.ShowDialog(this);
        }
	}
}

/***************************************************************************************************
 * Class:   	frmWorkOrderRequest.cs
 * Created By: 	Eric Conder
 * Created On: 	7/25/2014
 * 
 * Changes:
 * 2014-08-08	Renamed to frmWorkOrderRequest from frmWorkOrderRequest.
 * 
 * *************************************************************************************************/
using System;
using System.Collections.Generic;
using System.Data;
using System.Drawing;
using System.Windows.Forms;

using MRMaintenance.BusinessAccess;
using MRMaintenance.BusinessObjects;
using MRMaintenance.Data;


namespace MRMaintenance
{
	/// <summary>
	/// Description of frmWorkOrderRequest.
	/// </summary>
	public partial class frmWorkOrderRequest : Form
	{
		private WorkOrderRequestBA workOrderReqBA;
		private EquipmentBA equip;
		private DepartmentBA dept;
		private TimeIntervalBA timeInterval;
		private PriorityBA priorityBA;

        private DataTable dt;
        private Facility _facility;
        private Equipment _equipment;
        private long _equipmentId;
        private bool _filterByEquip;
		
		
		public frmWorkOrderRequest(Facility facility)
		{
            this._facility = facility;
            this._filterByEquip = false;

			InitializeComponent();
			
			workOrderReqBA = new WorkOrderRequestBA();
			equip = new EquipmentBA();
			dept = new DepartmentBA();
			priorityBA = new PriorityBA();
			timeInterval = new TimeIntervalBA();
			
			this.FillData();
		}


        public frmWorkOrderRequest(long equipmentId)
        {
            this._filterByEquip = true;
            this._equipmentId = equipmentId;

            InitializeComponent();

            workOrderReqBA = new WorkOrderRequestBA();
            equip = new EquipmentBA();
            dept = new DepartmentBA();
            priorityBA = new PriorityBA();
            timeInterval = new TimeIntervalBA();

            this.FillData();
        }
		
		
		public frmWorkOrderRequest(long equipmentId, long workOrderRequestId)
		{
            this._filterByEquip = true;
            this._equipmentId = equipmentId;

			InitializeComponent();
			
			workOrderReqBA = new WorkOrderRequestBA();
			equip = new EquipmentBA();
			dept = new DepartmentBA();
			priorityBA = new PriorityBA();
			timeInterval = new TimeIntervalBA();
			
			try
			{
				this.FillData();
				
				listWO.SelectedValue = workOrderRequestId;
			}
			catch(InvalidOperationException ex)
			{
				WinEventLog winel = new WinEventLog();
				winel.WriteEvent(ex);
				return;
			}
		}
		
		
		private void FillData()
		{
			if(!this._filterByEquip)
            {
                this.dt = workOrderReqBA.LoadByFacility(this._facility);

                //Bind work order requests listbox
                listWO.DataSource = dt;
                listWO.DisplayMember = "reqNameExt";
                listWO.ValueMember = "reqId";
            }
            else
            {
                this.dt = workOrderReqBA.LoadByEquipment(this._equipmentId);

                //Bind work order requests listbox
                listWO.DataSource = dt;
                listWO.DisplayMember = "reqName";
                listWO.ValueMember = "reqId";
            }
			
			
			
			//Bind work order request enabled checkbox
			chkEnabled.DataBindings.Add("Checked", dt, "enabled", true, DataSourceUpdateMode.Never, false);
			
			//Bind work order request name textbox
			txtName.DataBindings.Add("Text", dt, "reqName", true, DataSourceUpdateMode.Never, "");
			
			//Load and bind equipment combobox
			cboEquip.DataSource = equip.Load();
			cboEquip.DisplayMember = "equipName";
			cboEquip.ValueMember = "equipId";
            cboEquip.DataBindings.Add("SelectedValue", dt, "equipId", true, DataSourceUpdateMode.Never, -1);
			this.cboEquip.Validating += new System.ComponentModel.CancelEventHandler(this.cboEquip_Validating);
			
			//Load and bind departments combobox
			cboDept.DataSource = dept.Load();
			cboDept.DisplayMember = "name";
			cboDept.ValueMember = "deptId";
			cboDept.DataBindings.Add("SelectedValue", dt, "deptId", true, DataSourceUpdateMode.Never, -1);
			
			//Load and bind priorities combobox
			cboPriority.DataSource = priorityBA.Load();
			cboPriority.DisplayMember = "priorityName";
			cboPriority.ValueMember = "priorityId";
			cboPriority.DataBindings.Add("SelectedValue", dt, "priorityId", true, DataSourceUpdateMode.Never, 1);
			
			//Load and bind time intervals combobox
			cboInterval.DataSource = timeInterval.Load();
			cboInterval.DisplayMember = "intName";
			cboInterval.ValueMember = "intId";
			
			//Bind work order description textbox
			txtDescr.DataBindings.Add("Text", dt, "reqDescr", true, DataSourceUpdateMode.Never, "");
			
			//Bind start date datetimepicker 
			dtStartDate.DataBindings.Add("Value", dt, "reqStartDate", true, DataSourceUpdateMode.OnPropertyChanged, DateTime.Parse("1/1/1980"));
			
			//Bind frequency numeric control
			numFreq.DataBindings.Add("Value", dt, "timeFreq", true, DataSourceUpdateMode.OnPropertyChanged, 0);
			
			//Bind interval combobox
			cboInterval.DataBindings.Add("SelectedValue", dt, "intId", true, DataSourceUpdateMode.OnPropertyChanged, -1);
		}
		
		
		private void ResetControlBindings()
		{
			//Clear existing databindings for each control
			chkEnabled.DataBindings.Clear();
			txtName.DataBindings.Clear();
			txtDescr.DataBindings.Clear();
			cboEquip.DataBindings.Clear();
			cboDept.DataBindings.Clear();
			cboPriority.DataBindings.Clear();
			dtStartDate.DataBindings.Clear();
			numFreq.DataBindings.Clear();
			cboInterval.DataBindings.Clear();
			
			//Clear and reload datatable
			dt.Clear();
			
			//Load database and re-bind all the controls
			this.FillData();
		}


        private void btnDuplicate_Click(object sender, EventArgs e)
        {
            listWO.SelectedIndex = -1;
        }
		
		
		private void btnNew_Click(object sender, EventArgs e)
		{
			listWO.SelectedIndex = -1;
			chkEnabled.Checked = true;
			txtName.Clear();
			cboEquip.SelectedIndex = -1;
			cboDept.SelectedIndex = -1;
			cboPriority.SelectedIndex = -1;
			txtDescr.Clear();
			dtStartDate.Value = DateTime.Now;
			numFreq.Value = 1;
			cboInterval.SelectedIndex = -1;
		}
		
		
		private void btnRemove_Click(object sender, EventArgs e)
		{
			WorkOrderRequest woReq = new WorkOrderRequest();
			woReq.ID = (long)this.listWO.SelectedValue;
			
			workOrderReqBA.Delete(woReq);
			
			//Reload data
			this.ResetControlBindings();
		}
		
		
		private void btnSave_Click(object sender, EventArgs e)
		{
			if(txtName.Text != "" && txtName.Text != null && cboEquip.SelectedIndex >= 0 && dtStartDate.Value != null && 
			   numFreq.Value >= 0 && cboInterval.SelectedIndex >= 0 && cboPriority.SelectedIndex >= 0)
			{
				WorkOrderRequest woReq = new WorkOrderRequest();
				woReq.Name = this.txtName.Text;
				woReq.Enabled = this.chkEnabled.Checked;
				woReq.Description = this.txtDescr.Text;
				woReq.EquipmentID = (long)this.cboEquip.SelectedValue;
				woReq.DepartmentID = (long)this.cboDept.SelectedValue;
				woReq.Priority = (int)this.cboPriority.SelectedValue;
				woReq.StartDate = dtStartDate.Value;
				woReq.TimeFrequency = (int)numFreq.Value;
				woReq.TimeIntervalID = (long)cboInterval.SelectedValue;
				
				if(listWO.SelectedIndex == -1)
				{
					workOrderReqBA.Insert(woReq);
				}
				else
				{
					woReq.ID = (long)this.listWO.SelectedValue;
					workOrderReqBA.Update(woReq);
				}
				
				//Reload data
				this.ResetControlBindings();
			}
		}
		
		
		private void btnClose_Click(object sender, EventArgs e)
		{
			this.Hide();
		}
		
		
		private void cboEquip_Validating(object sender, System.ComponentModel.CancelEventArgs e)
		{
			int i =  cboEquip.FindStringExact(cboEquip.Text);
			
			if(i == -1)
			{
				if(cboEquip.Text.Length > 0)
				{
					if(MessageBox.Show("Equipment does not exist. Would you like to create it?", "",
					                   MessageBoxButtons.YesNo, MessageBoxIcon.Question, MessageBoxDefaultButton.Button2) == DialogResult.Yes)
					{
						frmLocations form = new frmLocations();
						form.ShowDialog(this);
					}
				}
				else
				{
					MessageBox.Show("Equipment cannot be blank.", "", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
				}
			}
		}
		
		
		private void cboDept_Validating(object sender, System.ComponentModel.CancelEventArgs e)
		{
			int i =  cboDept.FindStringExact(cboDept.Text);
			
			if(i == -1)
			{
				if(cboDept.Text.Length > 0)
				{
					if(MessageBox.Show("Department does not exist. Would you like to create it?", "",
					                   MessageBoxButtons.YesNo, MessageBoxIcon.Question, MessageBoxDefaultButton.Button2) == DialogResult.Yes)
					{
						frmLocations form = new frmLocations();
						form.ShowDialog(this);
					}
				}
				else
				{
					MessageBox.Show("Department cannot be blank.", "", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
				}
			}
		}
		
		
		private void cboPriority_Validating(object sender, System.ComponentModel.CancelEventArgs e)
		{
			int i =  cboPriority.FindStringExact(cboPriority.Text);
			
			if(cboPriority.SelectedIndex == -1)
			{
				MessageBox.Show("Priority cannot be blank.", "", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
			}
		}
		
		
		private void txtName_Validating(object sender, System.ComponentModel.CancelEventArgs e)
		{
			//Check for null values
			if(txtName.Text == "" || txtName.Text == null)
			{
				MessageBox.Show("Work order name cannot be blank.", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
			}
		}
		
		
		private void dtStartDate_Validating(object sender, System.ComponentModel.CancelEventArgs e)
		{
			//Check for null values
			if(dtStartDate.Value == null)
			{
				MessageBox.Show("Start date cannot be blank.", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
			}
		}
		
		
		private void cboInterval_Validating(object sender, System.ComponentModel.CancelEventArgs e)
		{
			//Check for null values
			if(cboInterval.Text == "" || cboInterval.Text == null)
			{
				MessageBox.Show("Time interval name cannot be blank.", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
			}
		}
	}
}

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
		private DataTable dt;
		
		
		public frmWorkOrderRequest()
		{
			InitializeComponent();
			
			workOrderReqBA = new WorkOrderRequestBA();
			equip = new EquipmentBA();
			dept = new DepartmentBA();
			timeInterval = new TimeIntervalBA();
			
			this.FillData();
		}
		
		
		public frmWorkOrderRequest(long workOrderId)
		{
			InitializeComponent();
			
			workOrderReqBA = new WorkOrderRequestBA();
			equip = new EquipmentBA();
			dept = new DepartmentBA();
			timeInterval = new TimeIntervalBA();
			
			try
			{
				this.FillData();
				
				listWO.SelectedValue = workOrderId;
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
			dt = workOrderReqBA.Load();
			
			//Bind work order schedules listbox
			listWO.DataSource = dt;
			listWO.DisplayMember = "name";
			listWO.ValueMember = "reqId";
			
			//Bind work order name textbox
			txtName.DataBindings.Add("Text", dt, "name", true, DataSourceUpdateMode.Never, "");
			
			//Load and bind equipment combobox
			cboEquip.DataSource = equip.Load();
			cboEquip.DisplayMember = "equipName";
			cboEquip.ValueMember = "equipId";
			//this.cboEquip.MouseDoubleClick += new System.Windows.Forms.MouseEventHandler(this.cboEquip_MouseDoubleClick);
			this.cboEquip.Validating += new System.ComponentModel.CancelEventHandler(this.cboEquip_Validating);
			
			//Load and bind departments combobox
			cboDept.DataSource = dept.Load();
			cboDept.DisplayMember = "name";
			cboDept.ValueMember = "deptId";
			
			//Load and bind time intervals combobox
			cboInterval.DataSource = timeInterval.Load();
			cboInterval.DisplayMember = "intName";
			cboInterval.ValueMember = "intId";
			
			//Bind work order description textbox
			txtDescr.DataBindings.Add("Text", dt, "descr", true, DataSourceUpdateMode.Never, "");
			
			//Bind start date datetimepicker 
			dtStartDate.DataBindings.Add("Value", dt, "startDate", true, DataSourceUpdateMode.OnPropertyChanged, DateTime.Parse("1/1/1980"));
			
			//Bind frequency numeric control
			numFreq.DataBindings.Add("Value", dt, "timeFreq", true, DataSourceUpdateMode.OnPropertyChanged, 0);
			
			//Bind interval combobox
			cboInterval.DataBindings.Add("SelectedValue", dt, "intId", true, DataSourceUpdateMode.OnPropertyChanged, -1);
		}
		
		
		private void ResetControlBindings()
		{
			//Clear existing databindings for each control
			txtName.DataBindings.Clear();
			txtDescr.DataBindings.Clear();
			cboEquip.DataBindings.Clear();
			cboDept.DataBindings.Clear();
			dtStartDate.DataBindings.Clear();
			numFreq.DataBindings.Clear();
			cboInterval.DataBindings.Clear();
			
			//Clear and reload datatable
			dt.Clear();
			
			//Load database and re-bind all the controls
			this.FillData();
		}
		
		
		private void btnAdd_Click(object sender, EventArgs e)
		{
			WorkOrderRequest woReq = new WorkOrderRequest();
			woReq.Description = this.txtDescr.Text;
			woReq.EquipmentID = (long)this.cboEquip.SelectedValue;
			woReq.StartDate = dtStartDate.Value;
			woReq.TimeFrequency = (int)numFreq.Value;
			woReq.TimeIntervalID = (long)cboInterval.SelectedValue;
			
			workOrderReqBA.Insert(woReq);
			
			//Reload data
			this.ResetControlBindings();
		}
		
		
		private void btnUpdate_Click(object sender, EventArgs e)
		{
			WorkOrderRequest woReq = new WorkOrderRequest();
			woReq.ID = (long)this.listWO.SelectedValue;
			woReq.Description = this.txtDescr.Text;
			woReq.EquipmentID = (long)this.cboEquip.SelectedValue;
			woReq.StartDate = dtStartDate.Value;
			woReq.TimeFrequency = (int)numFreq.Value;
			woReq.TimeIntervalID = (long)cboInterval.SelectedValue;
			
			workOrderReqBA.Update(woReq);
			
			//Reload data
			this.ResetControlBindings();
		}
		
		
		private void btnRemove_Click(object sender, EventArgs e)
		{
			WorkOrderRequest woReq = new WorkOrderRequest();
			woReq.ID = (long)this.listWO.SelectedValue;
			
			workOrderReqBA.Delete(woReq);
			
			//Reload data
			this.ResetControlBindings();
		}
		
		private void btnClose_Click(object sender, EventArgs e)
		{
			this.Hide();
		}
		
		
		private void cboEquip_Validating(object sender, System.ComponentModel.CancelEventArgs e)
		{
			//Check for null values
			if(cboEquip.Text == "" || cboEquip.Text == null)
			{
				MessageBox.Show("Equipment name cannot be blank", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
			}
			
			//Check for new values
			if(cboEquip.SelectedText != cboEquip.Text)
			{
				if(MessageBox.Show("Equipment does not exist. Would you like to create it?", "",
				                   MessageBoxButtons.YesNo, MessageBoxIcon.Question, MessageBoxDefaultButton.Button2) == DialogResult.Yes)
				{
					frmEquipment form = new frmEquipment();
					form.ShowDialog(this);
				}
			}
		}
		
		
		private void cboDept_Validating(object sender, System.ComponentModel.CancelEventArgs e)
		{
			//Check for null values
			if(cboDept.Text == "" || cboDept.Text == null)
			{
				MessageBox.Show("Department name cannot be blank", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
			}
			
			//Check for new values
			if(cboDept.SelectedText != cboDept.Text)
			{
				if(MessageBox.Show("Department does not exist. Would you like to create it?", "",
				                   MessageBoxButtons.YesNo, MessageBoxIcon.Question, MessageBoxDefaultButton.Button2) == DialogResult.Yes)
				{
					frmDepartment form = new frmDepartment();
					form.ShowDialog(this);
				}
			}
		}
		
		
		private void txtName_Validating(object sender, System.ComponentModel.CancelEventArgs e)
		{
			//Check for null values
			if(txtName.Text == "" || txtName.Text == null)
			{
				MessageBox.Show("Work order name cannot be blank", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
			}
		}
		
		
		private void dtStartDate_Validating(object sender, System.ComponentModel.CancelEventArgs e)
		{
			//Check for null values
			if(dtStartDate.Value == null)
			{
				MessageBox.Show("Start date cannot be blank", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
			}
		}
		
		
		private void cboInterval_Validating(object sender, System.ComponentModel.CancelEventArgs e)
		{
			//Check for null values
			if(cboInterval.Text == "" || cboInterval.Text == null)
			{
				MessageBox.Show("Time interval name cannot be blank", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
			}
		}
	}
}

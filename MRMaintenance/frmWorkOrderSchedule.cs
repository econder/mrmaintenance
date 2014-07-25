/***************************************************************************************************
 * Class:   	frmWorkOrderSchedule.cs
 * Created By: 	Eric Conder
 * Created On: 	7/25/2014
 * 
 * Changes:
 * 
 *
 * *************************************************************************************************/
using System;
using System.Data;
using System.Drawing;
using System.Windows.Forms;

using MRMaintenance.BusinessAccess;
using MRMaintenance.BusinessObjects;
using MRMaintenance.Data;


namespace MRMaintenance
{
	/// <summary>
	/// Description of frmWorkOrderSchedule.
	/// </summary>
	public partial class frmWorkOrderSchedule : Form
	{
		private WorkOrderScheduleBA workOrderSchedBA;
		private EquipmentBA equip;
		private DepartmentBA dept;
		private TimeIntervalBA timeInterval;
		private DataTable dt;
		
		
		public frmWorkOrderSchedule()
		{
			InitializeComponent();
			
			workOrderSchedBA = new WorkOrderScheduleBA();
			equip = new EquipmentBA();
			dept = new DepartmentBA();
			timeInterval = new TimeIntervalBA();
			
			this.FillData();
		}
		
		
		private void FillData()
		{
			dt = workOrderSchedBA.Load();
			
			//Bind work order schedules listbox
			listWO.DataSource = dt;
			listWO.DisplayMember = "name";
			listWO.ValueMember = "woSchedId";
			
			//Bind work order name textbox
			txtName.DataBindings.Add("Text", dt, "name", true, DataSourceUpdateMode.Never, "");
			
			//Load and bind equipment combobox
			cboEquip.DataSource = equip.Load();
			cboEquip.DisplayMember = "equipName";
			cboEquip.ValueMember = "equipId";
			
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
			
			//Bind last completed datetimepicker
			dtLastCompleted.DataBindings.Add("Value", dt, "lastCompleted", true, DataSourceUpdateMode.OnPropertyChanged, DateTime.Parse("1/1/1980"));
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
			dtLastCompleted.DataBindings.Clear();
			
			//Clear and reload datatable
			dt.Clear();
			
			//Load database and re-bind all the controls
			this.FillData();
		}
		
		
		void btnAdd_Click(object sender, EventArgs e)
		{
			WorkOrderSchedule workOrderSchedule = new WorkOrderSchedule();
			workOrderSchedule.Name = this.txtName.Text;
			workOrderSchedule.Description = this.txtDescr.Text;
			workOrderSchedule.EquipmentID = (long)this.cboEquip.SelectedValue;
			workOrderSchedule.DepartmentID = (long)this.cboDept.SelectedValue;
			workOrderSchedule.StartDate = dtStartDate.Value;
			workOrderSchedule.TimeFrequency = (int)numFreq.Value;
			workOrderSchedule.TimeIntervalID = (long)cboInterval.SelectedValue;
			workOrderSchedule.LastCompleted = dtLastCompleted.Value;
			
			workOrderSchedBA.Insert(workOrderSchedule);
			
			//Reload data
			this.ResetControlBindings();
		}
		
		
		void btnUpdate_Click(object sender, EventArgs e)
		{
			WorkOrderSchedule workOrderSchedule = new WorkOrderSchedule();
			workOrderSchedule.ID = (long)this.listWO.SelectedValue;
			workOrderSchedule.Name = this.txtName.Text;
			workOrderSchedule.Description = this.txtDescr.Text;
			workOrderSchedule.EquipmentID = (long)this.cboEquip.SelectedValue;
			workOrderSchedule.DepartmentID = (long)this.cboDept.SelectedValue;
			workOrderSchedule.StartDate = dtStartDate.Value;
			workOrderSchedule.TimeFrequency = (int)numFreq.Value;
			workOrderSchedule.TimeIntervalID = (long)cboInterval.SelectedValue;
			workOrderSchedule.LastCompleted = dtLastCompleted.Value;
			
			workOrderSchedBA.Update(workOrderSchedule);
			
			//Reload data
			this.ResetControlBindings();
		}
		
		
		void btnRemove_Click(object sender, EventArgs e)
		{
			WorkOrderSchedule workOrderSchedule = new WorkOrderSchedule();
			workOrderSchedule.ID = (long)this.listWO.SelectedValue;
			
			workOrderSchedBA.Delete(workOrderSchedule);
			
			//Reload data
			this.ResetControlBindings();
		}
		
		void btnClose_Click(object sender, EventArgs e)
		{
			this.Hide();
		}
	}
}

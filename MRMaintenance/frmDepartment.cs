/***************************************************************************************************
 * Class:   	frmDepartment.cs
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


namespace MRMaintenance
{
	/// <summary>
	/// Description of frmDepartment.
	/// </summary>
	public partial class frmDepartment : Form
	{
		private DepartmentBA departmentBA;
		private DataTable dt;
		
		
		public frmDepartment()
		{
			InitializeComponent();
			
			departmentBA = new DepartmentBA();
			
			this.FillData();
		}
		
		
		private void FillData()
		{
			dt = departmentBA.Load();
			
			//Bind departments listbox
			listDept.DataSource = dt;
			listDept.DisplayMember = "name";
			listDept.ValueMember = "deptId";
			
			//Bind department name textbox
			txtName.DataBindings.Add("Text", dt, "name", true, DataSourceUpdateMode.Never, "");
		}
		
		
		private void ResetControlBindings()
		{
			//Clear existing databindings for each control
			txtName.DataBindings.Clear();
			
			//Clear and reload datatable
			dt.Clear();
			
			//Load database and re-bind all the controls
			this.FillData();
		}
		
		
		private void btnNew_Click(object sender, EventArgs e)
		{
			listDept.SelectedIndex = -1;
			txtName.Clear();
		}
		
		
		private void btnDelete_Click(object sender, EventArgs e)
		{
			if(listDept.SelectedIndex >= 0)
			{
				Department department = new Department();
				department.ID = (long)listDept.SelectedValue;
				department.Name = txtName.Text;

                //Show confirmation dialog
                DialogResult dialogResult = MessageBox.Show(String.Format("Are you sure you want to delete this item?", department.Name), "", MessageBoxButtons.YesNo, MessageBoxIcon.Exclamation, MessageBoxDefaultButton.Button2);
                if (dialogResult == DialogResult.Yes)
                {
                    //Delete the item
                    departmentBA.Delete(department);

                    //Reload data
                    this.ResetControlBindings();
                }
            }
		}
		
		
		private void btnSave_Click(object sender, EventArgs e)
		{
			if(txtName.Text != "" && txtName.Text != null)
			{
				Department department = new Department();
				department.Name = txtName.Text;
				
				if(listDept.SelectedIndex == -1)
				{
					departmentBA.Insert(department);
				}
				else
				{
                    department.ID = (long)listDept.SelectedValue;
					departmentBA.Update(department);
				}
				
				//Reload data
				this.ResetControlBindings();
			}
		}
		
		
		private void btnClose_Click(object sender, EventArgs e)
		{
			this.Hide();
		}
		
		
		private void txtName_Validating(object sender, System.ComponentModel.CancelEventArgs e)
		{
			//Check for null values
			if(txtName.Text == "" || txtName.Text == null)
			{
				MessageBox.Show("Department name cannot be blank", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
			}
		}
	}
}

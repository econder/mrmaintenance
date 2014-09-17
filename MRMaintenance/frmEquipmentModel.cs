/***************************************************************************************************
 * Class:   	frmEquipmentModel.cs
 * Created By: 	Eric Conder
 * Created On: 	8/17/2014
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
	/// Description of frmEquipmentModel.
	/// </summary>
	public partial class frmEquipmentModel : Form
	{
		private EquipmentModelBA modelBA;
		private DataTable dt;
		
		
		public frmEquipmentModel()
		{
			InitializeComponent();
			
			modelBA = new EquipmentModelBA();
			
			this.FillData();
		}
		
		
		private void FillData()
		{
			dt = modelBA.Load();
			
			//Bind types listbox
			listModel.DataSource = dt;
			listModel.DisplayMember = "typeName";
			listModel.ValueMember = "typeId";
			
			//Bind type name textbox
			txtName.DataBindings.Add("Text", dt, "typeName", true, DataSourceUpdateMode.Never, "");
		}
		
		
		private void ResetControlBindings()
		{
			//Clear existing databindings for each control
			txtName.DataBindings.Clear();
			
			//Clear and reload datatable
			dt.Clear();
			
			try
			{
				//Load database and re-bind all the controls
				this.FillData();
			}
			catch
			{
				throw;
			}
		}
		
		
		private void btnAdd_Click(object sender, EventArgs e)
		{
			EquipmentModel model = new EquipmentModel();
			model.Name = txtName.Text;
			
			try
			{
				modelBA.Insert(model);
				
				//Reload data
				this.ResetControlBindings();
			}
			catch
			{
				throw;
			}
		}
		
		
		private void btnUpdate_Click(object sender, EventArgs e)
		{
			EquipmentModel model = new EquipmentModel();
			model.ID = (long)listModel.SelectedValue;
			model.Name = txtName.Text;
			
			try
			{
				modelBA.Update(model);
				
				//Reload data
				this.ResetControlBindings();
			}
			catch
			{
				throw;
			}
		}
		
		
		private void btnRemove_Click(object sender, EventArgs e)
		{
			EquipmentModel model = new EquipmentModel();
			model.ID = (long)listModel.SelectedValue;
			model.Name = txtName.Text;
			
			try
			{
				modelBA.Delete(model);
				
				//Reload data
				this.ResetControlBindings();
			}
			catch
			{
				throw;
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
				MessageBox.Show("Type name cannot be blank", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
			}
		}
	}
}

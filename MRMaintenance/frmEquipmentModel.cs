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
			listModel.DisplayMember = "modelName";
			listModel.ValueMember = "modelId";
			
			//Bind type name textbox
			txtName.DataBindings.Add("Text", dt, "modelName", true, DataSourceUpdateMode.Never, "");
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
		
		
		private void btnNew_Click(object sender, EventArgs e)
		{
			listModel.SelectedIndex = -1;
			txtName.Clear();
		}
		
		
		private void btnSave_Click(object sender, EventArgs e)
		{
			if(txtName.Text != "" && txtName.Text != null)
			{
				EquipmentModel model = new EquipmentModel();
				model.Name = txtName.Text;
				
				if(listModel.SelectedIndex == -1)
				{
					modelBA.Insert(model);
				}
				else
				{
					model.ID = (long)listModel.SelectedValue;
					modelBA.Update(model);
				}
				
				//Reload data
				this.ResetControlBindings();
			}
		}
		
		
		private void btnRemove_Click(object sender, EventArgs e)
		{
			if(listModel.SelectedIndex >= 0)
			{
				EquipmentModel model = new EquipmentModel();
				model.ID = (long)listModel.SelectedValue;
				model.Name = txtName.Text;
				
				modelBA.Delete(model);
				
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
				MessageBox.Show("Type name cannot be blank", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
			}
		}
	}
}

/***************************************************************************************************
 * Class:   	frmEquipmentType.cs
 * Created By: 	Eric Conder
 * Created On: 	8/1/2014
 * 
 * Changes:
 * 
 *
 * *************************************************************************************************/
using System;
using System.Collections.Generic;
using System.Data;
using System.Drawing;
using System.Windows.Forms;
using MRMaintenance.BusinessAccess;
using MRMaintenance.BusinessObjects;

namespace MRMaintenance
{
	/// <summary>
	/// Description of frmEquipmentType.
	/// </summary>
	public partial class frmEquipmentType : Form
	{
		private EquipmentTypeBA typeBA;
		private DataTable dt;
		
		
		public frmEquipmentType()
		{
			InitializeComponent();
			
			typeBA = new EquipmentTypeBA();
			
			this.FillData();
		}
		
		
		private void FillData()
		{
			dt = typeBA.Load();
			
			//Bind types listbox
			listType.DataSource = dt;
			listType.DisplayMember = "typeName";
			listType.ValueMember = "typeId";
			
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
		
		
		private void btnNew_Click(object sender, EventArgs e)
		{
			listType.SelectedIndex = -1;
			txtName.Clear();
		}
		
		
		private void btnRemove_Click(object sender, EventArgs e)
		{
			if(listType.SelectedIndex >= 0)
			{
				EquipmentType type = new EquipmentType();
				type.ID = (long)listType.SelectedValue;
				type.Name = txtName.Text;

                //Show confirmation dialog
                DialogResult dialogResult = MessageBox.Show(String.Format("Are you sure you want to delete this item?", type.Name), "", MessageBoxButtons.YesNo, MessageBoxIcon.Exclamation, MessageBoxDefaultButton.Button2);
                if (dialogResult == DialogResult.Yes)
                {
                    //Delete item
                    typeBA.Delete(type);

                    //Reload data
                    this.ResetControlBindings();
                }
			}
		}
		
		
		private void btnSave_Click(object sender, EventArgs e)
		{
			if(txtName.Text != "" && txtName.Text != null)
			{
				EquipmentType type = new EquipmentType();
				type.Name = txtName.Text;
				
				if(listType.SelectedIndex == -1)
				{
					typeBA.Insert(type);
				}
				else
				{
					type.ID = (long)listType.SelectedValue;
					typeBA.Update(type);
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
				MessageBox.Show("Type name cannot be blank", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
			}
		}
	}
}

/***************************************************************************************************
 * Class:   	frmInventoryLocation.cs
 * Created By: 	Eric Conder
 * Created On: 	8/16/2014
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
	/// Description of frmInventoryLocation.
	/// </summary>
	public partial class frmInventoryLocation : Form
	{
		private InventoryLocationBA inventoryLocBA;
		private DataTable dt;
		
		
		public frmInventoryLocation()
		{
			InitializeComponent();
			
			inventoryLocBA = new InventoryLocationBA();
			
			this.FillData();
		}
		
		
		private void FillData()
		{
			dt = inventoryLocBA.Load();
			
			//Bind inventoryLocs listbox
			listLoc.DataSource = dt;
			listLoc.DisplayMember = "name";
			listLoc.ValueMember = "deptId";
			
			//Bind inventoryLoc name textbox
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
			listLoc.SelectedIndex = -1;
			txtName.Clear();
		}
		
		
		private void btnRemove_Click(object sender, EventArgs e)
		{
			InventoryLocation inventoryLoc = new InventoryLocation();
			inventoryLoc.ID = (long)listLoc.SelectedValue;
			inventoryLoc.Name = txtName.Text;
			
			inventoryLocBA.Delete(inventoryLoc);
			
			//Reload data
			this.ResetControlBindings();
		}
		
		
		private void btnSave_Click(object sender, EventArgs e)
		{
			InventoryLocation inventoryLoc = new InventoryLocation();
			inventoryLoc.Name = txtName.Text;
			
			//If new then insert, otherwise update
			if(listLoc.SelectedIndex == -1)
			{
				inventoryLocBA.Insert(inventoryLoc);
			}
			else
			{
				inventoryLoc.ID = (long)listLoc.SelectedValue;
				inventoryLocBA.Update(inventoryLoc);
			}
			
			//Reload data
			this.ResetControlBindings();
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
				MessageBox.Show("InventoryLocation name cannot be blank", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
			}
		}
	}
}

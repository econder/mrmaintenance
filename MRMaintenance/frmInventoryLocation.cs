/***************************************************************************************************
 * Class:   	frmInventoryLocation.cs
 * Created By: 	Eric Conder
 * Created On: 	8/16/2014
 * 
 * Changes:
 * 2014-10-13 - Fixed databinding bugs with incorrect column names.
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
        private DataTable dtInvLoc;


        public frmInventoryLocation()
        {
            InitializeComponent();

            inventoryLocBA = new InventoryLocationBA();

            FacilityBA facilityBA = new FacilityBA();
            DataTable dtFac = facilityBA.Load();

            cboFacility.DataSource = dtFac;
            cboFacility.DisplayMember = "name";
            cboFacility.ValueMember = "facId";
            this.cboFacility.SelectedIndexChanged += new System.EventHandler(this.cboFacility_SelectedIndexChanged);

            this.FillData();
        }


		private void FillData()
		{
            dtInvLoc = inventoryLocBA.Load();
			
			//Bind inventoryLocs listbox
			listLoc.DataSource = dtInvLoc;
			listLoc.DisplayMember = "name";
			listLoc.ValueMember = "invLocId";
			
			//Bind inventoryLoc name textbox
			txtName.DataBindings.Add("Text", dtInvLoc, "name", true, DataSourceUpdateMode.Never, "");
		}
		
		
		private void ResetControlBindings()
		{
			//Clear existing databindings for each control
			txtName.DataBindings.Clear();
			
			//Clear and reload datatable
			dtInvLoc.Clear();
			
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

            //Show confirmation dialog
            DialogResult dialogResult = MessageBox.Show(String.Format("Are you sure you want to delete this item?", inventoryLoc.Name), "", MessageBoxButtons.YesNo, MessageBoxIcon.Exclamation, MessageBoxDefaultButton.Button2);
            if (dialogResult == DialogResult.Yes)
            {
                //Delete item
                inventoryLocBA.Delete(inventoryLoc);

                //Reload data
                this.ResetControlBindings();
            }
		}
		
		
		private void btnSave_Click(object sender, EventArgs e)
		{
			InventoryLocation inventoryLoc = new InventoryLocation();
			inventoryLoc.Name = txtName.Text;
            inventoryLoc.FacilityID = (long)cboFacility.SelectedValue;
			
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


        private void cboFacility_SelectedIndexChanged(object sender, EventArgs e)
        {
            this.ResetControlBindings();
        }
	}
}

/***************************************************************************************************
 * Class:   	frmVendor.cs
 * Created By: 	Eric Conder
 * Created On: 	7/26/2014
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
	/// Description of frmVendor.
	/// </summary>
	public partial class frmVendor : Form
	{
		private VendorBA vendorBA;
		private StateBA stateBA;
		private DataTable dt;
		
		
		public frmVendor()
		{
			InitializeComponent();
			
			vendorBA = new VendorBA();
			stateBA = new StateBA();
			
			//Load and bind states combobox
			cboState.DataSource = stateBA.Load();
			cboState.DisplayMember = "abbr";
			cboState.ValueMember = "stateId";
			
			this.FillData();
		}
		
		
		private void FillData()
		{
			dt = vendorBA.Load();
			
			//Bind departments listbox
			listVen.DataSource = dt;
			listVen.DisplayMember = "name";
			listVen.ValueMember = "venId";
			
			//Bind controls
			txtName.DataBindings.Add("Text", dt, "name", true, DataSourceUpdateMode.Never, "");
			txtAddr1.DataBindings.Add("Text", dt, "addr1", true, DataSourceUpdateMode.Never, "");
			txtAddr2.DataBindings.Add("Text", dt, "addr2", true, DataSourceUpdateMode.Never, "");
			txtCity.DataBindings.Add("Text", dt, "city", true, DataSourceUpdateMode.Never, "");
			cboState.DataBindings.Add("SelectedValue", dt, "stateId", true, DataSourceUpdateMode.Never, -1);
			txtZip.DataBindings.Add("Text", dt, "zip", true, DataSourceUpdateMode.Never, "");
			txtPhone1.DataBindings.Add("Text", dt, "phone1", true, DataSourceUpdateMode.Never, "");
			txtPhone2.DataBindings.Add("Text", dt, "phone2", true, DataSourceUpdateMode.Never, "");
			txtFax.DataBindings.Add("Text", dt, "fax", true, DataSourceUpdateMode.Never, "");
			txtWeb.DataBindings.Add("Text", dt, "web", true, DataSourceUpdateMode.Never, "");
		}
		
		
		private void ResetControlBindings()
		{
			//Clear existing databindings for each control
			txtName.DataBindings.Clear();
			txtAddr1.DataBindings.Clear();
			txtAddr2.DataBindings.Clear();
			txtCity.DataBindings.Clear();
			cboState.DataBindings.Clear();
			txtZip.DataBindings.Clear();
			txtPhone1.DataBindings.Clear();
			txtPhone2.DataBindings.Clear();
			txtFax.DataBindings.Clear();
			txtWeb.DataBindings.Clear();
			
			//Clear and reload datatable
			dt.Clear();
			
			//Load database and re-bind all the controls
			this.FillData();
		}
		
		
		private void btnNew_Click(object sender, EventArgs e)
		{
			listVen.SelectedIndex = -1;
			txtName.Clear();
			txtAddr1.Clear();
			txtAddr2.Clear();
			txtCity.Clear();
			cboState.SelectedValue = -1;
			txtZip.Clear();
			txtPhone1.Clear();
			txtPhone2.Clear();
			txtFax.Clear();
			txtWeb.Clear();
		}
		
		
		private void btnRemove_Click(object sender, EventArgs e)
		{
			Vendor vendor = new Vendor();
			vendor.ID = (long)listVen.SelectedValue;

            //Show confirmation dialog
            DialogResult dialogResult = MessageBox.Show(String.Format("Are you sure you want to delete {0}?", vendor.Name), "", MessageBoxButtons.YesNo, MessageBoxIcon.Exclamation, MessageBoxDefaultButton.Button2);
            if (dialogResult == DialogResult.Yes)
            {
                //Delete item
                vendorBA.Delete(vendor);

                //Reload data
                this.ResetControlBindings();
            }
		}
		
		
		private void btnSave_Click(object sender, EventArgs e)
		{
			if(txtName.Text != "" && txtName.Text != null)
			{
				Vendor vendor = new Vendor();
				vendor.Name = txtName.Text;
				vendor.Address1 = txtAddr1.Text;
				vendor.Address2 = txtAddr2.Text;
				vendor.City = txtCity.Text;
				if(cboState.SelectedValue == null) vendor.StateID = 51; else vendor.StateID = (long)cboState.SelectedValue;
				vendor.Zipcode = txtZip.Text;
				vendor.Phone1 = txtPhone1.Text;
				vendor.Phone2 = txtPhone2.Text;
				vendor.Fax = txtFax.Text;
				vendor.Website = txtWeb.Text;
				
				if(listVen.SelectedIndex == -1)
				{
					vendorBA.Insert(vendor);
				}
				else
				{
					vendor.ID = (long)listVen.SelectedValue;
					vendorBA.Update(vendor);
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
				MessageBox.Show("Vendor name cannot be blank", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
			}
		}
	}
}

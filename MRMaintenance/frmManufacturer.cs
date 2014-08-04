/***************************************************************************************************
 * Class:   	frmManufacturer.cs
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
	/// Description of frmManufacturer.
	/// </summary>
	public partial class frmManufacturer : Form
	{
		private ManufacturerBA manBA;
		private StateBA stateBA;
		private DataTable dt;
		
		
		public frmManufacturer()
		{
			InitializeComponent();
			
			manBA = new ManufacturerBA();
			stateBA = new StateBA();
			
			//Load and bind states combobox
			cboState.DataSource = stateBA.Load();
			cboState.DisplayMember = "abbr";
			cboState.ValueMember = "stateId";
			
			this.FillData();
		}
		
		
		private void FillData()
		{
			dt = manBA.Load();
			
			//Bind departments listbox
			listMan.DataSource = dt;
			listMan.DisplayMember = "name";
			listMan.ValueMember = "manId";
			
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
		
		
		private void btnAdd_Click(object sender, EventArgs e)
		{
			Manufacturer man = new Manufacturer();
			man.Name = txtName.Text;
			man.Address1 = txtAddr1.Text;
			man.Address2 = txtAddr2.Text;
			man.City = txtCity.Text;
			if(cboState.SelectedValue == null) man.StateID = 51; else man.StateID = (long)cboState.SelectedValue;
			man.Zipcode = txtZip.Text;
			man.Phone1 = txtPhone1.Text;
			man.Phone2 = txtPhone2.Text;
			man.Fax = txtFax.Text;
			man.Website = txtWeb.Text;
			
			manBA.Insert(man);
			
			//Reload data
			this.ResetControlBindings();
		}
		
		
		private void btnUpdate_Click(object sender, EventArgs e)
		{
			Manufacturer man = new Manufacturer();
			man.ID = (long)listMan.SelectedValue;
			man.Name = txtName.Text;
			man.Address1 = txtAddr1.Text;
			man.Address2 = txtAddr2.Text;
			man.City = txtCity.Text;
			if(cboState.SelectedValue == null) man.StateID = 51; else man.StateID = (long)cboState.SelectedValue;
			man.Zipcode = txtZip.Text;
			man.Phone1 = txtPhone1.Text;
			man.Phone2 = txtPhone2.Text;
			man.Fax = txtFax.Text;
			man.Website = txtWeb.Text;
			
			manBA.Update(man);
			
			//Reload data
			this.ResetControlBindings();
		}
		
		
		private void btnRemove_Click(object sender, EventArgs e)
		{
			Manufacturer man = new Manufacturer();
			man.ID = (long)listMan.SelectedValue;
			
			manBA.Delete(man);
			
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
				MessageBox.Show("Manufacturer name cannot be blank", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
			}
		}
	}
}

/***************************************************************************************************
 * Class:   	frmFacility.cs
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
	/// Description of Facility.
	/// </summary>
	public partial class frmFacility : Form
	{
		private FacilityBA facilityBA;
		private StateBA stateBA;
		private DataTable dt;
		
		
		public frmFacility()
		{
			InitializeComponent();
			
			facilityBA = new FacilityBA();
			stateBA = new StateBA();
			
			//Load and bind states combobox
			cboState.DataSource = stateBA.Load();
			cboState.DisplayMember = "abbr";
			cboState.ValueMember = "stateId";
			
			this.FillData();
		}
		
		
		private void FillData()
		{
			dt = facilityBA.Load();
			
			//Bind departments listbox
			listFac.DataSource = dt;
			listFac.DisplayMember = "name";
			listFac.ValueMember = "facId";
			
			//Bind controls
			txtName.DataBindings.Add("Text", dt, "name", true, DataSourceUpdateMode.Never, "");
			txtAddr1.DataBindings.Add("Text", dt, "addr1", true, DataSourceUpdateMode.Never, "");
			txtAddr2.DataBindings.Add("Text", dt, "addr2", true, DataSourceUpdateMode.Never, "");
			txtCity.DataBindings.Add("Text", dt, "city", true, DataSourceUpdateMode.Never, "");
			cboState.DataBindings.Add("SelectedValue", dt, "stateId", true, DataSourceUpdateMode.Never, -1);
			txtZip.DataBindings.Add("Text", dt, "zip", true, DataSourceUpdateMode.Never, "");
			txtLat.DataBindings.Add("Text", dt, "lat", true, DataSourceUpdateMode.Never, "0");
			txtLong.DataBindings.Add("Text", dt, "long", true, DataSourceUpdateMode.Never, "0");
			txtPhone1.DataBindings.Add("Text", dt, "phone1", true, DataSourceUpdateMode.Never, "");
			txtPhone2.DataBindings.Add("Text", dt, "phone2", true, DataSourceUpdateMode.Never, "");
			txtFax.DataBindings.Add("Text", dt, "fax", true, DataSourceUpdateMode.Never, "");
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
			txtLat.DataBindings.Clear();
			txtLong.DataBindings.Clear();
			txtPhone1.DataBindings.Clear();
			txtPhone2.DataBindings.Clear();
			txtFax.DataBindings.Clear();
			
			//Clear and reload datatable
			dt.Clear();
			
			//Load database and re-bind all the controls
			this.FillData();
		}
		
		
		void btnAdd_Click(object sender, EventArgs e)
		{
			Facility facility = new Facility();
			facility.Name = txtName.Text;
			facility.Address1 = txtAddr1.Text;
			facility.Address2 = txtAddr2.Text;
			facility.City = txtCity.Text;
			facility.StateID = (long)cboState.SelectedValue;
			facility.Zipcode = txtZip.Text;
			facility.Latitude = Convert.ToSingle(txtLat.Text);
			facility.Longitude = Convert.ToSingle(txtLong.Text);
			facility.Phone1 = txtPhone1.Text;
			facility.Phone2 = txtPhone2.Text;
			facility.Fax = txtFax.Text;
			
			facilityBA.Insert(facility);
			
			//Reload data
			this.ResetControlBindings();
		}
		
		
		void btnUpdate_Click(object sender, EventArgs e)
		{
			Facility facility = new Facility();
			facility.ID = (long)listFac.SelectedValue;
			facility.Name = txtName.Text;
			facility.Address1 = txtAddr1.Text;
			facility.Address2 = txtAddr2.Text;
			facility.City = txtCity.Text;
			facility.StateID = (long)cboState.SelectedValue;
			facility.Zipcode = txtZip.Text;
			facility.Latitude = Convert.ToSingle(txtLat.Text);
			facility.Longitude = Convert.ToSingle(txtLong.Text);
			facility.Phone1 = txtPhone1.Text;
			facility.Phone2 = txtPhone2.Text;
			facility.Fax = txtFax.Text;
			
			facilityBA.Update(facility);
			
			//Reload data
			this.ResetControlBindings();
		}
		
		
		void btnRemove_Click(object sender, EventArgs e)
		{
			Facility facility = new Facility();
			facility.ID = (long)listFac.SelectedValue;
			
			facilityBA.Delete(facility);
			
			//Reload data
			this.ResetControlBindings();
		}
		
		
		void btnClose_Click(object sender, EventArgs e)
		{
			this.Hide();
		}
	}
}

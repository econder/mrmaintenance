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
			txtName.DataBindings.Add("Text", dt, "name", true, DataSourceUpdateMode.OnValidation, "");
			txtAddr1.DataBindings.Add("Text", dt, "addr1", true, DataSourceUpdateMode.OnValidation, "");
			txtAddr2.DataBindings.Add("Text", dt, "addr2", true, DataSourceUpdateMode.OnValidation, "");
			txtCity.DataBindings.Add("Text", dt, "city", true, DataSourceUpdateMode.OnValidation, "");
			cboState.DataBindings.Add("SelectedValue", dt, "stateId", true, DataSourceUpdateMode.OnValidation, -1);
			txtZip.DataBindings.Add("Text", dt, "zip", true, DataSourceUpdateMode.OnValidation, "00000-0000");
			txtLat.DataBindings.Add("Text", dt, "lat", true, DataSourceUpdateMode.OnValidation, "0");
			txtLong.DataBindings.Add("Text", dt, "long", true, DataSourceUpdateMode.OnValidation, "0");
			txtPhone1.DataBindings.Add("Text", dt, "phone1", true, DataSourceUpdateMode.OnValidation, "", "000-000-0000");
            txtPhone2.DataBindings.Add("Text", dt, "phone2", true, DataSourceUpdateMode.OnValidation, "", "000-000-0000");
            txtFax.DataBindings.Add("Text", dt, "fax", true, DataSourceUpdateMode.OnValidation, "", "000-000-0000");
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
		
		
		private void btnSave_Click(object sender, EventArgs e)
		{
			if(txtName.Text != "" && txtName.Text != null)
			{
				Facility facility = new Facility();
				facility.Name = txtName.Text;
				facility.Address1 = txtAddr1.Text;
				facility.Address2 = txtAddr2.Text;
				facility.City = txtCity.Text;
                if (cboState.SelectedIndex > -1) { facility.StateID = (long)cboState.SelectedValue; } else { facility.StateID = null; }
				facility.Zipcode = txtZip.Text;
                if (txtLat.Text != "") { facility.Latitude = Convert.ToSingle(txtLat.Text); } else { facility.Latitude = null; }
                if (txtLong.Text != "") { facility.Longitude = Convert.ToSingle(txtLong.Text); } else { facility.Longitude = null; }
				facility.Phone1 = txtPhone1.Text;
				facility.Phone2 = txtPhone2.Text;
				facility.Fax = txtFax.Text;
				
				if(listFac.SelectedIndex == -1)
				{
					facilityBA.Insert(facility);
				}
				else
				{
					facility.ID = (long)listFac.SelectedValue;
					facilityBA.Update(facility);
				}
				
				//Reload data
				this.ResetControlBindings();
			}
			else
			{
				return;
			}
		}
		
		
		private void btnNew_Click(object sender, EventArgs e)
		{
			listFac.SelectedIndex = -1;
			txtName.Text = "";
			txtAddr1.Text = "";
			txtAddr2.Text = "";
			txtCity.Text = "";
			cboState.SelectedIndex = -1;
			txtZip.Text = "";
			txtLat.Text = "";
			txtLong.Text = "";
			txtPhone1.Text = "";
			txtPhone2.Text = "";
			txtFax.Text = "";
		}
		
		
		private void btnRemove_Click(object sender, EventArgs e)
		{
			if(listFac.SelectedIndex >= 0)
			{
				Facility facility = new Facility();
				facility.ID = (long)listFac.SelectedValue;
				
				facilityBA.Delete(facility);
				
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
				MessageBox.Show("Facility name cannot be blank", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
			}
		}
	}
}

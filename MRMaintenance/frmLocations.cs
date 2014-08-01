/***************************************************************************************************
 * Class:   	frmLocations.cs
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
	/// Description of frmLocations.
	/// </summary>
	public partial class frmLocations : Form
	{
		private FacilityBA facilityBA;
		private LocationBA locationBA;
		private StateBA stateBA;
		private DataTable dt;
		
		
		public frmLocations()
		{
			InitializeComponent();
			
			facilityBA = new FacilityBA();
			locationBA = new LocationBA();
			stateBA = new StateBA();
			
			//Load and bind facilities combobox
			cboFacilities.DataSource = facilityBA.Load();
			cboFacilities.DisplayMember = "name";
			cboFacilities.ValueMember = "facId";
			
			//Setup event handler after loading and binding the control
			//to prevent firing the event before the control is populated
			this.cboFacilities.SelectedIndexChanged += new System.EventHandler(this.cboFacilities_SelectedIndexChanged);
			
			//Load and bind states combobox
			cboState.DataSource = stateBA.Load();
			cboState.DisplayMember = "abbr";
			cboState.ValueMember = "stateId";
			
			this.FillData();
		}
		
		
		private void FillData()
		{
			dt = locationBA.LoadByFacility((long)cboFacilities.SelectedValue);
			
			//Bind departments listbox
			listLoc.DataSource = dt;
			listLoc.DisplayMember = "name";
			listLoc.ValueMember = "locId";
			
			//Bind controls
			txtName.DataBindings.Add("Text", dt, "name", true, DataSourceUpdateMode.Never, "");
			txtAddr1.DataBindings.Add("Text", dt, "addr1", true, DataSourceUpdateMode.Never, "");
			txtAddr2.DataBindings.Add("Text", dt, "addr2", true, DataSourceUpdateMode.Never, "");
			txtCity.DataBindings.Add("Text", dt, "city", true, DataSourceUpdateMode.Never, "");
			cboState.DataBindings.Add("SelectedValue", dt, "stateId", true, DataSourceUpdateMode.Never, -1);
			txtZip.DataBindings.Add("Text", dt, "zip", true, DataSourceUpdateMode.Never, "");
			txtLat.DataBindings.Add("Text", dt, "lat", true, DataSourceUpdateMode.Never, "0");
			txtLong.DataBindings.Add("Text", dt, "long", true, DataSourceUpdateMode.Never, "0");
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
			
			//Clear and reload datatable
			dt.Clear();
			
			//Load database and re-bind all the controls
			this.FillData();
		}
		
		
		void btnAdd_Click(object sender, MouseEventArgs e)
		{
			Location location = new Location();
			location.FacilityID = (long)cboFacilities.SelectedValue;
			location.Name = txtName.Text;
			location.Address1 = txtAddr1.Text;
			location.Address2 = txtAddr2.Text;
			location.City = txtCity.Text;
			location.StateID = (long)cboState.SelectedValue;
			location.Zipcode = txtZip.Text;
			location.Latitude = Convert.ToSingle(txtLat.Text);
			location.Longitude = Convert.ToSingle(txtLong.Text);
			
			locationBA.Insert(location);
			
			//Reload data
			this.ResetControlBindings();
		}
		
		
		void btnUpdate_Click(object sender, MouseEventArgs e)
		{
			Location location = new Location();
			location.ID = (long)listLoc.SelectedValue;
			location.FacilityID = (long)cboFacilities.SelectedValue;
			location.Name = txtName.Text;
			location.Address1 = txtAddr1.Text;
			location.Address2 = txtAddr2.Text;
			location.City = txtCity.Text;
			location.StateID = (long)cboState.SelectedValue;
			location.Zipcode = txtZip.Text;
			location.Latitude = Convert.ToSingle(txtLat.Text);
			location.Longitude = Convert.ToSingle(txtLong.Text);
			
			locationBA.Update(location);
			
			//Reload data
			this.ResetControlBindings();
		}
		
		
		void btnRemove_Click(object sender, MouseEventArgs e)
		{
			Location location = new Location();
			location.ID = (long)listLoc.SelectedValue;
			
			locationBA.Delete(location);
			
			//Reload data
			this.ResetControlBindings();
		}
		
		
		void btnClose_Click(object sender, MouseEventArgs e)
		{
			this.Hide();
		}
		
		
		void cboFacilities_SelectedIndexChanged(object sender, EventArgs e)
		{
			try
			{
				//Load locations listbox with LocationsByFacility
				dt = locationBA.LoadByFacility((long)cboFacilities.SelectedValue);
				
				this.ResetControlBindings();
			}
			catch(InvalidCastException ex)
			{
				//Catch null datetimepicker values but ignore them since they are ok.
				//Caught in its own catch block to prevent filling up the
				//log file with useless errors that are unpreventable at this point.
				return;
			}
			catch(Exception ex)
			{
				WinEventLog winel = new WinEventLog();
				winel.WriteEvent(ex);
				return;
			}
		}
	}
}

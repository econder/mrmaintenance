/***************************************************************************************************
 * Class:   	frmEquipment.cs
 * Created By: 	Eric Conder
 * Created On: 	7/24/2014
 * 
 * Changes:
 * 
 *
 * *************************************************************************************************/
using System;
using System.Diagnostics;
using System.Drawing;
using System.Data;
using System.Windows.Forms;
using MRMaintenance.BusinessAccess;
using MRMaintenance.BusinessObjects;
using MRMaintenance.Data;

namespace MRMaintenance
{
	/// <summary>
	/// Description of frmEquipment.
	/// </summary>
	public partial class frmEquipment : Form
	{
		private FacilityBA facilityBA;
		private LocationBA locationBA;
		private EquipmentBA equipmentBA;
		private EquipmentModelBA equipmentModelBA;
		private EquipmentDocBA equipmentDocBA;
		private EquipmentTypeBA equipmentTypeBA;
		private ManufacturerBA manufacturerBA;
		private VendorBA vendorBA;
		
		private DataTable dtFacility;
		private DataTable dtEquip;
		private DataTable dtEquipDocs;
		
		
		public frmEquipment()
		{
			this.Initialize(null);
		}
		
		
		public frmEquipment(long equipmentId)
		{
			this.Initialize(equipmentId);
			
			listEquip.SelectedValue = equipmentId;
		}
		
		
		private void Initialize(Nullable<long> equipmentId)
		{
			InitializeComponent();
			
			equipmentBA = new EquipmentBA();
			equipmentModelBA = new EquipmentModelBA();
			equipmentDocBA = new EquipmentDocBA();
			equipmentTypeBA = new EquipmentTypeBA();
			facilityBA = new FacilityBA();
			locationBA = new LocationBA();
			manufacturerBA = new ManufacturerBA();
			vendorBA = new VendorBA();
			
			//Load and bind facilities combobox
			dtFacility = facilityBA.Load();
			cboFacility.DataSource = dtFacility;
			cboFacility.DisplayMember = "name";
			cboFacility.ValueMember = "facId";
			this.cboFacility.SelectedIndexChanged += new System.EventHandler(this.cboFacility_SelectedIndexChanged);
			
			//Load and bind manufacturers combobox
			cboManufacturer.DataSource = manufacturerBA.Load();
			cboManufacturer.DisplayMember = "name";
			cboManufacturer.ValueMember = "manId";
			
			//Load and bind vendors combobox
			cboVendor.DataSource = vendorBA.Load();
			cboVendor.DisplayMember = "name";
			cboVendor.ValueMember = "venId";
			
			//Load and bind vendors combobox
			cboModel.DataSource = equipmentModelBA.Load();
			cboModel.DisplayMember = "modelName";
			cboModel.ValueMember = "modelId";
			
			//Load and bind equipment types combobox
			cboEquipType.DataSource = equipmentTypeBA.Load();
			cboEquipType.DisplayMember = "typeName";
			cboEquipType.ValueMember = "typeId";
			
			this.FillData();
			
			//Setup event handler after loading and binding the control
			//to prevent firing the event before the control is populated
			this.listEquip.SelectedIndexChanged += new System.EventHandler(this.listEquip_SelectedIndexChanged);
		}
		
		
		private void FillData()
		{
			dtEquip = equipmentBA.Load();
			
			//Bind departments listbox
			listEquip.DataSource = dtEquip;
			listEquip.DisplayMember = "equipName";
			listEquip.ValueMember = "equipId";
			
			//Load and bind facility locations combobox
			cboLocation.DataSource = locationBA.LoadByFacility((long)cboFacility.SelectedValue);
			cboLocation.DisplayMember = "name";
			cboLocation.ValueMember = "locId";
			
			//Load and bind equipment name textbox
			txtName.DataBindings.Add("Text", dtEquip, "equipName", true, DataSourceUpdateMode.Never, "");
			
			//Load and bind equipment number textbox
			txtEquipNumber.DataBindings.Add("Text", dtEquip, "equipNumber", true, DataSourceUpdateMode.Never, "");
			
			//Load and bind equipment description textbox
			txtDescr.DataBindings.Add("Text", dtEquip, "descr", true, DataSourceUpdateMode.Never, "");
			
			//Load and bind model & serial #'s textboxes
			txtSerial.DataBindings.Add("Text", dtEquip, "equipSerial", true, DataSourceUpdateMode.Never, "");
		}
		
		
		private void ResetControlBindings()
		{
			//Clear existing databindings for each control
			listEquip.DataBindings.Clear();
			cboFacility.DataBindings.Clear();
			cboLocation.DataBindings.Clear();
			txtName.DataBindings.Clear();
			txtEquipNumber.DataBindings.Clear();
			txtDescr.DataBindings.Clear();
			cboManufacturer.DataBindings.Clear();
			cboVendor.DataBindings.Clear();
			cboModel.DataBindings.Clear();
			txtSerial.DataBindings.Clear();
			cboEquipType.DataBindings.Clear();
			
			//Clear and reload datatable
			dtEquip.Clear();
			
			//Load database and re-bind all the controls
			this.FillData();
		}
		
		
		private void ResetDocControlBindings()
		{
			//Clear existing databindings for equipment docs
			listEquipDocs.DataBindings.Clear();
			
			//Clear and reload datatable
			dtEquipDocs.Clear();
			
			//Load database and re-bind all the controls
			dtEquipDocs = equipmentDocBA.LoadByEquipment((long)listEquip.SelectedValue);
		}
		
		
		private void cboFacility_SelectedIndexChanged(object sender, EventArgs e)
		{
			//Load and bind facility locations combobox
			cboLocation.DataSource = locationBA.LoadByFacility((long)cboFacility.SelectedValue);
			cboLocation.DisplayMember = "name";
			cboLocation.ValueMember = "locId";
		}
		
		
		private void listEquip_SelectedIndexChanged(object sender, EventArgs e)
		{
			dtEquipDocs = equipmentDocBA.LoadByEquipment((long)listEquip.SelectedValue);
			
			listEquipDocs.DataSource = dtEquipDocs;
			listEquipDocs.DisplayMember = "equipDocName";
			listEquipDocs.ValueMember = "equipDocLink";
		}
		
		
		private void btnRemove_Click(object sender, EventArgs e)
		{
			Equipment equipment = new Equipment();
			equipment.ID = (long)listEquip.SelectedValue;
			
			equipmentBA.Delete(equipment);
			
			this.ResetControlBindings();
		}
		
		
		private void btnAdd_Click(object sender, EventArgs e)
		{
			Equipment equipment = new Equipment();
			equipment.LocationID = (long)cboLocation.SelectedValue;
			equipment.EquipmentTypeID = (long)cboEquipType.SelectedValue;
			equipment.ManufacturerID = (long)cboManufacturer.SelectedValue;
			equipment.VendorID = (long)cboVendor.SelectedValue;
			equipment.ModelID = (long)cboModel.SelectedValue;
			equipment.EquipmentNumber = txtEquipNumber.Text;
			equipment.Name = txtName.Text;
			equipment.Description = txtDescr.Text;
			equipment.Serial = txtSerial.Text;
			
			equipmentBA.Insert(equipment);
			
			this.ResetControlBindings();
		}
		
		
		private void btnUpdate_Click(object sender, EventArgs e)
		{
			Equipment equipment = new Equipment();
			equipment.ID = (long)listEquip.SelectedValue;
			equipment.LocationID = (long)cboLocation.SelectedValue;
			equipment.EquipmentTypeID = (long)cboEquipType.SelectedValue;
			equipment.ManufacturerID = (long)cboManufacturer.SelectedValue;
			equipment.VendorID = (long)cboVendor.SelectedValue;
			equipment.ModelID = (long)cboModel.SelectedValue;
			equipment.EquipmentNumber = txtEquipNumber.Text;
			equipment.Name = txtName.Text;
			equipment.Description = txtDescr.Text;
			equipment.Serial = txtSerial.Text;
			
			equipmentBA.Update(equipment);
			
			this.ResetControlBindings();
		}
		
		
		private void btnDocRemove_Click(object sender, EventArgs e)
		{
			EquipmentDoc equipmentDoc = new EquipmentDoc();
			equipmentDoc.ID = (long)listEquipDocs.SelectedValue;
			
			equipmentDocBA.Delete(equipmentDoc);
			
			this.ResetDocControlBindings();
			
			listEquipDocs.DataSource = dtEquipDocs;
			listEquipDocs.DisplayMember = "equipDocName";
			listEquipDocs.ValueMember = "equipDocLink";
		}
		
		
		private void btnDocAdd_Click(object sender, EventArgs e)
		{
			//Only need equipment ID in the equipment object
			Equipment equipment = new Equipment();
			equipment.ID = (long)listEquip.SelectedValue;
			
			frmEquipmentDoc frm = new frmEquipmentDoc(equipment);
			
			if(frm.ShowDialog(this) == DialogResult.OK)
			{
				this.ResetDocControlBindings();
				
				listEquipDocs.DataSource = dtEquipDocs;
				listEquipDocs.DisplayMember = "equipDocName";
				listEquipDocs.ValueMember = "equipDocLink";
			}
		}
		
		
		private void listEquipDocs_DoubleClick(object sender, EventArgs e)
		{
			Process.Start(listEquipDocs.SelectedValue.ToString());
		}
		
		
		private void btnClose_Click(object sender, EventArgs e)
		{
			this.Hide();
		}
		
		
		private void cboFacility_Validating(object sender, System.ComponentModel.CancelEventArgs e)
		{
			//Check for null values
			if(cboFacility.Text == "" || cboFacility.Text == null)
			{
				MessageBox.Show("Facility cannot be blank", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
			}
			
			//Check for new values
			if(cboFacility.SelectedText != cboFacility.Text)
			{
				if(MessageBox.Show("Facility does not exist. Would you like to create it?", "",
				                   MessageBoxButtons.YesNo, MessageBoxIcon.Question, MessageBoxDefaultButton.Button2) == DialogResult.Yes)
				{
					frmFacility form = new frmFacility();
					form.ShowDialog(this);
				}
			}
		}
		
		
		private void cboLocation_Validating(object sender, System.ComponentModel.CancelEventArgs e)
		{
			//Check for null values
			if(cboLocation.Text == "" || cboLocation.Text == null)
			{
				MessageBox.Show("Location cannot be blank", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
			}
			
			//Check for new values
			if(cboLocation.SelectedText != cboLocation.Text)
			{
				if(MessageBox.Show("Location does not exist. Would you like to create it?", "",
				                   MessageBoxButtons.YesNo, MessageBoxIcon.Question, MessageBoxDefaultButton.Button2) == DialogResult.Yes)
				{
					frmLocations form = new frmLocations();
					form.ShowDialog(this);
				}
			}
		}
		
		
		private void cboManufacturer_Validating(object sender, System.ComponentModel.CancelEventArgs e)
		{
			//Check for null values
			if(cboManufacturer.Text == "" || cboManufacturer.Text == null)
			{
				MessageBox.Show("Manufacturer cannot be blank", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
			}
			
			//Check for new values
			if(cboManufacturer.SelectedText != cboManufacturer.Text)
			{
				if(MessageBox.Show("Manufacturer does not exist. Would you like to create it?", "",
				                   MessageBoxButtons.YesNo, MessageBoxIcon.Question, MessageBoxDefaultButton.Button2) == DialogResult.Yes)
				{
					frmManufacturer form = new frmManufacturer();
					form.ShowDialog(this);
				}
			}
		}
		
		
		private void cboVendor_Validating(object sender, System.ComponentModel.CancelEventArgs e)
		{
			//Check for new values
			if(cboVendor.SelectedText != cboVendor.Text)
			{
				if(MessageBox.Show("Vendor does not exist. Would you like to create it?", "",
				                   MessageBoxButtons.YesNo, MessageBoxIcon.Question, MessageBoxDefaultButton.Button2) == DialogResult.Yes)
				{
					frmVendor form = new frmVendor();
					form.ShowDialog(this);
				}
			}
		}
		
		
		void cboModel_Validating(object sender, System.ComponentModel.CancelEventArgs e)
		{
			//Check for new values
			if(cboModel.SelectedText != cboModel.Text)
			{
				if(MessageBox.Show("Model does not exist. Would you like to create it?", "",
				                   MessageBoxButtons.YesNo, MessageBoxIcon.Question, MessageBoxDefaultButton.Button2) == DialogResult.Yes)
				{
					EquipmentModel equipmentModel = new EquipmentModel();
					equipmentModel.Name = cboModel.Text;
					equipmentModelBA.Insert(equipmentModel);
				}
			}
		}
		
		
		private void cboEquipType_Validating(object sender, System.ComponentModel.CancelEventArgs e)
		{
			if(cboEquipType.SelectedText != cboEquipType.Text)
			{
				if(MessageBox.Show("Equipment type does not exist. Would you like to create it?", "",
				                   MessageBoxButtons.YesNo, MessageBoxIcon.Question, MessageBoxDefaultButton.Button2) == DialogResult.Yes)
				{
					frmEquipmentType form = new frmEquipmentType();
					form.ShowDialog(this);
				}
			}
		}
		
		
		private void txtName_Validating(object sender, System.ComponentModel.CancelEventArgs e)
		{
			//Check for null values
			if(txtName.Text == "" || txtName.Text == null)
			{
				MessageBox.Show("Equipment name cannot be blank", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
			}
		}
	}
}

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
		private EquipmentDocBA equipmentDocBA;
		private EquipmentTypeBA equipmentTypeBA;
		private ManufacturerBA manufacturerBA;
		private VendorBA vendorBA;
		
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
			equipmentDocBA = new EquipmentDocBA();
			equipmentTypeBA = new EquipmentTypeBA();
			facilityBA = new FacilityBA();
			locationBA = new LocationBA();
			manufacturerBA = new ManufacturerBA();
			vendorBA = new VendorBA();
			
			//Load and bind facilities combobox
			DataTable dtFacility = facilityBA.Load();
			cboFacility.DataSource = dtFacility;
			cboFacility.DisplayMember = "name";
			cboFacility.ValueMember = "facId";
			
			//Load and bind manufacturers combobox
			cboManufacturer.DataSource = manufacturerBA.Load();
			cboManufacturer.DisplayMember = "name";
			cboManufacturer.ValueMember = "manId";
			
			//Load and bind vendors combobox
			cboVendor.DataSource = vendorBA.Load();
			cboVendor.DisplayMember = "name";
			cboVendor.ValueMember = "venId";
			
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
			txtModel.DataBindings.Add("Text", dtEquip, "equipModel", true, DataSourceUpdateMode.Never, "");
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
			txtModel.DataBindings.Clear();
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
		
		
		void listEquip_SelectedIndexChanged(object sender, EventArgs e)
		{
			dtEquipDocs = equipmentDocBA.LoadByEquipment((long)listEquip.SelectedValue);
			
			listEquipDocs.DataSource = dtEquipDocs;
			listEquipDocs.DisplayMember = "equipDocName";
			listEquipDocs.ValueMember = "equipDocLink";
		}
		
		
		void btnRemove_Click(object sender, EventArgs e)
		{
			Equipment equipment = new Equipment();
			equipment.ID = (long)listEquip.SelectedValue;
			
			equipmentBA.Delete(equipment);
			
			this.ResetControlBindings();
		}
		
		
		void btnAdd_Click(object sender, EventArgs e)
		{
			Equipment equipment = new Equipment();
			equipment.LocationID = (long)cboLocation.SelectedValue;
			equipment.EquipmentTypeID = (long)cboEquipType.SelectedValue;
			equipment.ManufacturerID = (long)cboManufacturer.SelectedValue;
			equipment.VendorID = (long)cboVendor.SelectedValue;
			equipment.EquipmentNumber = txtEquipNumber.Text;
			equipment.Name = txtName.Text;
			equipment.Description = txtDescr.Text;
			equipment.Serial = txtSerial.Text;
			equipment.Model = txtModel.Text;
			
			equipmentBA.Insert(equipment);
			
			this.ResetControlBindings();
		}
		
		
		void btnUpdate_Click(object sender, EventArgs e)
		{
			Equipment equipment = new Equipment();
			equipment.ID = (long)listEquip.SelectedValue;
			equipment.LocationID = (long)cboLocation.SelectedValue;
			equipment.EquipmentTypeID = (long)cboEquipType.SelectedValue;
			equipment.ManufacturerID = (long)cboManufacturer.SelectedValue;
			equipment.VendorID = (long)cboVendor.SelectedValue;
			equipment.EquipmentNumber = txtEquipNumber.Text;
			equipment.Name = txtName.Text;
			equipment.Description = txtDescr.Text;
			equipment.Serial = txtSerial.Text;
			equipment.Model = txtModel.Text;
			
			equipmentBA.Update(equipment);
			
			this.ResetControlBindings();
		}
		
		
		void btnDocRemove_Click(object sender, EventArgs e)
		{
			EquipmentDoc equipmentDoc = new EquipmentDoc();
			equipmentDoc.ID = (long)listEquipDocs.SelectedValue;
			
			equipmentDocBA.Delete(equipmentDoc);
			
			this.ResetDocControlBindings();
			
			listEquipDocs.DataSource = dtEquipDocs;
			listEquipDocs.DisplayMember = "equipDocName";
			listEquipDocs.ValueMember = "equipDocLink";
		}
		
		
		void btnDocAdd_Click(object sender, EventArgs e)
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
		
		
		void listEquipDocs_DoubleClick(object sender, EventArgs e)
		{
			Process.Start(listEquipDocs.SelectedValue.ToString());
		}
		
		
		void btnClose_Click(object sender, EventArgs e)
		{
			this.Hide();
		}
		
		
		void cboFacility_Validating(object sender, System.ComponentModel.CancelEventArgs e)
		{
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
		
		
		void cboLocation_Validating(object sender, System.ComponentModel.CancelEventArgs e)
		{
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
		
		
		void cboManufacturer_Validating(object sender, System.ComponentModel.CancelEventArgs e)
		{
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
		
		
		void cboVendor_Validating(object sender, System.ComponentModel.CancelEventArgs e)
		{
			if(cboVendor.SelectedText != cboVendor.Text)
			{
				if(MessageBox.Show("Manufacturer does not exist. Would you like to create it?", "",
				                   MessageBoxButtons.YesNo, MessageBoxIcon.Question, MessageBoxDefaultButton.Button2) == DialogResult.Yes)
				{
					frmVendor form = new frmVendor();
					form.ShowDialog(this);
				}
			}
		}
		
		
		void cboEquipType_Validating(object sender, System.ComponentModel.CancelEventArgs e)
		{
			if(cboEquipType.SelectedText != cboEquipType.Text)
			{
				if(MessageBox.Show("Manufacturer does not exist. Would you like to create it?", "",
				                   MessageBoxButtons.YesNo, MessageBoxIcon.Question, MessageBoxDefaultButton.Button2) == DialogResult.Yes)
				{
					 form = new frmVendor();
					form.ShowDialog(this);
				}
			}
		}
	}
}

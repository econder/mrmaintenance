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
		private EquipmentTypeBA equipmentTypeBA;
		private ManufacturerBA manufacturerBA;
		private VendorBA vendorBA;
		
		public frmEquipment()
		{
			InitializeComponent();
			
			this.FillData();
		}
		
		
		private void FillData()
		{
			//Load and bind equipment datagridview
			dgviewEquip.AutoGenerateColumns = false;
			dgviewEquip.ColumnCount = 2;
			dgviewEquip.Columns[0].Name = "ID";
			dgviewEquip.Columns[0].DataPropertyName = "equipId";
			dgviewEquip.Columns[1].Name = "Name";
			dgviewEquip.Columns[1].DataPropertyName = "equipName";
			equipmentBA = new EquipmentBA();
			DataTable dtEquip = equipmentBA.Load();
			dgviewEquip.DataSource = dtEquip;
			
			
			//Load and bind facilities combobox
			facilityBA = new FacilityBA();
			DataTable dtFacility = facilityBA.Load();
			cboFacility.DataSource = dtFacility;
			cboFacility.DisplayMember = "name";
			cboFacility.ValueMember = "facId";
			
			
			//Load and bind facility locations combobox
			locationBA = new LocationBA();
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
			
			
			//Load and bind manufacturers combobox
			manufacturerBA = new ManufacturerBA();
			cboManufacturer.DataSource = manufacturerBA.Load();
			cboManufacturer.DisplayMember = "name";
			cboManufacturer.ValueMember = "manId";
			
			
			//Load and bind vendors combobox
			vendorBA = new VendorBA();
			cboVendor.DataSource = vendorBA.Load();
			cboVendor.DisplayMember = "name";
			cboVendor.ValueMember = "venId";
			
			
			//Load and bind equipment types combobox
			equipmentTypeBA = new EquipmentTypeBA();
			cboEquipType.DataSource = equipmentTypeBA.Load();
			cboEquipType.DisplayMember = "typeName";
			cboEquipType.ValueMember = "typeId";
		}
		
		
		void btnRemove_Click(object sender, EventArgs e)
		{
			Equipment equipment = new Equipment();
			equipment.ID = (long)dgviewEquip.SelectedRows[0].Cells["ID"].Value;
			
			equipmentBA.Delete(equipment);
			
			dgviewEquip.ResetBindings();
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
			
			dgviewEquip.ResetBindings();
		}
		
		
		void btnUpdate_Click(object sender, EventArgs e)
		{
			Equipment equipment = new Equipment();
			equipment.ID = (long)dgviewEquip.SelectedRows[0].Cells["ID"].Value;
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
			
			dgviewEquip.ResetBindings();
		}
		
		
		void btnClose_Click(object sender, EventArgs e)
		{
			this.Hide();
		}
	}
}

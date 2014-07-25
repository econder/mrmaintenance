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
		private DataTable dtEquip;
		
		public frmEquipment()
		{
			InitializeComponent();
			
			equipmentBA = new EquipmentBA();
			facilityBA = new FacilityBA();
			locationBA = new LocationBA();
			manufacturerBA = new ManufacturerBA();
			vendorBA = new VendorBA();
			equipmentTypeBA = new EquipmentTypeBA();
			
			dgviewEquip.AutoGenerateColumns = false;
			dgviewEquip.ColumnCount = 2;
			dgviewEquip.Columns[0].Name = "ID";
			dgviewEquip.Columns[0].DataPropertyName = "equipId";
			dgviewEquip.Columns[1].Name = "Name";
			dgviewEquip.Columns[1].DataPropertyName = "equipName";
			
			this.FillData();
		}
		
		
		private void FillData()
		{
			dtEquip = equipmentBA.Load();
			
			//Load and bind equipment datagridview
			dgviewEquip.DataSource = dtEquip;
			
			
			//Load and bind facilities combobox
			DataTable dtFacility = facilityBA.Load();
			cboFacility.DataSource = dtFacility;
			cboFacility.DisplayMember = "name";
			cboFacility.ValueMember = "facId";
			
			
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
		}
		
		
		private void ResetControlBindings()
		{
			//Clear existing databindings for each control
			dgviewEquip.DataBindings.Clear();
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
		
		
		void btnRemove_Click(object sender, EventArgs e)
		{
			Equipment equipment = new Equipment();
			equipment.ID = (long)dgviewEquip.SelectedRows[0].Cells["ID"].Value;
			
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
			
			this.ResetControlBindings();
		}
		
		
		void btnClose_Click(object sender, EventArgs e)
		{
			this.Hide();
		}
	}
}

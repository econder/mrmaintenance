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
		private DataTable dtFacility;
		private DataTable dtEquip;
		private DataTable dtEquipDocs;
		private DataTable dtWorkOrderReq;
		
		
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
			
			EquipmentBA equipmentBA = new EquipmentBA();
			EquipmentModelBA equipmentModelBA = new EquipmentModelBA();
			EquipmentDocBA equipmentDocBA = new EquipmentDocBA();
			EquipmentTypeBA equipmentTypeBA = new EquipmentTypeBA();
			FacilityBA facilityBA = new FacilityBA();
			LocationBA locationBA = new LocationBA();
			ManufacturerBA manufacturerBA = new ManufacturerBA();
			VendorBA vendorBA = new VendorBA();
			WorkOrderRequestBA workOrderReqBA = new WorkOrderRequestBA();
			
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
			EquipmentBA equipmentBA = new EquipmentBA();
			dtEquip = equipmentBA.Load();
			
			//Bind departments listbox
			listEquip.DataSource = dtEquip;
			listEquip.DisplayMember = "equipName";
			listEquip.ValueMember = "equipId";
			
			//Load and bind facility locations combobox
			Facility facility = new Facility();
			facility.ID = (long)cboFacility.SelectedValue;
			LocationBA locationBA = new LocationBA();
			cboLocation.DataSource = locationBA.LoadByFacility(facility);
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
			EquipmentDocBA equipmentDocBA = new EquipmentDocBA();
			dtEquipDocs = equipmentDocBA.LoadByEquipment((long)listEquip.SelectedValue);
		}
		
		
		private void ResetWorkOrderRequestListBindings()
		{
			
			Equipment equipment = new Equipment();
			equipment.ID = (long)listEquip.SelectedValue;
			WorkOrderRequestBA workOrderReqBA = new WorkOrderRequestBA();
			dtWorkOrderReq = workOrderReqBA.LoadByEquipment(equipment, 7);
			listWorkOrderReq.DataSource = workOrderReqBA.LoadByEquipment(equipment, 7);
			listWorkOrderReq.DisplayMember = "reqName";
			listWorkOrderReq.ValueMember = "reqId";
			listWorkOrderReq.DataBindings.Clear();
			listWorkOrderReq.DataBindings.Add("SelectedValue", dtWorkOrderReq, "reqId", false, DataSourceUpdateMode.Never, -1);
		}
		
		
		private void cboFacility_SelectedIndexChanged(object sender, EventArgs e)
		{
			//Load and bind facility locations combobox
			cboLocation.DataBindings.Clear();
			Facility facility = new Facility();
			facility.ID = (long)cboFacility.SelectedValue;
			LocationBA locationBA = new LocationBA();
			cboLocation.DataSource = locationBA.LoadByFacility(facility);
			cboLocation.DisplayMember = "name";
			cboLocation.ValueMember = "locId";
		}
		
		
		private void listEquip_SelectedIndexChanged(object sender, EventArgs e)
		{
			Equipment equipment = new Equipment();
			equipment.ID = (long)listEquip.SelectedValue;
			
			//Load and bind docs/links listbox
			EquipmentDocBA equipmentDocBA = new EquipmentDocBA();
			dtEquipDocs = equipmentDocBA.LoadByEquipment(equipment);
			listEquipDocs.DataSource = dtEquipDocs;
			listEquipDocs.DisplayMember = "equipDocName";
			listEquipDocs.ValueMember = "equipDocId";
			
			//Load and bind work order requests listbox
			/*
			WorkOrderRequestBA workOrderReqBA = new WorkOrderRequestBA();
			dtWorkOrderReq = workOrderReqBA.LoadByEquipment(equipment, 7);
			listWorkOrderReq.DataSource = dtWorkOrderReq;
			listWorkOrderReq.DisplayMember = "reqName";
			listWorkOrderReq.ValueMember = "reqId";
			*/
			this.ResetWorkOrderRequestListBindings();
		}
		
		
		private void btnEquipRemove_Click(object sender, EventArgs e)
		{
			Equipment equipment = new Equipment();
			equipment.ID = (long)listEquip.SelectedValue;
			
			EquipmentBA equipmentBA = new EquipmentBA();
			equipmentBA.Delete(equipment);
			
			this.ResetControlBindings();
		}
		
		
		private void btnEquipAdd_Click(object sender, EventArgs e)
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
			
			EquipmentBA equipmentBA = new EquipmentBA();
			equipmentBA.Insert(equipment);
			
			this.ResetControlBindings();
		}
		
		
		private void btnEquipUpdate_Click(object sender, EventArgs e)
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
			
			EquipmentBA equipmentBA = new EquipmentBA();
			equipmentBA.Update(equipment);
			
			this.ResetControlBindings();
		}
		
		
		private void btnDocRemove_Click(object sender, EventArgs e)
		{
			EquipmentDoc equipmentDoc = new EquipmentDoc();
			equipmentDoc.ID = (long)listEquipDocs.SelectedValue;
			
			EquipmentDocBA equipmentDocBA = new EquipmentDocBA();
			equipmentDocBA.Delete(equipmentDoc);
			
			this.ResetDocControlBindings();
			
			listEquipDocs.DataSource = dtEquipDocs;
			listEquipDocs.DisplayMember = "equipDocName";
			listEquipDocs.ValueMember = "equipDocId";
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
				listEquipDocs.ValueMember = "equipDocId";
			}
		}
		
		
		private void listEquipDocs_DoubleClick(object sender, EventArgs e)
		{
			EquipmentDoc equipmentDoc = new EquipmentDoc();
			equipmentDoc.ID = (long)listEquipDocs.SelectedValue;
			EquipmentDocBA equipmentDocBA = new EquipmentDocBA();
			
			string sLink = equipmentDocBA.GetLink(equipmentDoc);
			if(sLink != null && sLink != "")
			{
				Process.Start(sLink);
			}
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
			int i =  cboManufacturer.FindStringExact(cboManufacturer.Text);
			
			if(i == -1)
			{
				if(cboManufacturer.Text.Length > 0)
				{
					if(MessageBox.Show("Equipment manufacturer does not exist. Would you like to create it?", "",
					                   MessageBoxButtons.YesNo, MessageBoxIcon.Question, MessageBoxDefaultButton.Button2) == DialogResult.Yes)
					{
						frmManufacturer form = new frmManufacturer();
						form.ShowDialog(this);
					}
				}
				else
				{
					MessageBox.Show("Equpment manufacturer cannot be blank.", "", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
				}
			}
		}
		
		
		private void cboVendor_Validating(object sender, System.ComponentModel.CancelEventArgs e)
		{
			int i =  cboVendor.FindStringExact(cboVendor.Text);
			
			if(i == -1)
			{
				if(cboVendor.Text.Length > 0)
				{
					if(MessageBox.Show("Equipment vendor does not exist. Would you like to create it?", "",
					                   MessageBoxButtons.YesNo, MessageBoxIcon.Question, MessageBoxDefaultButton.Button2) == DialogResult.Yes)
					{
						frmVendor form = new frmVendor();
						form.ShowDialog(this);
					}
				}
				else
				{
					MessageBox.Show("Equpment vendor cannot be blank.", "", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
				}
			}
		}
		
		
		void cboModel_Validating(object sender, System.ComponentModel.CancelEventArgs e)
		{
			int i =  cboModel.FindStringExact(cboModel.Text);
			
			if(i == -1)
			{
				if(cboModel.Text.Length > 0)
				{
					if(MessageBox.Show("Equipment model does not exist. Would you like to create it?", "",
					                   MessageBoxButtons.YesNo, MessageBoxIcon.Question, MessageBoxDefaultButton.Button2) == DialogResult.Yes)
					{
						frmEquipmentModel form = new frmEquipmentModel();
						form.ShowDialog(this);
					}
				}
				else
				{
					MessageBox.Show("Equpment model cannot be blank.", "", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
				}
			}
		}
		
		
		private void cboEquipType_Validating(object sender, System.ComponentModel.CancelEventArgs e)
		{
			int i =  cboEquipType.FindStringExact(cboEquipType.Text);
			
			if(i == -1)
			{
				if(cboEquipType.Text.Length > 0)
				{
					if(MessageBox.Show("Equipment type does not exist. Would you like to create it?", "",
					                   MessageBoxButtons.YesNo, MessageBoxIcon.Question, MessageBoxDefaultButton.Button2) == DialogResult.Yes)
					{
						frmEquipmentType form = new frmEquipmentType();
						form.ShowDialog(this);
					}
				}
				else
				{
					MessageBox.Show("Equpment type cannot be blank.", "", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
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
		
		
		void btnWORAdd_Click(object sender, EventArgs e)
		{
			frmWorkOrderRequest form = new frmWorkOrderRequest();
			if(form.ShowDialog(this) == DialogResult.OK)
			{
				if(listWorkOrderReq.Items.Count > 0)
				{
					listWorkOrderReq.DataBindings.Clear();
					dtWorkOrderReq.Clear();
				}
				/*
				Equipment equipment = new Equipment();
				equipment.ID = (long)listEquip.SelectedValue;
				WorkOrderRequestBA workOrderReqBA = new WorkOrderRequestBA();
				dtWorkOrderReq = workOrderReqBA.LoadByEquipment(equipment, 7);
				listWorkOrderReq.DataSource = workOrderReqBA.LoadByEquipment(equipment, 7);
				listWorkOrderReq.DisplayMember = "reqName";
				listWorkOrderReq.ValueMember = "reqId";
				listWorkOrderReq.DataBindings.Add("SelectedValue", dtWorkOrderReq, "reqId", false, DataSourceUpdateMode.Never, -1);
				*/
				this.ResetWorkOrderRequestListBindings();
			}
		}
		
		
		void btnWORemove_Click(object sender, EventArgs e)
		{
			WorkOrderRequest workOrderRequest = new WorkOrderRequest();
			workOrderRequest.ID = (long)listWorkOrderReq.SelectedValue;
			
			WorkOrderRequestBA workOrderReqBA = new WorkOrderRequestBA();
			workOrderReqBA.Delete(workOrderRequest);
			
			this.ResetWorkOrderRequestListBindings();
		}
	}
}

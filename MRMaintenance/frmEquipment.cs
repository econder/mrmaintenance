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
		private DataTable dtEquip;
		private DataTable dtEquipDocs;
		private DataTable dtWorkOrderReq;

        private Facility _facility;
		
		public frmEquipment(Facility facility)
		{
            InitializeComponent();

            this._facility = facility;
            this.FillData();
		}
		
		
		public frmEquipment(Facility facility, long equipmentId)
		{
            InitializeComponent();

            //Setup event handler after loading and binding the control
            //to prevent firing the event before the control is populated
            this.listEquip.SelectedIndexChanged += new System.EventHandler(this.listEquip_SelectedIndexChanged);

            this._facility = facility;
            this.FillData();
			
			listEquip.SelectedValue = equipmentId;
		}
		
		
		private void FillData()
		{
			EquipmentBA equipmentBA = new EquipmentBA();
			dtEquip = equipmentBA.Load();
			
			//Bind departments listbox
			listEquip.DataSource = dtEquip;
			listEquip.DisplayMember = "equipName";
			listEquip.ValueMember = "equipId";
            this.listEquip.SelectedIndexChanged += new System.EventHandler(this.listEquip_SelectedIndexChanged);

            //Load and bind equipment name textbox
            txtName.DataBindings.Add("Text", dtEquip, "equipName", true, DataSourceUpdateMode.Never, "");

            //Load and bind Locations combobox
            LocationBA locationBA = new LocationBA();
			cboLocation.DataSource = locationBA.LoadByFacility(this._facility);
			cboLocation.DisplayMember = "name";
			cboLocation.ValueMember = "locId";
            cboLocation.DataBindings.Add("SelectedValue", dtEquip, "locId", true, DataSourceUpdateMode.Never, -1);
			
			//Load and bind equipment number textbox
            txtEquipNumber.DataBindings.Add("Text", dtEquip, "equipNumber", true, DataSourceUpdateMode.Never, "");
			
			//Load and bind equipment description textbox
            txtDescr.DataBindings.Add("Text", dtEquip, "descr", true, DataSourceUpdateMode.Never, "");
		    
            //Load and bind manufacturers combobox
            ManufacturerBA manufacturerBA = new ManufacturerBA();
            cboManufacturer.DataSource = manufacturerBA.Load();
            cboManufacturer.DisplayMember = "name";
            cboManufacturer.ValueMember = "manId";
            cboManufacturer.DataBindings.Add("SelectedValue", dtEquip, "manId", true, DataSourceUpdateMode.Never, -1);

            //Load and bind vendors combobox
            cboVendor.DataBindings.Add("SelectedValue", dtEquip, "vendorId", true, DataSourceUpdateMode.Never, -1);
            VendorBA vendorBA = new VendorBA();
            cboVendor.DataSource = vendorBA.Load();
            cboVendor.DisplayMember = "name";
            cboVendor.ValueMember = "venId";

            //Load and bind vendors combobox
            EquipmentModelBA equipmentModelBA = new EquipmentModelBA();
            cboModel.DataSource = equipmentModelBA.Load();
            cboModel.DisplayMember = "modelName";
            cboModel.ValueMember = "modelId";
            cboModel.DataBindings.Add("SelectedValue", dtEquip, "modelId", true, DataSourceUpdateMode.Never, -1);

            //Bind serial # textbox
            txtSerial.DataBindings.Add("Text", dtEquip, "equipSerial", true, DataSourceUpdateMode.Never, "");

            //Load and bind equipment types combobox
            EquipmentTypeBA equipmentTypeBA = new EquipmentTypeBA();
            cboEquipType.DataSource = equipmentTypeBA.Load();
            cboEquipType.DisplayMember = "typeName";
            cboEquipType.ValueMember = "typeId";
            cboEquipType.DataBindings.Add("SelectedValue", dtEquip, "equipTypeId", true, DataSourceUpdateMode.Never, -1);

            //Bind hmi runtimes/cycles tagnames textboxes
            txtRuntimeTagname.DataBindings.Add("Text", dtEquip, "hmiRuntimeTagname", true, DataSourceUpdateMode.Never, "");
            chkRuntimeCont.DataBindings.Add("Checked", dtEquip, "hmiRuntimeCont", true, DataSourceUpdateMode.Never, 0);
            txtCyclesTagname.DataBindings.Add("Text", dtEquip, "hmiCyclesTagname", true, DataSourceUpdateMode.Never, "");
            chkCyclesCont.DataBindings.Add("Checked", dtEquip, "hmiCyclesCont", true, DataSourceUpdateMode.Never, 0);

            //Load and bind MCC Panel textboxes
            txtMccPanel.DataBindings.Add("Text", dtEquip, "equipMccPanel", true, DataSourceUpdateMode.Never, "");
            txtMccLocation.DataBindings.Add("Text", dtEquip, "equipMccLoc", true, DataSourceUpdateMode.Never, "");
		}
		
		
		private void ResetControlBindings()
		{
			//Clear existing databindings for each control
			listEquip.DataBindings.Clear();
			cboLocation.DataBindings.Clear();
			txtName.DataBindings.Clear();
			txtEquipNumber.DataBindings.Clear();
			txtDescr.DataBindings.Clear();
			cboManufacturer.DataBindings.Clear();
			cboVendor.DataBindings.Clear();
			cboModel.DataBindings.Clear();
			txtSerial.DataBindings.Clear();
            txtRuntimeTagname.DataBindings.Clear();
            chkRuntimeCont.DataBindings.Clear();
            txtCyclesTagname.DataBindings.Clear();
            chkCyclesCont.DataBindings.Clear();
            txtMccPanel.DataBindings.Clear();
            txtMccLocation.DataBindings.Clear();
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
			dtWorkOrderReq = workOrderReqBA.LoadByEquipment(equipment.ID);
            listWorkOrderReq.DataSource = dtWorkOrderReq;
			listWorkOrderReq.DisplayMember = "reqName";
			listWorkOrderReq.ValueMember = "reqId";
			listWorkOrderReq.DataBindings.Clear();
			listWorkOrderReq.DataBindings.Add("SelectedValue", dtWorkOrderReq, "reqId", false, DataSourceUpdateMode.Never, -1);
		}
		
		
		private void listEquip_SelectedIndexChanged(object sender, EventArgs e)
		{
            if (listEquip.SelectedIndex > -1)
            {
                Equipment equipment = new Equipment();
                equipment.ID = (long)listEquip.SelectedValue;

                //Load and bind docs/links listbox
                EquipmentDocBA equipmentDocBA = new EquipmentDocBA();
                dtEquipDocs = equipmentDocBA.LoadByEquipment(equipment);
                listEquipDocs.DataSource = dtEquipDocs;
                listEquipDocs.DisplayMember = "equipDocName";
                listEquipDocs.ValueMember = "equipDocId";

                this.ResetWorkOrderRequestListBindings();
            }
        }


        private void btnDuplicate_Click(object sender, EventArgs e)
        {
            listEquip.SelectedIndex = -1;
            listEquipDocs.DataBindings.Clear();
            listWorkOrderReq.DataBindings.Clear();
        }
		
		
		private void btnEquipNew_Click(object sender, EventArgs e)
		{
            
			listEquip.SelectedIndex = -1;
            cboLocation.Text = "";
			txtName.Clear();
			txtEquipNumber.Clear();
			txtDescr.Clear();
            cboManufacturer.Text = "";
            cboVendor.Text = "";
            cboModel.Text = "";
			txtSerial.Clear();
            cboEquipType.Text = "";
            txtRuntimeTagname.Clear();
            chkRuntimeCont.Checked = false;
            txtCyclesTagname.Clear();
            chkCyclesCont.Checked = false;
            txtMccLocation.Clear();
            txtMccPanel.Clear();

            //Clear necessary databindings out
			listEquipDocs.DataBindings.Clear();
			listWorkOrderReq.DataBindings.Clear();
		}
		
		
		private void btnEquipRemove_Click(object sender, EventArgs e)
		{
			Equipment equipment = new Equipment();
			equipment.ID = (long)listEquip.SelectedValue;
			
			EquipmentBA equipmentBA = new EquipmentBA();
			equipmentBA.Delete(equipment);
			
			this.ResetControlBindings();
		}
		
		
		private void btnEquipSave_Click(object sender, EventArgs e)
		{
			if(cboLocation.SelectedIndex >= 0 && cboEquipType.SelectedIndex >= 0 && cboManufacturer.SelectedIndex >= 0 &&
			   txtName.Text != "" && txtName.Text != null)
			{
				Equipment equipment = new Equipment();
				equipment.LocationID = (long)cboLocation.SelectedValue;
				equipment.EquipmentTypeID = (long)cboEquipType.SelectedValue;
				equipment.ManufacturerID = (long)cboManufacturer.SelectedValue;
                if (cboVendor.SelectedIndex > -1) { equipment.VendorID = (long)cboVendor.SelectedValue; } else { equipment.VendorID = null; }
                if (cboModel.SelectedIndex > -1) { equipment.ModelID = (long)cboModel.SelectedValue; } else { equipment.ModelID = null; }
				equipment.EquipmentNumber = txtEquipNumber.Text;
				equipment.Name = txtName.Text;
				equipment.Description = txtDescr.Text;
				equipment.Serial = txtSerial.Text;
                equipment.HmiRuntimeTagname = txtRuntimeTagname.Text;
                equipment.HmiRuntimeContinuous = chkRuntimeCont.Checked;
                equipment.HmiCyclesTagname = txtCyclesTagname.Text;
                equipment.HmiCyclesContinuous = chkCyclesCont.Checked;
                equipment.MccPanel = txtMccPanel.Text;
                equipment.MccLocation = txtMccLocation.Text;
				
				EquipmentBA equipmentBA = new EquipmentBA();
				
				if(listEquip.SelectedIndex == -1)
				{
					equipmentBA.Insert(equipment);
				}
				else
				{
					equipment.ID = (long)listEquip.SelectedValue;
					equipmentBA.Update(equipment);
				}
				
				this.ResetControlBindings();
			}
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
		
		
		private void btnDocRemove_Click(object sender, EventArgs e)
		{
			if(listEquipDocs.SelectedIndex >= 0)
			{
				EquipmentDoc equipmentDoc = new EquipmentDoc();
				equipmentDoc.ID = (long)listEquipDocs.SelectedValue;

                //Show confirmation dialog
                DialogResult dialogResult = MessageBox.Show(String.Format("Are you sure you want to delete this item?", equipmentDoc.Name), "", MessageBoxButtons.YesNo, MessageBoxIcon.Exclamation, MessageBoxDefaultButton.Button2);
                if (dialogResult == DialogResult.Yes)
                {
                    //Delete the item
                    EquipmentDocBA equipmentDocBA = new EquipmentDocBA();
                    equipmentDocBA.Delete(equipmentDoc);

                    //Reload data
                    this.ResetControlBindings();
                    listEquipDocs.DataSource = dtEquipDocs;
                    listEquipDocs.DisplayMember = "equipDocName";
                    listEquipDocs.ValueMember = "equipDocId";
                }
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
		
		
		private void btnWORAdd_Click(object sender, EventArgs e)
		{
			frmWorkOrderRequest form = new frmWorkOrderRequest((long)listEquip.SelectedValue);
			if(form.ShowDialog(this) == DialogResult.OK)
			{
				if(listWorkOrderReq.Items.Count > 0)
				{
					listWorkOrderReq.DataBindings.Clear();
					dtWorkOrderReq.Clear();
				}
				
				this.ResetWorkOrderRequestListBindings();
			}
		}
		
		
		private void btnWORemove_Click(object sender, EventArgs e)
		{
			if(listWorkOrderReq.SelectedIndex >= 0)
			{
				WorkOrderRequest workOrderRequest = new WorkOrderRequest();
				workOrderRequest.ID = (long)listWorkOrderReq.SelectedValue;

                //Show confirmation dialog
                DialogResult dialogResult = MessageBox.Show(String.Format("Are you sure you want to delete this item?", workOrderRequest.Name), "", MessageBoxButtons.YesNo, MessageBoxIcon.Exclamation, MessageBoxDefaultButton.Button2);
                if (dialogResult == DialogResult.Yes)
                {
                    //Delete item
                    WorkOrderRequestBA workOrderReqBA = new WorkOrderRequestBA();
                    workOrderReqBA.Delete(workOrderRequest);

                    //Reload data
                    this.ResetWorkOrderRequestListBindings();
                }
			}
		}
		
		
		private void btnClose_Click(object sender, EventArgs e)
		{
			this.Hide();
		}
		
		
		private void cboLocation_Validating(object sender, System.ComponentModel.CancelEventArgs e)
		{
			int i =  cboLocation.FindStringExact(cboLocation.Text);
			
			if(i == -1)
			{
				if(cboLocation.Text.Length > 0)
				{
					if(MessageBox.Show("Location does not exist. Would you like to create it?", "",
					                   MessageBoxButtons.YesNo, MessageBoxIcon.Question, MessageBoxDefaultButton.Button2) == DialogResult.Yes)
					{
						frmLocations form = new frmLocations();
						form.ShowDialog(this);
					}
				}
				else
				{
					MessageBox.Show("Location cannot be blank.", "", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
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
            /*
            if (cboVendor.Text.Length > 0)
            {
                if (MessageBox.Show("Equipment vendor does not exist. Would you like to create it?", "",
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
            */
        }
		
		
		private void cboModel_Validating(object sender, System.ComponentModel.CancelEventArgs e)
		{
            /*
            if (cboModel.Text.Length > 0)
            {
                if (MessageBox.Show("Equipment model does not exist. Would you like to create it?", "",
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
            */
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
	}
}

﻿/***************************************************************************************************
 * Class:   	frmPart.cs
 * Created By: 	Eric Conder
 * Created On: 	8/21/2014
 * 
 * Changes:
 * 
 *
 * *************************************************************************************************/
using System;
using System.Configuration;
using System.Data;
using System.Drawing;
using System.Windows.Forms;

using MRMaintenance.BusinessAccess;
using MRMaintenance.BusinessObjects;
using MRMaintenance.Data;


namespace MRMaintenance
{
	/// <summary>
	/// Description of frmPart.
	/// </summary>
	public partial class frmPart : Form
	{
		private DataTable dtPartsInv;
		
		public frmPart()
		{
			this.Initialize(null);
		}
		
		
		public frmPart(long partId)
		{
			this.Initialize(partId);
			
			listParts.SelectedValue = partId;
		}
		
		
		private void Initialize(Nullable<long> partId)
		{
			InitializeComponent();
			
			// Select part if specified
			if(partId != null)
			{
				listParts.SelectedItem = partId;
			}
			
			/** Load and bind controls linked tables **/
			
			//Load and bind manufacturers combobox
			ManufacturerBA manufacturerBA = new ManufacturerBA();
			cboManufacturer.DataSource = manufacturerBA.Load();
			cboManufacturer.DisplayMember = "name";
			cboManufacturer.ValueMember = "manId";
			
			//Load and bind vendors combobox
			VendorBA vendorBA = new VendorBA();
			cboVendor.DataSource = vendorBA.Load();
			cboVendor.DisplayMember = "name";
			cboVendor.ValueMember = "venId";
			
			//Load and bind units combobox
			SizeUnitBA unitBA = new SizeUnitBA();
			cboUnits.DataSource = unitBA.Load();
			cboUnits.DisplayMember = "unitName";
			cboUnits.ValueMember = "unitId";
			
			//Initialize dtPartsInv
			this.dtPartsInv = new DataTable();
			
			this.FillData();
		}
		
		
		private void FillData()
		{
			//Load parts table data
			PartBA partBA = new PartBA();
			DataTable dtParts = partBA.Load();
			
			//Load and bind parts listbox
			listParts.DataSource = dtParts;
			listParts.DisplayMember = "partName";
			listParts.ValueMember = "partId";
			this.listParts.SelectedIndexChanged += new System.EventHandler(this.listParts_SelectedIndexChanged);
			
			//Load and bind part name textbox
			txtName.DataBindings.Add("Text", dtParts, "partName", true, DataSourceUpdateMode.Never, "");
			
			//Load and bind part description textbox
			txtDescr.DataBindings.Add("Text", dtParts, "partDescr", true, DataSourceUpdateMode.Never, "");
			
			//Load and bind part number textbox
			txtPartNumber.DataBindings.Add("Text", dtParts, "partNumber", true, DataSourceUpdateMode.Never, "");
			
			//Load and bind size numeric control
			numSize.DataBindings.Add("Value", dtParts, "partSize", true, DataSourceUpdateMode.Never, 0);
			
			//Add databindings to linked table controls
			cboManufacturer.DataBindings.Add("SelectedValue", dtParts, "manId", true, DataSourceUpdateMode.Never, -1);
			cboVendor.DataBindings.Add("SelectedValue", dtParts, "venId", true, DataSourceUpdateMode.Never, -1);
			cboUnits.DataBindings.Add("SelectedValue", dtParts, "unitId", true, DataSourceUpdateMode.Never, -1);
		}
		
		
		private void ResetControlBindings()
		{
			//Clear existing databindings for each control
			listParts.DataBindings.Clear();
			txtName.DataBindings.Clear();
			txtPartNumber.DataBindings.Clear();
			txtDescr.DataBindings.Clear();
			cboManufacturer.DataBindings.Clear();
			cboVendor.DataBindings.Clear();
			numSize.DataBindings.Clear();
			cboUnits.DataBindings.Clear();
			
			//Load database and re-bind all the controls
			this.FillData();
		}
		
		
		private void listParts_SelectedIndexChanged(object sender, EventArgs e)
		{
			//Load parts table data
			Inventory inv = new Inventory();
			inv.PartID = (long)listParts.SelectedValue;
			InventoryBA invBA = new InventoryBA();
			this.dtPartsInv = invBA.LoadCountByLocation(inv);
			
			//Clear location inventory count
			lblLocCount.Text = "--";
			
			//Load total inventory count
			lblTotalCount.Text = string.Format("{0:N}", invBA.PartCount(inv));
			
			
			//Load and bind parts listbox
			listInvLoc.DataSource = dtPartsInv;
			listInvLoc.DisplayMember = "name";
			listInvLoc.ValueMember = "invLocId";
			this.listInvLoc.SelectedIndexChanged += new System.EventHandler(this.listInvLoc_SelectedIndexChanged);
			
			//Automatically select first inventory location in list
			if(listInvLoc.Items.Count > 0)
				listInvLoc.SelectedIndex = 0;
		}
		
		
		private void listInvLoc_SelectedIndexChanged(object sender, EventArgs e)
		{
			//Load inventory location count
			lblLocCount.DataBindings.Clear();
			lblLocCount.DataBindings.Add("Text", this.dtPartsInv, "qty", true, DataSourceUpdateMode.Never, "", "0,000.00");
		}
		
		
		private void btnPartRemove_Click(object sender, EventArgs e)
		{
			Part part = new Part();
			part.ID = (long)listParts.SelectedValue;
			
			PartBA partBA = new PartBA();
			partBA.Delete(part);
			
			this.ResetControlBindings();
		}
		
		
		private void btnPartNew_Click(object sender, EventArgs e)
		{
			//Deselect selected item in listbox
			listParts.SelectedIndex = -1;
			
			//Clear out controls
			txtName.Clear();
			txtPartNumber.Clear();
			txtDescr.Clear();
			cboManufacturer.SelectedIndex = -1;
			cboVendor.SelectedIndex = -1;
			numSize.Value = 0;
			cboUnits.SelectedIndex = -1;
		}
		
		
		void btnSave_Click(object sender, EventArgs e)
		{
			Part part = new Part();
			part.Name = txtName.Text;
			part.Description = txtDescr.Text;
			part.PartNumber = txtPartNumber.Text;
			
			if(cboManufacturer.SelectedValue != null)
				part.ManufacturerID = (long)cboManufacturer.SelectedValue;
			
			if(cboVendor.SelectedValue != null)
				part.VendorID = (long)cboVendor.SelectedValue;
			
			part.Size = (float)numSize.Value;
			
			if(cboUnits.SelectedValue != null)
				part.SizeUnit = (long)cboUnits.SelectedValue;
			
			PartBA partBA = new PartBA();
			
			if(listParts.SelectedIndex == -1)
			{
				partBA.Insert(part);
			}
			else
			{
				part.ID = (long)listParts.SelectedValue;
				partBA.Update(part);
			}
			
			this.ResetControlBindings();
		}
	}
}

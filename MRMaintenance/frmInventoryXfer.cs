/***************************************************************************************************
 * Class:   	frmInventoryXfer.cs
 * Created By: 	Eric Conder
 * Created On: 	9/17/2014
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
	/// Description of frmInventoryXfer.
	/// </summary>
	public partial class frmInventoryXfer : Form
	{
		private Inventory m_inventory;
		
		public frmInventoryXfer(Inventory inventory)
		{
			m_inventory = inventory;
			
			Initialize();
		}
		
		
		private void Initialize()
		{
			InitializeComponent();
			
			this.FillData();
		}
		
		
		private void FillData()
		{
			//Bind part name label
			lblPartName.DataBindings.Add("Text", m_inventory, "partName", true, DataSourceUpdateMode.Never, "");
			
			//Load and bind inventory locations for the current part in source comboboxes
			InventoryBA invSrcBA = new InventoryBA();
			cboInvLocSrc.DataSource = invSrcBA.LoadLocationsByPart(m_inventory);
			cboInvLocSrc.DisplayMember = "name";
			cboInvLocSrc.ValueMember = "invLocId";
			
			//Bind source quantity label
			lblQtySrc.DataBindings.Add("Text", cboInvLocSrc.DataSource, "qty", true, DataSourceUpdateMode.Never, "", "0,000.00");
			
			//Load and bind inventory locations in destination combobox
			InventoryLocationBA invLocBA = new InventoryLocationBA();
			cboInvLocDst.DataSource = invLocBA.Load();
			cboInvLocDst.DisplayMember = "name";
			cboInvLocDst.ValueMember = "invLocId";
			
			//Bind destination quantity label
			lblQtyDst.DataBindings.Add("Text", cboInvLocDst.DataSource, "qty", true, DataSourceUpdateMode.Never, "", "0,000.00");
			
			//Bind numeric control min/max values based
			//on source & destination quantities
			numQty.Minimum = 0;
			numQty.DataBindings.Add("Maximum", cboInvLocSrc.DataSource, "qty", true, DataSourceUpdateMode.Never, 0);
		}
		
		
		private void btnSave_Click(object sender, EventArgs e)
		{
			Inventory invSrc = new Inventory();
			invSrc.LocationID = (long)cboInvLocSrc.SelectedValue;
			
			Inventory invDst = new Inventory();
			invDst.LocationID = (long)cboInvLocDst.SelectedValue;
			
			InventoryBA invBA = new InventoryBA();
			invBA.Transfer(invSrc, invDst, Convert.ToSingle(numQty.Value));
		}
	}
}

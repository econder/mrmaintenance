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
		private string m_partName;
		private Inventory m_inventory;
		
		public frmInventoryXfer(string partName, Inventory inventory)
		{
			m_partName = partName;
			m_inventory = inventory;
			
			lblPartName.Text = m_partName;
			
			Initialize();
		}
		
		
		private void Initialize()
		{
			InitializeComponent();
			
			this.FillData();
		}
		
		
		private void FillData()
		{
			//Load and bind inventory locations comboboxes
			InventoryBA invSrcBA = new InventoryBA();
			cboInvLocSrc.DataSource = invSrcBA.LoadLocationsByPart(m_inventory);
			cboInvLocSrc.DisplayMember = "name";
			cboInvLocSrc.ValueMember = "invLocId";
			
			//Bind source quantity label
			lblQtySrc.DataBindings.Add("Text", invSrcBA, "qty", true, DataSourceUpdateMode.Never, -1);
			
			InventoryBA invDstBA = new InventoryBA();
			cboInvLocDst.DataSource = invDstBA.LoadLocationsByPart(m_inventory);
			cboInvLocDst.DisplayMember = "name";
			cboInvLocDst.ValueMember = "invLocid";
			
			//Bind destination quantity label
			lblQtyDst.DataBindings.Add("Text", invDstBA, "qty", true, DataSourceUpdateMode.Never, -1);
			
			//Bind numeric control min/max values based
			//on source & destination quantities
			numQty.Minimum = 0;
			numQty.DataBindings.Add("Maximum", invSrcBA, "qty", true, DataSourceUpdateMode.Never, 0);
		}
		
		
		private void btnSave_Click(object sender, EventArgs e)
		{
			m_inventory.Quantity = Convert.ToSingle(numQty.Value);
			
			InventoryBA invBA = new InventoryBA();
			invBA.UpdateLocationPartQty(m_inventory);
		}
	}
}

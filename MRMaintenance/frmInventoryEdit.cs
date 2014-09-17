/***************************************************************************************************
 * Class:   	frmInventoryEdit.cs
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
	/// Description of frmInventoryEdit.
	/// </summary>
	public partial class frmInventoryEdit : Form
	{
		private DataTable dtPartsInv;
		private Inventory m_inventory;
		private string m_partName;
		
		public frmInventoryEdit(string partName, Inventory inventory)
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
			//Load and bind inventory locations combobox
			InventoryBA invBA = new InventoryBA();
			cboInvLoc.DataSource = invBA.LoadLocationsByPart(m_inventory);
			cboInvLoc.DisplayMember = "name";
			cboInvLoc.ValueMember = "invLocId";
			
			//Initialize dtPartsInv
			this.dtPartsInv = invBA.LoadPartQtyByLocation(m_inventory);
			
			//Bind quantity numberic control
			numQty.DataBindings.Add("Value", dtPartsInv, "qty", true, DataSourceUpdateMode.Never, 0);
		}
		
		
		private void btnSave_Click(object sender, EventArgs e)
		{
			m_inventory.Quantity = Convert.ToSingle(numQty.Value);
			
			InventoryBA invBA = new InventoryBA();
			invBA.UpdateLocationPartQty(m_inventory);
		}
	}
}

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
		
		public frmInventoryEdit(Inventory inventory)
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
		
		
		private void ResetControlBindings()
		{
			//Clear existing databindings for each control
			//cboInvLoc.DataBindings.Clear();
			//numQty.DataBindings.Clear();
			
			//Clear and reload datatable
			//dtPartsInv.Clear();
			
			//Load database and re-bind all the controls
			//this.FillData();
		}
		
		
		private void btnSave_Click(object sender, EventArgs e)
		{
			m_inventory.Quantity = Convert.ToSingle(numQty.Value);
			
			InventoryBA invBA = new InventoryBA();
			invBA.UpdateLocationPartQty(m_inventory);
		}
	}
}

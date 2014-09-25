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
			
			//Bind part name label
			lblPartName.DataBindings.Add("Text", cboInvLoc.DataSource, "partName", true, DataSourceUpdateMode.Never, "");
			
			//Bind quantity numberic control
			numQty.DataBindings.Add("Value", dtPartsInv, "qty", true, DataSourceUpdateMode.Never, 0);
		}
		
		
		private void btnSave_Click(object sender, EventArgs e)
		{
			m_inventory.Quantity = Convert.ToSingle(numQty.Value);
			
			InventoryBA invBA = new InventoryBA();
			invBA.UpdateLocationPartQty(m_inventory);
		}
		
		
		private void cboInvLoc_Valdiating(object sender, System.ComponentModel.CancelEventArgs e)
		{
			int i =  cboInvLoc.FindStringExact(cboInvLoc.Text);
			
			if(i == -1)
			{
				if(cboInvLoc.Text.Length > 0)
				{
					if(MessageBox.Show("Inventory location does not exist. Would you like to create it?", "",
					                   MessageBoxButtons.YesNo, MessageBoxIcon.Question, MessageBoxDefaultButton.Button2) == DialogResult.Yes)
					{
						frmInventoryLocation form = new frmInventoryLocation();
						form.ShowDialog(this);
					}
				}
				else
				{
					MessageBox.Show("Inventory location cannot be blank.", "", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
				}
			}
		}
	}
}

/***************************************************************************************************
 * Class:   	frmEquipmentDocs.cs
 * Created By: 	Eric Conder
 * Created On: 	7/31/2014
 * 
 * Changes:
 * 
 *
 * *************************************************************************************************/
using System;
using System.Data;
using System.Drawing;
using System.IO;
using System.Windows.Forms;

using MRMaintenance.BusinessAccess;
using MRMaintenance.BusinessObjects;


namespace MRMaintenance
{
	/// <summary>
	/// Description of frmEquipmentDoc.
	/// </summary>
	public partial class frmEquipmentDoc : Form
	{
		public frmEquipmentDoc(Equipment equipment)
		{
			InitializeComponent();
			
			Equipment = equipment;
		}
		
		
		//Properties
		public MRMaintenance.BusinessObjects.Equipment Equipment { get; set; }
		
		
		private void btnBrowse_Click(object sender, EventArgs e)
		{
			OpenFileDialog dlg = new OpenFileDialog();
			dlg.CheckFileExists = true;
			dlg.CheckPathExists = true;
			dlg.RestoreDirectory = true;
			dlg.Multiselect = false;
			dlg.Title = "Select file...";
			dlg.Filter = "All files (*.*)|*.*";
			
			if(dlg.ShowDialog() == DialogResult.OK)
			{
				txtLink.Text = dlg.FileName;
			}
		}
		
		
		private void btnOK_Click(object sender, EventArgs e)
		{
			
			EquipmentDoc equipDoc = new EquipmentDoc();
			equipDoc.EquipmentID = this.Equipment.ID;
			equipDoc.Name = txtName.Text;
			equipDoc.Link = txtLink.Text;
			
			EquipmentDocBA equipDocBA = new EquipmentDocBA();
			equipDocBA.Insert(equipDoc);
			
			this.Hide();
		}
		
		
		private void btnCancel_Click(object sender, EventArgs e)
		{
			this.Hide();
		}
		
		
		private void txtName_Validating(object sender, System.ComponentModel.CancelEventArgs e)
		{
			//Check for null values
			if(txtName.Text == "" || txtName.Text == null)
			{
				MessageBox.Show("Link name cannot be blank", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
			}
		}
	}
}

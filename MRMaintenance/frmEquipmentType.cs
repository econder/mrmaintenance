/***************************************************************************************************
 * Class:   	frmEquipment.cs
 * Created By: 	Eric Conder
 * Created On: 	8/1/2014
 * 
 * Changes:
 * 
 *
 * *************************************************************************************************/
using System;
using System.Data;
using System.Drawing;
using System.Windows.Forms;

using MRMaintenance.BusinessAccess;
using MRMaintenance.BusinessObjects;


namespace MRMaintenance
{
	/// <summary>
	/// Description of frmEquipmentType.
	/// </summary>
	public partial class frmEquipmentType : Form
	{
		private EquipmentTypeBA typeBA;
		private DataTable dt;
		
		
		public frmEquipmentType()
		{
			InitializeComponent();
			
			typeBA = new EquipmentTypeBA();
			
			this.FillData();
		}
		
		
		private void FillData()
		{
			dt = typeBA.Load();
			
			//Bind types listbox
			listType.DataSource = dt;
			listType.DisplayMember = "typeName";
			listType.ValueMember = "typeId";
			
			//Bind type name textbox
			txtName.DataBindings.Add("Text", dt, "typeName", true, DataSourceUpdateMode.Never, "");
		}
		
		
		private void ResetControlBindings()
		{
			//Clear existing databindings for each control
			txtName.DataBindings.Clear();
			
			//Clear and reload datatable
			dt.Clear();
			
			try
			{
				//Load database and re-bind all the controls
				this.FillData();
			}
			catch
			{
				throw;
			}
		}
		
		
		void btnAdd_Click(object sender, EventArgs e)
		{
			EquipmentType type = new EquipmentType();
			type.Name = txtName.Text;
			
			try
			{
				typeBA.Insert(type);
				
				//Reload data
				this.ResetControlBindings();
			}
			catch
			{
				throw;
			}
		}
		
		
		void btnUpdate_Click(object sender, EventArgs e)
		{
			EquipmentType type = new EquipmentType();
			type.ID = (long)listType.SelectedValue;
			type.Name = txtName.Text;
			
			try
			{
				typeBA.Update(type);
				
				//Reload data
				this.ResetControlBindings();
			}
			catch
			{
				throw;
			}
		}
		
		
		void btnRemove_Click(object sender, EventArgs e)
		{
			EquipmentType type = new EquipmentType();
			type.ID = (long)listType.SelectedValue;
			type.Name = txtName.Text;
			
			try
			{
				typeBA.Delete(type);
				
				//Reload data
				this.ResetControlBindings();
			}
			catch
			{
				throw;
			}
		}
		
		
		void btnClose_Click(object sender, EventArgs e)
		{
			this.Hide();
		}
	}
}

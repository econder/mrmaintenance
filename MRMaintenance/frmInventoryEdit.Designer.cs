/***************************************************************************************************
 * Class:  		frmInventoryEdit.cs
 * Created By: 	Eric Conder
 * Created On: 	9/17/2014
 * 
 * Changes:
 * 
 *
 * *************************************************************************************************/
namespace MRMaintenance
{
	partial class frmInventoryEdit
	{
		/// <summary>
		/// Designer variable used to keep track of non-visual components.
		/// </summary>
		private System.ComponentModel.IContainer components = null;
		
		/// <summary>
		/// Disposes resources used by the form.
		/// </summary>
		/// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
		protected override void Dispose(bool disposing)
		{
			if (disposing) {
				if (components != null) {
					components.Dispose();
				}
			}
			base.Dispose(disposing);
		}
		
		/// <summary>
		/// This method is required for Windows Forms designer support.
		/// Do not change the method contents inside the source code editor. The Forms designer might
		/// not be able to load this method if it was changed manually.
		/// </summary>
		private void InitializeComponent()
		{
			this.cboInvLoc = new System.Windows.Forms.ComboBox();
			this.label6 = new System.Windows.Forms.Label();
			this.numQty = new System.Windows.Forms.NumericUpDown();
			this.label3 = new System.Windows.Forms.Label();
			this.lblPartName = new System.Windows.Forms.Label();
			this.lblUnits = new System.Windows.Forms.Label();
			this.btnSave = new System.Windows.Forms.Button();
			this.btnClose = new System.Windows.Forms.Button();
			((System.ComponentModel.ISupportInitialize)(this.numQty)).BeginInit();
			this.SuspendLayout();
			// 
			// cboInvLoc
			// 
			this.cboInvLoc.AutoCompleteMode = System.Windows.Forms.AutoCompleteMode.SuggestAppend;
			this.cboInvLoc.Location = new System.Drawing.Point(6, 48);
			this.cboInvLoc.Name = "cboInvLoc";
			this.cboInvLoc.Size = new System.Drawing.Size(226, 21);
			this.cboInvLoc.TabIndex = 120;
			// 
			// label6
			// 
			this.label6.Location = new System.Drawing.Point(6, 31);
			this.label6.Name = "label6";
			this.label6.Size = new System.Drawing.Size(125, 20);
			this.label6.TabIndex = 121;
			this.label6.Text = "Inventory Location";
			// 
			// numQty
			// 
			this.numQty.DecimalPlaces = 2;
			this.numQty.Location = new System.Drawing.Point(238, 48);
			this.numQty.Maximum = new decimal(new int[] {
									999999999,
									0,
									0,
									0});
			this.numQty.Name = "numQty";
			this.numQty.Size = new System.Drawing.Size(100, 20);
			this.numQty.TabIndex = 131;
			this.numQty.ThousandsSeparator = true;
			// 
			// label3
			// 
			this.label3.Location = new System.Drawing.Point(238, 31);
			this.label3.Name = "label3";
			this.label3.Size = new System.Drawing.Size(100, 20);
			this.label3.TabIndex = 130;
			this.label3.Text = "Quantity";
			// 
			// lblPartName
			// 
			this.lblPartName.Location = new System.Drawing.Point(6, 7);
			this.lblPartName.Name = "lblPartName";
			this.lblPartName.Size = new System.Drawing.Size(100, 20);
			this.lblPartName.TabIndex = 132;
			// 
			// lblUnits
			// 
			this.lblUnits.Location = new System.Drawing.Point(344, 48);
			this.lblUnits.Name = "lblUnits";
			this.lblUnits.Size = new System.Drawing.Size(60, 20);
			this.lblUnits.TabIndex = 133;
			this.lblUnits.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
			// 
			// btnSave
			// 
			this.btnSave.Location = new System.Drawing.Point(246, 101);
			this.btnSave.Name = "btnSave";
			this.btnSave.Size = new System.Drawing.Size(75, 23);
			this.btnSave.TabIndex = 135;
			this.btnSave.Text = "&Save";
			this.btnSave.UseVisualStyleBackColor = true;
			this.btnSave.Click += new System.EventHandler(this.btnSave_Click);
			// 
			// btnClose
			// 
			this.btnClose.DialogResult = System.Windows.Forms.DialogResult.Cancel;
			this.btnClose.Location = new System.Drawing.Point(327, 101);
			this.btnClose.Name = "btnClose";
			this.btnClose.Size = new System.Drawing.Size(75, 23);
			this.btnClose.TabIndex = 134;
			this.btnClose.Text = "&Close";
			this.btnClose.UseVisualStyleBackColor = true;
			// 
			// frmInventoryEdit
			// 
			this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
			this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
			this.ClientSize = new System.Drawing.Size(408, 130);
			this.Controls.Add(this.btnSave);
			this.Controls.Add(this.btnClose);
			this.Controls.Add(this.lblUnits);
			this.Controls.Add(this.lblPartName);
			this.Controls.Add(this.numQty);
			this.Controls.Add(this.label3);
			this.Controls.Add(this.cboInvLoc);
			this.Controls.Add(this.label6);
			this.Name = "frmInventoryEdit";
			this.Padding = new System.Windows.Forms.Padding(3);
			this.Text = "Add Inventory";
			((System.ComponentModel.ISupportInitialize)(this.numQty)).EndInit();
			this.ResumeLayout(false);
		}
		private System.Windows.Forms.Button btnClose;
		private System.Windows.Forms.Button btnSave;
		private System.Windows.Forms.Label lblUnits;
		private System.Windows.Forms.Label lblPartName;
		private System.Windows.Forms.Label label3;
		private System.Windows.Forms.NumericUpDown numQty;
		private System.Windows.Forms.Label label6;
		private System.Windows.Forms.ComboBox cboInvLoc;
	}
}

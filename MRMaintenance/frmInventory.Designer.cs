/***************************************************************************************************
 * Class:   MRDbConnection.cs
 * Created By: Eric Conder
 * Created On: 9/16/2014
 * 
 * Changes:
 * 
 *
 * *************************************************************************************************/
namespace MRMaintenance
{
	partial class frmInventory
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
			System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(frmInventory));
			this.cboUnits = new System.Windows.Forms.ComboBox();
			this.label4 = new System.Windows.Forms.Label();
			this.numSize = new System.Windows.Forms.NumericUpDown();
			this.label3 = new System.Windows.Forms.Label();
			this.btnSave = new System.Windows.Forms.Button();
			this.btnPartNew = new System.Windows.Forms.Button();
			this.btnPartRemove = new System.Windows.Forms.Button();
			this.listParts = new System.Windows.Forms.ListBox();
			this.txtPartNumber = new System.Windows.Forms.TextBox();
			this.label11 = new System.Windows.Forms.Label();
			this.btnClose = new System.Windows.Forms.Button();
			this.txtDescr = new System.Windows.Forms.TextBox();
			this.label10 = new System.Windows.Forms.Label();
			this.cboVendor = new System.Windows.Forms.ComboBox();
			this.label7 = new System.Windows.Forms.Label();
			this.cboManufacturer = new System.Windows.Forms.ComboBox();
			this.label6 = new System.Windows.Forms.Label();
			this.txtName = new System.Windows.Forms.TextBox();
			this.label2 = new System.Windows.Forms.Label();
			this.label1 = new System.Windows.Forms.Label();
			((System.ComponentModel.ISupportInitialize)(this.numSize)).BeginInit();
			this.SuspendLayout();
			// 
			// cboUnits
			// 
			this.cboUnits.AutoCompleteMode = System.Windows.Forms.AutoCompleteMode.SuggestAppend;
			this.cboUnits.Location = new System.Drawing.Point(600, 156);
			this.cboUnits.Name = "cboUnits";
			this.cboUnits.Size = new System.Drawing.Size(120, 21);
			this.cboUnits.TabIndex = 128;
			// 
			// label4
			// 
			this.label4.Location = new System.Drawing.Point(600, 139);
			this.label4.Name = "label4";
			this.label4.Size = new System.Drawing.Size(84, 20);
			this.label4.TabIndex = 129;
			this.label4.Text = "Units";
			// 
			// numSize
			// 
			this.numSize.DecimalPlaces = 2;
			this.numSize.Location = new System.Drawing.Point(494, 156);
			this.numSize.Maximum = new decimal(new int[] {
									999999999,
									0,
									0,
									0});
			this.numSize.Name = "numSize";
			this.numSize.Size = new System.Drawing.Size(100, 20);
			this.numSize.TabIndex = 127;
			this.numSize.ThousandsSeparator = true;
			// 
			// label3
			// 
			this.label3.Location = new System.Drawing.Point(494, 139);
			this.label3.Name = "label3";
			this.label3.Size = new System.Drawing.Size(100, 20);
			this.label3.TabIndex = 126;
			this.label3.Text = "Size";
			// 
			// btnSave
			// 
			this.btnSave.Location = new System.Drawing.Point(564, 322);
			this.btnSave.Name = "btnSave";
			this.btnSave.Size = new System.Drawing.Size(75, 23);
			this.btnSave.TabIndex = 125;
			this.btnSave.Text = "&Save";
			this.btnSave.UseVisualStyleBackColor = true;
			// 
			// btnPartNew
			// 
			this.btnPartNew.Image = ((System.Drawing.Image)(resources.GetObject("btnPartNew.Image")));
			this.btnPartNew.Location = new System.Drawing.Point(178, 293);
			this.btnPartNew.Name = "btnPartNew";
			this.btnPartNew.Size = new System.Drawing.Size(26, 23);
			this.btnPartNew.TabIndex = 124;
			this.btnPartNew.UseVisualStyleBackColor = true;
			// 
			// btnPartRemove
			// 
			this.btnPartRemove.Image = ((System.Drawing.Image)(resources.GetObject("btnPartRemove.Image")));
			this.btnPartRemove.Location = new System.Drawing.Point(210, 293);
			this.btnPartRemove.Name = "btnPartRemove";
			this.btnPartRemove.Size = new System.Drawing.Size(26, 23);
			this.btnPartRemove.TabIndex = 123;
			this.btnPartRemove.UseVisualStyleBackColor = true;
			// 
			// listParts
			// 
			this.listParts.FormattingEnabled = true;
			this.listParts.Location = new System.Drawing.Point(7, 23);
			this.listParts.Name = "listParts";
			this.listParts.Size = new System.Drawing.Size(229, 264);
			this.listParts.TabIndex = 111;
			// 
			// txtPartNumber
			// 
			this.txtPartNumber.Location = new System.Drawing.Point(494, 23);
			this.txtPartNumber.Name = "txtPartNumber";
			this.txtPartNumber.Size = new System.Drawing.Size(153, 20);
			this.txtPartNumber.TabIndex = 114;
			// 
			// label11
			// 
			this.label11.Location = new System.Drawing.Point(494, 7);
			this.label11.Name = "label11";
			this.label11.Size = new System.Drawing.Size(100, 20);
			this.label11.TabIndex = 122;
			this.label11.Text = "Part Number";
			// 
			// btnClose
			// 
			this.btnClose.DialogResult = System.Windows.Forms.DialogResult.Cancel;
			this.btnClose.Location = new System.Drawing.Point(645, 322);
			this.btnClose.Name = "btnClose";
			this.btnClose.Size = new System.Drawing.Size(75, 23);
			this.btnClose.TabIndex = 118;
			this.btnClose.Text = "&Close";
			this.btnClose.UseVisualStyleBackColor = true;
			// 
			// txtDescr
			// 
			this.txtDescr.Location = new System.Drawing.Point(253, 67);
			this.txtDescr.Multiline = true;
			this.txtDescr.Name = "txtDescr";
			this.txtDescr.ScrollBars = System.Windows.Forms.ScrollBars.Vertical;
			this.txtDescr.Size = new System.Drawing.Size(226, 110);
			this.txtDescr.TabIndex = 115;
			// 
			// label10
			// 
			this.label10.Location = new System.Drawing.Point(253, 50);
			this.label10.Name = "label10";
			this.label10.Size = new System.Drawing.Size(100, 20);
			this.label10.TabIndex = 121;
			this.label10.Text = "Description";
			// 
			// cboVendor
			// 
			this.cboVendor.AutoCompleteMode = System.Windows.Forms.AutoCompleteMode.SuggestAppend;
			this.cboVendor.Location = new System.Drawing.Point(494, 110);
			this.cboVendor.Name = "cboVendor";
			this.cboVendor.Size = new System.Drawing.Size(226, 21);
			this.cboVendor.TabIndex = 117;
			// 
			// label7
			// 
			this.label7.Location = new System.Drawing.Point(494, 93);
			this.label7.Name = "label7";
			this.label7.Size = new System.Drawing.Size(84, 20);
			this.label7.TabIndex = 120;
			this.label7.Text = "Vendor";
			// 
			// cboManufacturer
			// 
			this.cboManufacturer.AutoCompleteMode = System.Windows.Forms.AutoCompleteMode.SuggestAppend;
			this.cboManufacturer.Location = new System.Drawing.Point(494, 67);
			this.cboManufacturer.Name = "cboManufacturer";
			this.cboManufacturer.Size = new System.Drawing.Size(226, 21);
			this.cboManufacturer.TabIndex = 116;
			// 
			// label6
			// 
			this.label6.Location = new System.Drawing.Point(494, 50);
			this.label6.Name = "label6";
			this.label6.Size = new System.Drawing.Size(84, 20);
			this.label6.TabIndex = 119;
			this.label6.Text = "Manufacturer";
			// 
			// txtName
			// 
			this.txtName.Location = new System.Drawing.Point(253, 23);
			this.txtName.Name = "txtName";
			this.txtName.Size = new System.Drawing.Size(226, 20);
			this.txtName.TabIndex = 113;
			// 
			// label2
			// 
			this.label2.Location = new System.Drawing.Point(253, 7);
			this.label2.Name = "label2";
			this.label2.Size = new System.Drawing.Size(100, 20);
			this.label2.TabIndex = 112;
			this.label2.Text = "Part Name";
			// 
			// label1
			// 
			this.label1.Location = new System.Drawing.Point(7, 7);
			this.label1.Name = "label1";
			this.label1.Size = new System.Drawing.Size(100, 16);
			this.label1.TabIndex = 110;
			this.label1.Text = "Parts List";
			// 
			// frmInventory
			// 
			this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
			this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
			this.ClientSize = new System.Drawing.Size(724, 349);
			this.Controls.Add(this.cboUnits);
			this.Controls.Add(this.label4);
			this.Controls.Add(this.numSize);
			this.Controls.Add(this.label3);
			this.Controls.Add(this.btnSave);
			this.Controls.Add(this.btnPartNew);
			this.Controls.Add(this.btnPartRemove);
			this.Controls.Add(this.listParts);
			this.Controls.Add(this.txtPartNumber);
			this.Controls.Add(this.label11);
			this.Controls.Add(this.btnClose);
			this.Controls.Add(this.txtDescr);
			this.Controls.Add(this.label10);
			this.Controls.Add(this.cboVendor);
			this.Controls.Add(this.label7);
			this.Controls.Add(this.cboManufacturer);
			this.Controls.Add(this.label6);
			this.Controls.Add(this.txtName);
			this.Controls.Add(this.label2);
			this.Controls.Add(this.label1);
			this.Name = "frmInventory";
			this.Padding = new System.Windows.Forms.Padding(3);
			this.Text = "Inventory";
			((System.ComponentModel.ISupportInitialize)(this.numSize)).EndInit();
			this.ResumeLayout(false);
			this.PerformLayout();
		}
		private System.Windows.Forms.Label label1;
		private System.Windows.Forms.Label label2;
		private System.Windows.Forms.TextBox txtName;
		private System.Windows.Forms.Label label6;
		private System.Windows.Forms.ComboBox cboManufacturer;
		private System.Windows.Forms.Label label7;
		private System.Windows.Forms.ComboBox cboVendor;
		private System.Windows.Forms.Label label10;
		private System.Windows.Forms.TextBox txtDescr;
		private System.Windows.Forms.Button btnClose;
		private System.Windows.Forms.Label label11;
		private System.Windows.Forms.TextBox txtPartNumber;
		private System.Windows.Forms.ListBox listParts;
		private System.Windows.Forms.Button btnPartRemove;
		private System.Windows.Forms.Button btnPartNew;
		private System.Windows.Forms.Button btnSave;
		private System.Windows.Forms.Label label3;
		private System.Windows.Forms.NumericUpDown numSize;
		private System.Windows.Forms.Label label4;
		private System.Windows.Forms.ComboBox cboUnits;
	}
}

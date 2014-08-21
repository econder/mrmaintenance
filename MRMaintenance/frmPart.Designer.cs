/***************************************************************************************************
 * Class:   MRDbConnection.cs
 * Created By: Eric Conder
 * Created On: 8/21/2014
 * 
 * Changes:
 * 
 *
 * *************************************************************************************************/
namespace MRMaintenance
{
	partial class frmPart
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
			System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(frmPart));
			this.btnOK = new System.Windows.Forms.Button();
			this.btnEquipNew = new System.Windows.Forms.Button();
			this.btnPartRemove = new System.Windows.Forms.Button();
			this.listParts = new System.Windows.Forms.ListBox();
			this.btnUpdate = new System.Windows.Forms.Button();
			this.txtPartNumber = new System.Windows.Forms.TextBox();
			this.label11 = new System.Windows.Forms.Label();
			this.btnAdd = new System.Windows.Forms.Button();
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
			this.label3 = new System.Windows.Forms.Label();
			this.numSize = new System.Windows.Forms.NumericUpDown();
			this.cboUnits = new System.Windows.Forms.ComboBox();
			this.label4 = new System.Windows.Forms.Label();
			((System.ComponentModel.ISupportInitialize)(this.numSize)).BeginInit();
			this.SuspendLayout();
			// 
			// btnOK
			// 
			this.btnOK.DialogResult = System.Windows.Forms.DialogResult.OK;
			this.btnOK.Location = new System.Drawing.Point(563, 322);
			this.btnOK.Name = "btnOK";
			this.btnOK.Size = new System.Drawing.Size(75, 23);
			this.btnOK.TabIndex = 104;
			this.btnOK.Text = "&OK";
			this.btnOK.UseVisualStyleBackColor = true;
			// 
			// btnEquipNew
			// 
			this.btnEquipNew.Image = ((System.Drawing.Image)(resources.GetObject("btnEquipNew.Image")));
			this.btnEquipNew.Location = new System.Drawing.Point(209, 293);
			this.btnEquipNew.Name = "btnEquipNew";
			this.btnEquipNew.Size = new System.Drawing.Size(26, 23);
			this.btnEquipNew.TabIndex = 103;
			this.btnEquipNew.UseVisualStyleBackColor = true;
			// 
			// btnPartRemove
			// 
			this.btnPartRemove.Image = ((System.Drawing.Image)(resources.GetObject("btnPartRemove.Image")));
			this.btnPartRemove.Location = new System.Drawing.Point(177, 293);
			this.btnPartRemove.Name = "btnPartRemove";
			this.btnPartRemove.Size = new System.Drawing.Size(26, 23);
			this.btnPartRemove.TabIndex = 102;
			this.btnPartRemove.UseVisualStyleBackColor = true;
			this.btnPartRemove.Click += new System.EventHandler(this.btnPartRemove_Click);
			// 
			// listParts
			// 
			this.listParts.FormattingEnabled = true;
			this.listParts.Location = new System.Drawing.Point(6, 23);
			this.listParts.Name = "listParts";
			this.listParts.Size = new System.Drawing.Size(229, 264);
			this.listParts.TabIndex = 78;
			this.listParts.SelectedIndexChanged += new System.EventHandler(this.listParts_SelectedIndexChanged);
			// 
			// btnUpdate
			// 
			this.btnUpdate.Location = new System.Drawing.Point(563, 183);
			this.btnUpdate.Name = "btnUpdate";
			this.btnUpdate.Size = new System.Drawing.Size(75, 23);
			this.btnUpdate.TabIndex = 89;
			this.btnUpdate.Text = "&Update";
			this.btnUpdate.UseVisualStyleBackColor = true;
			this.btnUpdate.Click += new System.EventHandler(this.btnUpdate_Click);
			// 
			// txtPartNumber
			// 
			this.txtPartNumber.Location = new System.Drawing.Point(493, 23);
			this.txtPartNumber.Name = "txtPartNumber";
			this.txtPartNumber.Size = new System.Drawing.Size(153, 20);
			this.txtPartNumber.TabIndex = 83;
			// 
			// label11
			// 
			this.label11.Location = new System.Drawing.Point(493, 7);
			this.label11.Name = "label11";
			this.label11.Size = new System.Drawing.Size(100, 20);
			this.label11.TabIndex = 100;
			this.label11.Text = "Part Number";
			// 
			// btnAdd
			// 
			this.btnAdd.Location = new System.Drawing.Point(644, 183);
			this.btnAdd.Name = "btnAdd";
			this.btnAdd.Size = new System.Drawing.Size(75, 23);
			this.btnAdd.TabIndex = 90;
			this.btnAdd.Text = "&Add";
			this.btnAdd.UseVisualStyleBackColor = true;
			// 
			// btnClose
			// 
			this.btnClose.DialogResult = System.Windows.Forms.DialogResult.Cancel;
			this.btnClose.Location = new System.Drawing.Point(644, 322);
			this.btnClose.Name = "btnClose";
			this.btnClose.Size = new System.Drawing.Size(75, 23);
			this.btnClose.TabIndex = 91;
			this.btnClose.Text = "&Close";
			this.btnClose.UseVisualStyleBackColor = true;
			// 
			// txtDescr
			// 
			this.txtDescr.Location = new System.Drawing.Point(252, 67);
			this.txtDescr.Multiline = true;
			this.txtDescr.Name = "txtDescr";
			this.txtDescr.ScrollBars = System.Windows.Forms.ScrollBars.Vertical;
			this.txtDescr.Size = new System.Drawing.Size(226, 110);
			this.txtDescr.TabIndex = 84;
			// 
			// label10
			// 
			this.label10.Location = new System.Drawing.Point(252, 50);
			this.label10.Name = "label10";
			this.label10.Size = new System.Drawing.Size(100, 20);
			this.label10.TabIndex = 99;
			this.label10.Text = "Description";
			// 
			// cboVendor
			// 
			this.cboVendor.AutoCompleteMode = System.Windows.Forms.AutoCompleteMode.SuggestAppend;
			this.cboVendor.Location = new System.Drawing.Point(493, 110);
			this.cboVendor.Name = "cboVendor";
			this.cboVendor.Size = new System.Drawing.Size(226, 21);
			this.cboVendor.TabIndex = 86;
			// 
			// label7
			// 
			this.label7.Location = new System.Drawing.Point(493, 93);
			this.label7.Name = "label7";
			this.label7.Size = new System.Drawing.Size(84, 20);
			this.label7.TabIndex = 96;
			this.label7.Text = "Vendor";
			// 
			// cboManufacturer
			// 
			this.cboManufacturer.AutoCompleteMode = System.Windows.Forms.AutoCompleteMode.SuggestAppend;
			this.cboManufacturer.Location = new System.Drawing.Point(493, 67);
			this.cboManufacturer.Name = "cboManufacturer";
			this.cboManufacturer.Size = new System.Drawing.Size(226, 21);
			this.cboManufacturer.TabIndex = 85;
			// 
			// label6
			// 
			this.label6.Location = new System.Drawing.Point(493, 50);
			this.label6.Name = "label6";
			this.label6.Size = new System.Drawing.Size(84, 20);
			this.label6.TabIndex = 95;
			this.label6.Text = "Manufacturer";
			// 
			// txtName
			// 
			this.txtName.Location = new System.Drawing.Point(252, 23);
			this.txtName.Name = "txtName";
			this.txtName.Size = new System.Drawing.Size(226, 20);
			this.txtName.TabIndex = 82;
			// 
			// label2
			// 
			this.label2.Location = new System.Drawing.Point(252, 7);
			this.label2.Name = "label2";
			this.label2.Size = new System.Drawing.Size(100, 20);
			this.label2.TabIndex = 80;
			this.label2.Text = "Part Name";
			// 
			// label1
			// 
			this.label1.Location = new System.Drawing.Point(6, 7);
			this.label1.Name = "label1";
			this.label1.Size = new System.Drawing.Size(100, 16);
			this.label1.TabIndex = 77;
			this.label1.Text = "Parts List";
			// 
			// label3
			// 
			this.label3.Location = new System.Drawing.Point(493, 139);
			this.label3.Name = "label3";
			this.label3.Size = new System.Drawing.Size(100, 20);
			this.label3.TabIndex = 106;
			this.label3.Text = "Size";
			// 
			// numSize
			// 
			this.numSize.DecimalPlaces = 2;
			this.numSize.Location = new System.Drawing.Point(493, 156);
			this.numSize.Maximum = new decimal(new int[] {
									999999999,
									0,
									0,
									0});
			this.numSize.Name = "numSize";
			this.numSize.Size = new System.Drawing.Size(100, 20);
			this.numSize.TabIndex = 107;
			this.numSize.ThousandsSeparator = true;
			// 
			// cboUnits
			// 
			this.cboUnits.AutoCompleteMode = System.Windows.Forms.AutoCompleteMode.SuggestAppend;
			this.cboUnits.Location = new System.Drawing.Point(599, 156);
			this.cboUnits.Name = "cboUnits";
			this.cboUnits.Size = new System.Drawing.Size(120, 21);
			this.cboUnits.TabIndex = 108;
			// 
			// label4
			// 
			this.label4.Location = new System.Drawing.Point(599, 139);
			this.label4.Name = "label4";
			this.label4.Size = new System.Drawing.Size(84, 20);
			this.label4.TabIndex = 109;
			this.label4.Text = "Units";
			// 
			// frmPart
			// 
			this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
			this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
			this.CancelButton = this.btnClose;
			this.ClientSize = new System.Drawing.Size(725, 353);
			this.Controls.Add(this.cboUnits);
			this.Controls.Add(this.label4);
			this.Controls.Add(this.numSize);
			this.Controls.Add(this.label3);
			this.Controls.Add(this.btnOK);
			this.Controls.Add(this.btnEquipNew);
			this.Controls.Add(this.btnPartRemove);
			this.Controls.Add(this.listParts);
			this.Controls.Add(this.btnUpdate);
			this.Controls.Add(this.txtPartNumber);
			this.Controls.Add(this.label11);
			this.Controls.Add(this.btnAdd);
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
			this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedDialog;
			this.MaximizeBox = false;
			this.MinimizeBox = false;
			this.Name = "frmPart";
			this.Padding = new System.Windows.Forms.Padding(3);
			this.ShowIcon = false;
			this.ShowInTaskbar = false;
			this.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent;
			this.Text = "Parts";
			((System.ComponentModel.ISupportInitialize)(this.numSize)).EndInit();
			this.ResumeLayout(false);
			this.PerformLayout();
		}
		private System.Windows.Forms.Label label4;
		private System.Windows.Forms.ComboBox cboUnits;
		private System.Windows.Forms.NumericUpDown numSize;
		private System.Windows.Forms.Label label1;
		private System.Windows.Forms.Label label2;
		private System.Windows.Forms.TextBox txtName;
		private System.Windows.Forms.Label label3;
		private System.Windows.Forms.Label label6;
		private System.Windows.Forms.ComboBox cboManufacturer;
		private System.Windows.Forms.Label label7;
		private System.Windows.Forms.ComboBox cboVendor;
		private System.Windows.Forms.Label label10;
		private System.Windows.Forms.TextBox txtDescr;
		private System.Windows.Forms.Button btnClose;
		private System.Windows.Forms.Button btnAdd;
		private System.Windows.Forms.Label label11;
		private System.Windows.Forms.TextBox txtPartNumber;
		private System.Windows.Forms.Button btnUpdate;
		private System.Windows.Forms.ListBox listParts;
		private System.Windows.Forms.Button btnPartRemove;
		private System.Windows.Forms.Button btnEquipNew;
		private System.Windows.Forms.Button btnOK;
	}
}

/***************************************************************************************************
 * Class:  		frmInventoryXfer.cs
 * Created By: 	Eric Conder
 * Created On: 	9/17/2014
 * 
 * Changes:
 * 
 *
 * *************************************************************************************************/
namespace MRMaintenance
{
	partial class frmInventoryXfer
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
			this.cboInvLocSrc = new System.Windows.Forms.ComboBox();
			this.label6 = new System.Windows.Forms.Label();
			this.numQty = new System.Windows.Forms.NumericUpDown();
			this.label3 = new System.Windows.Forms.Label();
			this.lblPartName = new System.Windows.Forms.Label();
			this.lblUnits = new System.Windows.Forms.Label();
			this.btnSave = new System.Windows.Forms.Button();
			this.btnClose = new System.Windows.Forms.Button();
			this.cboInvLocDst = new System.Windows.Forms.ComboBox();
			this.label1 = new System.Windows.Forms.Label();
			this.label2 = new System.Windows.Forms.Label();
			this.lblQtySrc = new System.Windows.Forms.Label();
			this.lblQtyDst = new System.Windows.Forms.Label();
			this.label5 = new System.Windows.Forms.Label();
			((System.ComponentModel.ISupportInitialize)(this.numQty)).BeginInit();
			this.SuspendLayout();
			// 
			// cboInvLocSrc
			// 
			this.cboInvLocSrc.AutoCompleteMode = System.Windows.Forms.AutoCompleteMode.SuggestAppend;
			this.cboInvLocSrc.Location = new System.Drawing.Point(6, 48);
			this.cboInvLocSrc.Name = "cboInvLocSrc";
			this.cboInvLocSrc.Size = new System.Drawing.Size(226, 21);
			this.cboInvLocSrc.TabIndex = 120;
			// 
			// label6
			// 
			this.label6.Location = new System.Drawing.Point(6, 31);
			this.label6.Name = "label6";
			this.label6.Size = new System.Drawing.Size(125, 20);
			this.label6.TabIndex = 121;
			this.label6.Text = "Inventory Source";
			// 
			// numQty
			// 
			this.numQty.DecimalPlaces = 2;
			this.numQty.Location = new System.Drawing.Point(6, 138);
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
			this.label3.Location = new System.Drawing.Point(6, 121);
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
			this.lblUnits.Location = new System.Drawing.Point(112, 138);
			this.lblUnits.Name = "lblUnits";
			this.lblUnits.Size = new System.Drawing.Size(60, 20);
			this.lblUnits.TabIndex = 133;
			this.lblUnits.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
			// 
			// btnSave
			// 
			this.btnSave.Location = new System.Drawing.Point(166, 178);
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
			this.btnClose.Location = new System.Drawing.Point(247, 178);
			this.btnClose.Name = "btnClose";
			this.btnClose.Size = new System.Drawing.Size(75, 23);
			this.btnClose.TabIndex = 134;
			this.btnClose.Text = "&Close";
			this.btnClose.UseVisualStyleBackColor = true;
			// 
			// cboInvLocDst
			// 
			this.cboInvLocDst.AutoCompleteMode = System.Windows.Forms.AutoCompleteMode.SuggestAppend;
			this.cboInvLocDst.Location = new System.Drawing.Point(6, 93);
			this.cboInvLocDst.Name = "cboInvLocDst";
			this.cboInvLocDst.Size = new System.Drawing.Size(226, 21);
			this.cboInvLocDst.TabIndex = 136;
			// 
			// label1
			// 
			this.label1.Location = new System.Drawing.Point(6, 76);
			this.label1.Name = "label1";
			this.label1.Size = new System.Drawing.Size(125, 20);
			this.label1.TabIndex = 137;
			this.label1.Text = "Inventory Destination";
			// 
			// label2
			// 
			this.label2.Location = new System.Drawing.Point(247, 31);
			this.label2.Name = "label2";
			this.label2.Size = new System.Drawing.Size(53, 20);
			this.label2.TabIndex = 138;
			this.label2.Text = "Quantity";
			this.label2.TextAlign = System.Drawing.ContentAlignment.TopCenter;
			// 
			// lblQtySrc
			// 
			this.lblQtySrc.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
			this.lblQtySrc.Location = new System.Drawing.Point(247, 48);
			this.lblQtySrc.Name = "lblQtySrc";
			this.lblQtySrc.Size = new System.Drawing.Size(53, 20);
			this.lblQtySrc.TabIndex = 139;
			this.lblQtySrc.Text = "--";
			this.lblQtySrc.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
			// 
			// lblQtyDst
			// 
			this.lblQtyDst.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
			this.lblQtyDst.Location = new System.Drawing.Point(247, 93);
			this.lblQtyDst.Name = "lblQtyDst";
			this.lblQtyDst.Size = new System.Drawing.Size(53, 20);
			this.lblQtyDst.TabIndex = 141;
			this.lblQtyDst.Text = "--";
			this.lblQtyDst.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
			// 
			// label5
			// 
			this.label5.Location = new System.Drawing.Point(247, 76);
			this.label5.Name = "label5";
			this.label5.Size = new System.Drawing.Size(53, 20);
			this.label5.TabIndex = 140;
			this.label5.Text = "Quantity";
			this.label5.TextAlign = System.Drawing.ContentAlignment.TopCenter;
			// 
			// frmInventoryXfer
			// 
			this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
			this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
			this.ClientSize = new System.Drawing.Size(328, 207);
			this.Controls.Add(this.lblQtyDst);
			this.Controls.Add(this.label5);
			this.Controls.Add(this.lblQtySrc);
			this.Controls.Add(this.label2);
			this.Controls.Add(this.cboInvLocDst);
			this.Controls.Add(this.label1);
			this.Controls.Add(this.btnSave);
			this.Controls.Add(this.btnClose);
			this.Controls.Add(this.lblUnits);
			this.Controls.Add(this.lblPartName);
			this.Controls.Add(this.numQty);
			this.Controls.Add(this.label3);
			this.Controls.Add(this.cboInvLocSrc);
			this.Controls.Add(this.label6);
			this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedDialog;
			this.MaximizeBox = false;
			this.MinimizeBox = false;
			this.Name = "frmInventoryXfer";
			this.Padding = new System.Windows.Forms.Padding(3);
			this.ShowIcon = false;
			this.ShowInTaskbar = false;
			this.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent;
			this.Text = "Transfer Inventory";
			((System.ComponentModel.ISupportInitialize)(this.numQty)).EndInit();
			this.ResumeLayout(false);
		}
		private System.Windows.Forms.Label label5;
		private System.Windows.Forms.Label lblQtyDst;
		private System.Windows.Forms.Label lblQtySrc;
		private System.Windows.Forms.Label label2;
		private System.Windows.Forms.Label label1;
		private System.Windows.Forms.ComboBox cboInvLocDst;
		private System.Windows.Forms.Button btnClose;
		private System.Windows.Forms.Button btnSave;
		private System.Windows.Forms.Label lblUnits;
		private System.Windows.Forms.Label lblPartName;
		private System.Windows.Forms.Label label3;
		private System.Windows.Forms.NumericUpDown numQty;
		private System.Windows.Forms.Label label6;
		private System.Windows.Forms.ComboBox cboInvLocSrc;
	}
}

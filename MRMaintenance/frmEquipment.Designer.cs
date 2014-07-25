/***************************************************************************************************
 * Class:   MRDbConnection.cs
 * Created By: Eric Conder
 * Created On: 7/24/2014
 * 
 * Changes:
 * 
 *
 * *************************************************************************************************/
namespace MRMaintenance
{
	partial class frmEquipment
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
			this.label1 = new System.Windows.Forms.Label();
			this.dgviewEquip = new System.Windows.Forms.DataGridView();
			this.txtName = new System.Windows.Forms.TextBox();
			this.label2 = new System.Windows.Forms.Label();
			this.cboFacility = new System.Windows.Forms.ComboBox();
			this.label3 = new System.Windows.Forms.Label();
			this.cboLocation = new System.Windows.Forms.ComboBox();
			this.label12 = new System.Windows.Forms.Label();
			this.cboEquipType = new System.Windows.Forms.ComboBox();
			this.label5 = new System.Windows.Forms.Label();
			this.cboManufacturer = new System.Windows.Forms.ComboBox();
			this.label6 = new System.Windows.Forms.Label();
			this.cboVendor = new System.Windows.Forms.ComboBox();
			this.label7 = new System.Windows.Forms.Label();
			this.txtSerial = new System.Windows.Forms.TextBox();
			this.label8 = new System.Windows.Forms.Label();
			this.txtModel = new System.Windows.Forms.TextBox();
			this.label9 = new System.Windows.Forms.Label();
			this.txtDescr = new System.Windows.Forms.TextBox();
			this.label10 = new System.Windows.Forms.Label();
			this.dgviewWO = new System.Windows.Forms.DataGridView();
			this.label4 = new System.Windows.Forms.Label();
			this.btnClose = new System.Windows.Forms.Button();
			this.btnAdd = new System.Windows.Forms.Button();
			this.btnRemove = new System.Windows.Forms.Button();
			this.txtEquipNumber = new System.Windows.Forms.TextBox();
			this.label11 = new System.Windows.Forms.Label();
			this.btnUpdate = new System.Windows.Forms.Button();
			((System.ComponentModel.ISupportInitialize)(this.dgviewEquip)).BeginInit();
			((System.ComponentModel.ISupportInitialize)(this.dgviewWO)).BeginInit();
			this.SuspendLayout();
			// 
			// label1
			// 
			this.label1.Location = new System.Drawing.Point(3, 9);
			this.label1.Name = "label1";
			this.label1.Size = new System.Drawing.Size(100, 16);
			this.label1.TabIndex = 0;
			this.label1.Text = "Equipment List";
			// 
			// dgviewEquip
			// 
			this.dgviewEquip.AllowUserToAddRows = false;
			this.dgviewEquip.AllowUserToDeleteRows = false;
			this.dgviewEquip.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
									| System.Windows.Forms.AnchorStyles.Left)));
			this.dgviewEquip.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.DisplayedCells;
			this.dgviewEquip.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
			this.dgviewEquip.Location = new System.Drawing.Point(6, 29);
			this.dgviewEquip.Name = "dgviewEquip";
			this.dgviewEquip.RowHeadersVisible = false;
			this.dgviewEquip.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
			this.dgviewEquip.Size = new System.Drawing.Size(240, 429);
			this.dgviewEquip.TabIndex = 1;
			// 
			// txtName
			// 
			this.txtName.Location = new System.Drawing.Point(252, 73);
			this.txtName.Name = "txtName";
			this.txtName.Size = new System.Drawing.Size(226, 20);
			this.txtName.TabIndex = 3;
			// 
			// label2
			// 
			this.label2.Location = new System.Drawing.Point(252, 57);
			this.label2.Name = "label2";
			this.label2.Size = new System.Drawing.Size(100, 20);
			this.label2.TabIndex = 2;
			this.label2.Text = "Equipment Name";
			// 
			// cboFacility
			// 
			this.cboFacility.FormattingEnabled = true;
			this.cboFacility.Location = new System.Drawing.Point(252, 29);
			this.cboFacility.Name = "cboFacility";
			this.cboFacility.Size = new System.Drawing.Size(153, 21);
			this.cboFacility.TabIndex = 28;
			// 
			// label3
			// 
			this.label3.Location = new System.Drawing.Point(252, 13);
			this.label3.Name = "label3";
			this.label3.Size = new System.Drawing.Size(100, 16);
			this.label3.TabIndex = 27;
			this.label3.Text = "Facility";
			// 
			// cboLocation
			// 
			this.cboLocation.AutoCompleteMode = System.Windows.Forms.AutoCompleteMode.Suggest;
			this.cboLocation.AutoCompleteSource = System.Windows.Forms.AutoCompleteSource.ListItems;
			this.cboLocation.FormattingEnabled = true;
			this.cboLocation.Location = new System.Drawing.Point(420, 29);
			this.cboLocation.Name = "cboLocation";
			this.cboLocation.Size = new System.Drawing.Size(153, 21);
			this.cboLocation.TabIndex = 30;
			// 
			// label12
			// 
			this.label12.Location = new System.Drawing.Point(420, 13);
			this.label12.Name = "label12";
			this.label12.Size = new System.Drawing.Size(84, 20);
			this.label12.TabIndex = 29;
			this.label12.Text = "Location";
			// 
			// cboEquipType
			// 
			this.cboEquipType.AutoCompleteMode = System.Windows.Forms.AutoCompleteMode.Suggest;
			this.cboEquipType.AutoCompleteSource = System.Windows.Forms.AutoCompleteSource.ListItems;
			this.cboEquipType.FormattingEnabled = true;
			this.cboEquipType.Location = new System.Drawing.Point(495, 249);
			this.cboEquipType.Name = "cboEquipType";
			this.cboEquipType.Size = new System.Drawing.Size(226, 21);
			this.cboEquipType.TabIndex = 34;
			// 
			// label5
			// 
			this.label5.Location = new System.Drawing.Point(495, 232);
			this.label5.Name = "label5";
			this.label5.Size = new System.Drawing.Size(84, 20);
			this.label5.TabIndex = 33;
			this.label5.Text = "Equipment Type";
			// 
			// cboManufacturer
			// 
			this.cboManufacturer.AutoCompleteMode = System.Windows.Forms.AutoCompleteMode.Suggest;
			this.cboManufacturer.AutoCompleteSource = System.Windows.Forms.AutoCompleteSource.ListItems;
			this.cboManufacturer.FormattingEnabled = true;
			this.cboManufacturer.Location = new System.Drawing.Point(495, 118);
			this.cboManufacturer.Name = "cboManufacturer";
			this.cboManufacturer.Size = new System.Drawing.Size(226, 21);
			this.cboManufacturer.TabIndex = 36;
			// 
			// label6
			// 
			this.label6.Location = new System.Drawing.Point(495, 101);
			this.label6.Name = "label6";
			this.label6.Size = new System.Drawing.Size(84, 20);
			this.label6.TabIndex = 35;
			this.label6.Text = "Manufacturer";
			// 
			// cboVendor
			// 
			this.cboVendor.AutoCompleteMode = System.Windows.Forms.AutoCompleteMode.Suggest;
			this.cboVendor.AutoCompleteSource = System.Windows.Forms.AutoCompleteSource.ListItems;
			this.cboVendor.FormattingEnabled = true;
			this.cboVendor.Location = new System.Drawing.Point(495, 161);
			this.cboVendor.Name = "cboVendor";
			this.cboVendor.Size = new System.Drawing.Size(226, 21);
			this.cboVendor.TabIndex = 38;
			// 
			// label7
			// 
			this.label7.Location = new System.Drawing.Point(495, 144);
			this.label7.Name = "label7";
			this.label7.Size = new System.Drawing.Size(84, 20);
			this.label7.TabIndex = 37;
			this.label7.Text = "Vendor";
			// 
			// txtSerial
			// 
			this.txtSerial.Location = new System.Drawing.Point(601, 205);
			this.txtSerial.Name = "txtSerial";
			this.txtSerial.Size = new System.Drawing.Size(120, 20);
			this.txtSerial.TabIndex = 40;
			// 
			// label8
			// 
			this.label8.Location = new System.Drawing.Point(601, 189);
			this.label8.Name = "label8";
			this.label8.Size = new System.Drawing.Size(100, 20);
			this.label8.TabIndex = 39;
			this.label8.Text = "Serial #";
			// 
			// txtModel
			// 
			this.txtModel.Location = new System.Drawing.Point(495, 205);
			this.txtModel.Name = "txtModel";
			this.txtModel.Size = new System.Drawing.Size(100, 20);
			this.txtModel.TabIndex = 42;
			// 
			// label9
			// 
			this.label9.Location = new System.Drawing.Point(495, 189);
			this.label9.Name = "label9";
			this.label9.Size = new System.Drawing.Size(100, 20);
			this.label9.TabIndex = 41;
			this.label9.Text = "Model #";
			// 
			// txtDescr
			// 
			this.txtDescr.Location = new System.Drawing.Point(252, 161);
			this.txtDescr.Multiline = true;
			this.txtDescr.Name = "txtDescr";
			this.txtDescr.ScrollBars = System.Windows.Forms.ScrollBars.Vertical;
			this.txtDescr.Size = new System.Drawing.Size(226, 109);
			this.txtDescr.TabIndex = 44;
			// 
			// label10
			// 
			this.label10.Location = new System.Drawing.Point(252, 144);
			this.label10.Name = "label10";
			this.label10.Size = new System.Drawing.Size(100, 20);
			this.label10.TabIndex = 43;
			this.label10.Text = "Description";
			// 
			// dgviewWO
			// 
			this.dgviewWO.AllowUserToAddRows = false;
			this.dgviewWO.AllowUserToDeleteRows = false;
			this.dgviewWO.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
									| System.Windows.Forms.AnchorStyles.Left) 
									| System.Windows.Forms.AnchorStyles.Right)));
			this.dgviewWO.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.DisplayedCells;
			this.dgviewWO.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
			this.dgviewWO.Location = new System.Drawing.Point(256, 328);
			this.dgviewWO.Name = "dgviewWO";
			this.dgviewWO.RowHeadersVisible = false;
			this.dgviewWO.Size = new System.Drawing.Size(466, 130);
			this.dgviewWO.TabIndex = 45;
			// 
			// label4
			// 
			this.label4.Location = new System.Drawing.Point(252, 309);
			this.label4.Name = "label4";
			this.label4.Size = new System.Drawing.Size(123, 16);
			this.label4.TabIndex = 46;
			this.label4.Text = "Past Work Orders";
			// 
			// btnClose
			// 
			this.btnClose.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right)));
			this.btnClose.DialogResult = System.Windows.Forms.DialogResult.Cancel;
			this.btnClose.Location = new System.Drawing.Point(646, 464);
			this.btnClose.Name = "btnClose";
			this.btnClose.Size = new System.Drawing.Size(75, 23);
			this.btnClose.TabIndex = 47;
			this.btnClose.Text = "&Close";
			this.btnClose.UseVisualStyleBackColor = true;
			this.btnClose.Click += new System.EventHandler(this.btnClose_Click);
			// 
			// btnAdd
			// 
			this.btnAdd.Location = new System.Drawing.Point(646, 276);
			this.btnAdd.Name = "btnAdd";
			this.btnAdd.Size = new System.Drawing.Size(75, 23);
			this.btnAdd.TabIndex = 48;
			this.btnAdd.Text = "&Add";
			this.btnAdd.UseVisualStyleBackColor = true;
			this.btnAdd.Click += new System.EventHandler(this.btnAdd_Click);
			// 
			// btnRemove
			// 
			this.btnRemove.Location = new System.Drawing.Point(252, 276);
			this.btnRemove.Name = "btnRemove";
			this.btnRemove.Size = new System.Drawing.Size(75, 23);
			this.btnRemove.TabIndex = 49;
			this.btnRemove.Text = "&Remove";
			this.btnRemove.UseVisualStyleBackColor = true;
			this.btnRemove.Click += new System.EventHandler(this.btnRemove_Click);
			// 
			// txtEquipNumber
			// 
			this.txtEquipNumber.Location = new System.Drawing.Point(252, 118);
			this.txtEquipNumber.Name = "txtEquipNumber";
			this.txtEquipNumber.Size = new System.Drawing.Size(153, 20);
			this.txtEquipNumber.TabIndex = 51;
			// 
			// label11
			// 
			this.label11.Location = new System.Drawing.Point(252, 101);
			this.label11.Name = "label11";
			this.label11.Size = new System.Drawing.Size(100, 20);
			this.label11.TabIndex = 50;
			this.label11.Text = "Equipment Number";
			// 
			// btnUpdate
			// 
			this.btnUpdate.Location = new System.Drawing.Point(565, 276);
			this.btnUpdate.Name = "btnUpdate";
			this.btnUpdate.Size = new System.Drawing.Size(75, 23);
			this.btnUpdate.TabIndex = 52;
			this.btnUpdate.Text = "&Update";
			this.btnUpdate.UseVisualStyleBackColor = true;
			this.btnUpdate.Click += new System.EventHandler(this.btnUpdate_Click);
			// 
			// frmEquipment
			// 
			this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
			this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
			this.CancelButton = this.btnClose;
			this.ClientSize = new System.Drawing.Size(727, 493);
			this.Controls.Add(this.btnUpdate);
			this.Controls.Add(this.txtEquipNumber);
			this.Controls.Add(this.label11);
			this.Controls.Add(this.btnRemove);
			this.Controls.Add(this.btnAdd);
			this.Controls.Add(this.btnClose);
			this.Controls.Add(this.dgviewWO);
			this.Controls.Add(this.txtDescr);
			this.Controls.Add(this.label10);
			this.Controls.Add(this.txtModel);
			this.Controls.Add(this.label9);
			this.Controls.Add(this.txtSerial);
			this.Controls.Add(this.label8);
			this.Controls.Add(this.cboVendor);
			this.Controls.Add(this.label7);
			this.Controls.Add(this.cboManufacturer);
			this.Controls.Add(this.label6);
			this.Controls.Add(this.cboEquipType);
			this.Controls.Add(this.label5);
			this.Controls.Add(this.cboFacility);
			this.Controls.Add(this.label3);
			this.Controls.Add(this.cboLocation);
			this.Controls.Add(this.label12);
			this.Controls.Add(this.txtName);
			this.Controls.Add(this.label2);
			this.Controls.Add(this.dgviewEquip);
			this.Controls.Add(this.label1);
			this.Controls.Add(this.label4);
			this.MinimizeBox = false;
			this.MinimumSize = new System.Drawing.Size(735, 520);
			this.Name = "frmEquipment";
			this.Padding = new System.Windows.Forms.Padding(3);
			this.ShowIcon = false;
			this.ShowInTaskbar = false;
			this.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent;
			this.Text = "Equipment";
			this.TopMost = true;
			((System.ComponentModel.ISupportInitialize)(this.dgviewEquip)).EndInit();
			((System.ComponentModel.ISupportInitialize)(this.dgviewWO)).EndInit();
			this.ResumeLayout(false);
			this.PerformLayout();
		}
		private System.Windows.Forms.Button btnUpdate;
		private System.Windows.Forms.Label label11;
		private System.Windows.Forms.TextBox txtEquipNumber;
		private System.Windows.Forms.Button btnRemove;
		private System.Windows.Forms.Button btnAdd;
		private System.Windows.Forms.Button btnClose;
		private System.Windows.Forms.DataGridView dgviewWO;
		private System.Windows.Forms.Label label10;
		private System.Windows.Forms.TextBox txtDescr;
		private System.Windows.Forms.Label label9;
		private System.Windows.Forms.TextBox txtModel;
		private System.Windows.Forms.Label label8;
		private System.Windows.Forms.TextBox txtSerial;
		private System.Windows.Forms.Label label7;
		private System.Windows.Forms.ComboBox cboVendor;
		private System.Windows.Forms.Label label6;
		private System.Windows.Forms.ComboBox cboManufacturer;
		private System.Windows.Forms.Label label5;
		private System.Windows.Forms.ComboBox cboEquipType;
		private System.Windows.Forms.Label label4;
		private System.Windows.Forms.Label label12;
		private System.Windows.Forms.ComboBox cboLocation;
		private System.Windows.Forms.Label label3;
		private System.Windows.Forms.ComboBox cboFacility;
		private System.Windows.Forms.Label label2;
		private System.Windows.Forms.TextBox txtName;
		private System.Windows.Forms.DataGridView dgviewEquip;
		private System.Windows.Forms.Label label1;
	}
}

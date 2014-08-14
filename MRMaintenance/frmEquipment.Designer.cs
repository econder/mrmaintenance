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
			System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(frmEquipment));
			this.label1 = new System.Windows.Forms.Label();
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
			this.label9 = new System.Windows.Forms.Label();
			this.txtDescr = new System.Windows.Forms.TextBox();
			this.label10 = new System.Windows.Forms.Label();
			this.btnClose = new System.Windows.Forms.Button();
			this.btnAdd = new System.Windows.Forms.Button();
			this.txtEquipNumber = new System.Windows.Forms.TextBox();
			this.label11 = new System.Windows.Forms.Label();
			this.btnUpdate = new System.Windows.Forms.Button();
			this.listEquip = new System.Windows.Forms.ListBox();
			this.listEquipDocs = new System.Windows.Forms.ListBox();
			this.btnDocRemove = new System.Windows.Forms.Button();
			this.btnDocAdd = new System.Windows.Forms.Button();
			this.label4 = new System.Windows.Forms.Label();
			this.cboModel = new System.Windows.Forms.ComboBox();
			this.btnWORAdd = new System.Windows.Forms.Button();
			this.btnWORRemove = new System.Windows.Forms.Button();
			this.listWorkOrderReq = new System.Windows.Forms.ListBox();
			this.label13 = new System.Windows.Forms.Label();
			this.btnEquipNew = new System.Windows.Forms.Button();
			this.btnEquipRemove = new System.Windows.Forms.Button();
			this.btnOK = new System.Windows.Forms.Button();
			this.SuspendLayout();
			// 
			// label1
			// 
			this.label1.Location = new System.Drawing.Point(6, 13);
			this.label1.Name = "label1";
			this.label1.Size = new System.Drawing.Size(100, 16);
			this.label1.TabIndex = 0;
			this.label1.Text = "Equipment List";
			// 
			// txtName
			// 
			this.txtName.Location = new System.Drawing.Point(252, 73);
			this.txtName.Name = "txtName";
			this.txtName.Size = new System.Drawing.Size(226, 20);
			this.txtName.TabIndex = 4;
			this.txtName.Validating += new System.ComponentModel.CancelEventHandler(this.txtName_Validating);
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
			this.cboFacility.AutoCompleteMode = System.Windows.Forms.AutoCompleteMode.SuggestAppend;
			this.cboFacility.FormattingEnabled = true;
			this.cboFacility.Location = new System.Drawing.Point(252, 29);
			this.cboFacility.Name = "cboFacility";
			this.cboFacility.Size = new System.Drawing.Size(153, 21);
			this.cboFacility.TabIndex = 2;
			this.cboFacility.Validating += new System.ComponentModel.CancelEventHandler(this.cboFacility_Validating);
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
			this.cboLocation.AutoCompleteMode = System.Windows.Forms.AutoCompleteMode.SuggestAppend;
			this.cboLocation.AutoCompleteSource = System.Windows.Forms.AutoCompleteSource.ListItems;
			this.cboLocation.FormattingEnabled = true;
			this.cboLocation.Location = new System.Drawing.Point(420, 29);
			this.cboLocation.Name = "cboLocation";
			this.cboLocation.Size = new System.Drawing.Size(153, 21);
			this.cboLocation.TabIndex = 3;
			this.cboLocation.Validating += new System.ComponentModel.CancelEventHandler(this.cboLocation_Validating);
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
			this.cboEquipType.AutoCompleteMode = System.Windows.Forms.AutoCompleteMode.SuggestAppend;
			this.cboEquipType.AutoCompleteSource = System.Windows.Forms.AutoCompleteSource.ListItems;
			this.cboEquipType.FormattingEnabled = true;
			this.cboEquipType.Location = new System.Drawing.Point(495, 294);
			this.cboEquipType.Name = "cboEquipType";
			this.cboEquipType.Size = new System.Drawing.Size(226, 21);
			this.cboEquipType.TabIndex = 11;
			// 
			// label5
			// 
			this.label5.Location = new System.Drawing.Point(495, 277);
			this.label5.Name = "label5";
			this.label5.Size = new System.Drawing.Size(84, 20);
			this.label5.TabIndex = 33;
			this.label5.Text = "Equipment Type";
			// 
			// cboManufacturer
			// 
			this.cboManufacturer.AutoCompleteMode = System.Windows.Forms.AutoCompleteMode.SuggestAppend;
			this.cboManufacturer.AutoCompleteSource = System.Windows.Forms.AutoCompleteSource.ListItems;
			this.cboManufacturer.FormattingEnabled = true;
			this.cboManufacturer.Location = new System.Drawing.Point(495, 118);
			this.cboManufacturer.Name = "cboManufacturer";
			this.cboManufacturer.Size = new System.Drawing.Size(226, 21);
			this.cboManufacturer.TabIndex = 7;
			this.cboManufacturer.Validating += new System.ComponentModel.CancelEventHandler(this.cboManufacturer_Validating);
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
			this.cboVendor.AutoCompleteMode = System.Windows.Forms.AutoCompleteMode.SuggestAppend;
			this.cboVendor.AutoCompleteSource = System.Windows.Forms.AutoCompleteSource.ListItems;
			this.cboVendor.FormattingEnabled = true;
			this.cboVendor.Location = new System.Drawing.Point(495, 161);
			this.cboVendor.Name = "cboVendor";
			this.cboVendor.Size = new System.Drawing.Size(226, 21);
			this.cboVendor.TabIndex = 8;
			this.cboVendor.Validating += new System.ComponentModel.CancelEventHandler(this.cboVendor_Validating);
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
			this.txtSerial.Location = new System.Drawing.Point(495, 249);
			this.txtSerial.Name = "txtSerial";
			this.txtSerial.Size = new System.Drawing.Size(226, 20);
			this.txtSerial.TabIndex = 10;
			// 
			// label8
			// 
			this.label8.Location = new System.Drawing.Point(495, 233);
			this.label8.Name = "label8";
			this.label8.Size = new System.Drawing.Size(100, 20);
			this.label8.TabIndex = 39;
			this.label8.Text = "Serial #";
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
			this.txtDescr.Size = new System.Drawing.Size(226, 154);
			this.txtDescr.TabIndex = 6;
			// 
			// label10
			// 
			this.label10.Location = new System.Drawing.Point(252, 144);
			this.label10.Name = "label10";
			this.label10.Size = new System.Drawing.Size(100, 20);
			this.label10.TabIndex = 43;
			this.label10.Text = "Description";
			// 
			// btnClose
			// 
			this.btnClose.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right)));
			this.btnClose.DialogResult = System.Windows.Forms.DialogResult.Cancel;
			this.btnClose.Location = new System.Drawing.Point(649, 499);
			this.btnClose.Name = "btnClose";
			this.btnClose.Size = new System.Drawing.Size(75, 23);
			this.btnClose.TabIndex = 17;
			this.btnClose.Text = "&Close";
			this.btnClose.UseVisualStyleBackColor = true;
			this.btnClose.Click += new System.EventHandler(this.btnClose_Click);
			// 
			// btnAdd
			// 
			this.btnAdd.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right)));
			this.btnAdd.Location = new System.Drawing.Point(358, 494);
			this.btnAdd.Name = "btnAdd";
			this.btnAdd.Size = new System.Drawing.Size(75, 23);
			this.btnAdd.TabIndex = 16;
			this.btnAdd.Text = "&Add";
			this.btnAdd.UseVisualStyleBackColor = true;
			this.btnAdd.Click += new System.EventHandler(this.btnEquipAdd_Click);
			// 
			// txtEquipNumber
			// 
			this.txtEquipNumber.Location = new System.Drawing.Point(252, 118);
			this.txtEquipNumber.Name = "txtEquipNumber";
			this.txtEquipNumber.Size = new System.Drawing.Size(153, 20);
			this.txtEquipNumber.TabIndex = 5;
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
			this.btnUpdate.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right)));
			this.btnUpdate.Location = new System.Drawing.Point(277, 494);
			this.btnUpdate.Name = "btnUpdate";
			this.btnUpdate.Size = new System.Drawing.Size(75, 23);
			this.btnUpdate.TabIndex = 15;
			this.btnUpdate.Text = "&Update";
			this.btnUpdate.UseVisualStyleBackColor = true;
			this.btnUpdate.Click += new System.EventHandler(this.btnEquipUpdate_Click);
			// 
			// listEquip
			// 
			this.listEquip.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
									| System.Windows.Forms.AnchorStyles.Left)));
			this.listEquip.FormattingEnabled = true;
			this.listEquip.Location = new System.Drawing.Point(6, 29);
			this.listEquip.Name = "listEquip";
			this.listEquip.Size = new System.Drawing.Size(229, 459);
			this.listEquip.TabIndex = 0;
			// 
			// listEquipDocs
			// 
			this.listEquipDocs.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
									| System.Windows.Forms.AnchorStyles.Left)));
			this.listEquipDocs.FormattingEnabled = true;
			this.listEquipDocs.Location = new System.Drawing.Point(252, 367);
			this.listEquipDocs.Name = "listEquipDocs";
			this.listEquipDocs.Size = new System.Drawing.Size(229, 121);
			this.listEquipDocs.TabIndex = 14;
			this.listEquipDocs.DoubleClick += new System.EventHandler(this.listEquipDocs_DoubleClick);
			// 
			// btnDocRemove
			// 
			this.btnDocRemove.Image = ((System.Drawing.Image)(resources.GetObject("btnDocRemove.Image")));
			this.btnDocRemove.Location = new System.Drawing.Point(423, 344);
			this.btnDocRemove.Name = "btnDocRemove";
			this.btnDocRemove.Size = new System.Drawing.Size(26, 23);
			this.btnDocRemove.TabIndex = 12;
			this.btnDocRemove.UseVisualStyleBackColor = true;
			this.btnDocRemove.Click += new System.EventHandler(this.btnDocRemove_Click);
			// 
			// btnDocAdd
			// 
			this.btnDocAdd.Image = ((System.Drawing.Image)(resources.GetObject("btnDocAdd.Image")));
			this.btnDocAdd.Location = new System.Drawing.Point(455, 344);
			this.btnDocAdd.Name = "btnDocAdd";
			this.btnDocAdd.Size = new System.Drawing.Size(26, 23);
			this.btnDocAdd.TabIndex = 13;
			this.btnDocAdd.UseVisualStyleBackColor = true;
			this.btnDocAdd.Click += new System.EventHandler(this.btnDocAdd_Click);
			// 
			// label4
			// 
			this.label4.Location = new System.Drawing.Point(252, 349);
			this.label4.Name = "label4";
			this.label4.Size = new System.Drawing.Size(125, 20);
			this.label4.TabIndex = 68;
			this.label4.Text = "Documentation && Links";
			// 
			// cboModel
			// 
			this.cboModel.AutoCompleteMode = System.Windows.Forms.AutoCompleteMode.SuggestAppend;
			this.cboModel.AutoCompleteSource = System.Windows.Forms.AutoCompleteSource.ListItems;
			this.cboModel.FormattingEnabled = true;
			this.cboModel.Location = new System.Drawing.Point(495, 209);
			this.cboModel.Name = "cboModel";
			this.cboModel.Size = new System.Drawing.Size(226, 21);
			this.cboModel.TabIndex = 69;
			this.cboModel.Validating += new System.ComponentModel.CancelEventHandler(this.cboModel_Validating);
			// 
			// btnWORAdd
			// 
			this.btnWORAdd.Image = ((System.Drawing.Image)(resources.GetObject("btnWORAdd.Image")));
			this.btnWORAdd.Location = new System.Drawing.Point(698, 344);
			this.btnWORAdd.Name = "btnWORAdd";
			this.btnWORAdd.Size = new System.Drawing.Size(26, 23);
			this.btnWORAdd.TabIndex = 71;
			this.btnWORAdd.UseVisualStyleBackColor = true;
			this.btnWORAdd.Click += new System.EventHandler(this.btnWORAdd_Click);
			// 
			// btnWORRemove
			// 
			this.btnWORRemove.Image = ((System.Drawing.Image)(resources.GetObject("btnWORRemove.Image")));
			this.btnWORRemove.Location = new System.Drawing.Point(666, 344);
			this.btnWORRemove.Name = "btnWORRemove";
			this.btnWORRemove.Size = new System.Drawing.Size(26, 23);
			this.btnWORRemove.TabIndex = 70;
			this.btnWORRemove.UseVisualStyleBackColor = true;
			this.btnWORRemove.Click += new System.EventHandler(this.btnWORemove_Click);
			// 
			// listWorkOrderReq
			// 
			this.listWorkOrderReq.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
									| System.Windows.Forms.AnchorStyles.Left)));
			this.listWorkOrderReq.FormattingEnabled = true;
			this.listWorkOrderReq.Location = new System.Drawing.Point(495, 367);
			this.listWorkOrderReq.Name = "listWorkOrderReq";
			this.listWorkOrderReq.Size = new System.Drawing.Size(229, 121);
			this.listWorkOrderReq.TabIndex = 72;
			// 
			// label13
			// 
			this.label13.Location = new System.Drawing.Point(495, 349);
			this.label13.Name = "label13";
			this.label13.Size = new System.Drawing.Size(125, 20);
			this.label13.TabIndex = 73;
			this.label13.Text = "Work Order Requests";
			// 
			// btnEquipNew
			// 
			this.btnEquipNew.Image = ((System.Drawing.Image)(resources.GetObject("btnEquipNew.Image")));
			this.btnEquipNew.Location = new System.Drawing.Point(209, 494);
			this.btnEquipNew.Name = "btnEquipNew";
			this.btnEquipNew.Size = new System.Drawing.Size(26, 23);
			this.btnEquipNew.TabIndex = 75;
			this.btnEquipNew.UseVisualStyleBackColor = true;
			// 
			// btnEquipRemove
			// 
			this.btnEquipRemove.Image = ((System.Drawing.Image)(resources.GetObject("btnEquipRemove.Image")));
			this.btnEquipRemove.Location = new System.Drawing.Point(177, 494);
			this.btnEquipRemove.Name = "btnEquipRemove";
			this.btnEquipRemove.Size = new System.Drawing.Size(26, 23);
			this.btnEquipRemove.TabIndex = 74;
			this.btnEquipRemove.UseVisualStyleBackColor = true;
			this.btnEquipRemove.Click += new System.EventHandler(this.btnEquipRemove_Click);
			// 
			// btnOK
			// 
			this.btnOK.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right)));
			this.btnOK.DialogResult = System.Windows.Forms.DialogResult.OK;
			this.btnOK.Location = new System.Drawing.Point(568, 499);
			this.btnOK.Name = "btnOK";
			this.btnOK.Size = new System.Drawing.Size(75, 23);
			this.btnOK.TabIndex = 76;
			this.btnOK.Text = "&OK";
			this.btnOK.UseVisualStyleBackColor = true;
			// 
			// frmEquipment
			// 
			this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
			this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
			this.CancelButton = this.btnClose;
			this.ClientSize = new System.Drawing.Size(730, 539);
			this.Controls.Add(this.btnOK);
			this.Controls.Add(this.btnEquipNew);
			this.Controls.Add(this.btnEquipRemove);
			this.Controls.Add(this.btnWORAdd);
			this.Controls.Add(this.btnWORRemove);
			this.Controls.Add(this.listWorkOrderReq);
			this.Controls.Add(this.label13);
			this.Controls.Add(this.cboModel);
			this.Controls.Add(this.btnDocAdd);
			this.Controls.Add(this.btnDocRemove);
			this.Controls.Add(this.listEquipDocs);
			this.Controls.Add(this.listEquip);
			this.Controls.Add(this.btnUpdate);
			this.Controls.Add(this.txtEquipNumber);
			this.Controls.Add(this.label11);
			this.Controls.Add(this.btnAdd);
			this.Controls.Add(this.btnClose);
			this.Controls.Add(this.txtDescr);
			this.Controls.Add(this.label10);
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
			this.ResumeLayout(false);
			this.PerformLayout();
		}
		private System.Windows.Forms.Button btnOK;
		private System.Windows.Forms.Button btnEquipRemove;
		private System.Windows.Forms.Button btnEquipNew;
		private System.Windows.Forms.Label label13;
		private System.Windows.Forms.ListBox listWorkOrderReq;
		private System.Windows.Forms.Button btnWORRemove;
		private System.Windows.Forms.Button btnWORAdd;
		private System.Windows.Forms.ComboBox cboModel;
		private System.Windows.Forms.Label label4;
		private System.Windows.Forms.Button btnDocAdd;
		private System.Windows.Forms.Button btnDocRemove;
		private System.Windows.Forms.ListBox listEquipDocs;
		private System.Windows.Forms.ListBox listEquip;
		private System.Windows.Forms.Button btnUpdate;
		private System.Windows.Forms.Label label11;
		private System.Windows.Forms.TextBox txtEquipNumber;
		private System.Windows.Forms.Button btnAdd;
		private System.Windows.Forms.Button btnClose;
		private System.Windows.Forms.Label label10;
		private System.Windows.Forms.TextBox txtDescr;
		private System.Windows.Forms.Label label9;
		private System.Windows.Forms.Label label8;
		private System.Windows.Forms.TextBox txtSerial;
		private System.Windows.Forms.Label label7;
		private System.Windows.Forms.ComboBox cboVendor;
		private System.Windows.Forms.Label label6;
		private System.Windows.Forms.ComboBox cboManufacturer;
		private System.Windows.Forms.Label label5;
		private System.Windows.Forms.ComboBox cboEquipType;
		private System.Windows.Forms.Label label12;
		private System.Windows.Forms.ComboBox cboLocation;
		private System.Windows.Forms.Label label3;
		private System.Windows.Forms.ComboBox cboFacility;
		private System.Windows.Forms.Label label2;
		private System.Windows.Forms.TextBox txtName;
		private System.Windows.Forms.Label label1;
	}
}

/***************************************************************************************************
 * Class:   MRDbConnection.cs
 * Created By: Eric Conder
 * Created On: 7/25/2014
 * 
 * Changes:
 * 
 *
 * *************************************************************************************************/
namespace MRMaintenance
{
	partial class frmLocations
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
			this.btnClose = new System.Windows.Forms.Button();
			this.btnUpdate = new System.Windows.Forms.Button();
			this.btnRemove = new System.Windows.Forms.Button();
			this.btnAdd = new System.Windows.Forms.Button();
			this.listLoc = new System.Windows.Forms.ListBox();
			this.txtName = new System.Windows.Forms.TextBox();
			this.label2 = new System.Windows.Forms.Label();
			this.label1 = new System.Windows.Forms.Label();
			this.cboFacilities = new System.Windows.Forms.ComboBox();
			this.label3 = new System.Windows.Forms.Label();
			this.txtAddr1 = new System.Windows.Forms.TextBox();
			this.label4 = new System.Windows.Forms.Label();
			this.txtAddr2 = new System.Windows.Forms.TextBox();
			this.label5 = new System.Windows.Forms.Label();
			this.txtCity = new System.Windows.Forms.TextBox();
			this.label6 = new System.Windows.Forms.Label();
			this.label7 = new System.Windows.Forms.Label();
			this.cboState = new System.Windows.Forms.ComboBox();
			this.txtZip = new System.Windows.Forms.TextBox();
			this.label8 = new System.Windows.Forms.Label();
			this.txtLat = new System.Windows.Forms.TextBox();
			this.label9 = new System.Windows.Forms.Label();
			this.txtLong = new System.Windows.Forms.TextBox();
			this.label10 = new System.Windows.Forms.Label();
			this.SuspendLayout();
			// 
			// btnClose
			// 
			this.btnClose.DialogResult = System.Windows.Forms.DialogResult.Cancel;
			this.btnClose.Location = new System.Drawing.Point(432, 317);
			this.btnClose.Name = "btnClose";
			this.btnClose.Size = new System.Drawing.Size(75, 23);
			this.btnClose.TabIndex = 71;
			this.btnClose.Text = "&Close";
			this.btnClose.UseVisualStyleBackColor = true;
			this.btnClose.MouseClick += new System.Windows.Forms.MouseEventHandler(this.btnClose_Click);
			// 
			// btnUpdate
			// 
			this.btnUpdate.Location = new System.Drawing.Point(351, 263);
			this.btnUpdate.Name = "btnUpdate";
			this.btnUpdate.Size = new System.Drawing.Size(75, 23);
			this.btnUpdate.TabIndex = 70;
			this.btnUpdate.Text = "&Update";
			this.btnUpdate.UseVisualStyleBackColor = true;
			this.btnUpdate.MouseClick += new System.Windows.Forms.MouseEventHandler(this.btnUpdate_Click);
			// 
			// btnRemove
			// 
			this.btnRemove.Location = new System.Drawing.Point(160, 283);
			this.btnRemove.Name = "btnRemove";
			this.btnRemove.Size = new System.Drawing.Size(75, 23);
			this.btnRemove.TabIndex = 69;
			this.btnRemove.Text = "&Remove";
			this.btnRemove.UseVisualStyleBackColor = true;
			this.btnRemove.MouseClick += new System.Windows.Forms.MouseEventHandler(this.btnRemove_Click);
			// 
			// btnAdd
			// 
			this.btnAdd.Location = new System.Drawing.Point(432, 263);
			this.btnAdd.Name = "btnAdd";
			this.btnAdd.Size = new System.Drawing.Size(75, 23);
			this.btnAdd.TabIndex = 68;
			this.btnAdd.Text = "&Add";
			this.btnAdd.UseVisualStyleBackColor = true;
			this.btnAdd.MouseClick += new System.Windows.Forms.MouseEventHandler(this.btnAdd_Click);
			// 
			// listLoc
			// 
			this.listLoc.FormattingEnabled = true;
			this.listLoc.Location = new System.Drawing.Point(7, 65);
			this.listLoc.Name = "listLoc";
			this.listLoc.Size = new System.Drawing.Size(229, 212);
			this.listLoc.TabIndex = 67;
			// 
			// txtName
			// 
			this.txtName.Location = new System.Drawing.Point(242, 65);
			this.txtName.Name = "txtName";
			this.txtName.Size = new System.Drawing.Size(264, 20);
			this.txtName.TabIndex = 66;
			// 
			// label2
			// 
			this.label2.Location = new System.Drawing.Point(242, 49);
			this.label2.Name = "label2";
			this.label2.Size = new System.Drawing.Size(100, 20);
			this.label2.TabIndex = 65;
			this.label2.Text = "Location Name";
			// 
			// label1
			// 
			this.label1.Location = new System.Drawing.Point(6, 5);
			this.label1.Name = "label1";
			this.label1.Size = new System.Drawing.Size(100, 16);
			this.label1.TabIndex = 72;
			this.label1.Text = "Facility";
			// 
			// cboFacilities
			// 
			this.cboFacilities.FormattingEnabled = true;
			this.cboFacilities.Location = new System.Drawing.Point(6, 21);
			this.cboFacilities.Name = "cboFacilities";
			this.cboFacilities.Size = new System.Drawing.Size(229, 21);
			this.cboFacilities.TabIndex = 73;
			this.cboFacilities.SelectedIndexChanged += new System.EventHandler(this.cboFacilities_SelectedIndexChanged);
			// 
			// label3
			// 
			this.label3.Location = new System.Drawing.Point(6, 49);
			this.label3.Name = "label3";
			this.label3.Size = new System.Drawing.Size(100, 15);
			this.label3.TabIndex = 74;
			this.label3.Text = "Locations";
			// 
			// txtAddr1
			// 
			this.txtAddr1.Location = new System.Drawing.Point(242, 108);
			this.txtAddr1.Name = "txtAddr1";
			this.txtAddr1.Size = new System.Drawing.Size(264, 20);
			this.txtAddr1.TabIndex = 76;
			// 
			// label4
			// 
			this.label4.Location = new System.Drawing.Point(242, 92);
			this.label4.Name = "label4";
			this.label4.Size = new System.Drawing.Size(100, 20);
			this.label4.TabIndex = 75;
			this.label4.Text = "Address 1";
			// 
			// txtAddr2
			// 
			this.txtAddr2.Location = new System.Drawing.Point(242, 151);
			this.txtAddr2.Name = "txtAddr2";
			this.txtAddr2.Size = new System.Drawing.Size(264, 20);
			this.txtAddr2.TabIndex = 78;
			// 
			// label5
			// 
			this.label5.Location = new System.Drawing.Point(242, 135);
			this.label5.Name = "label5";
			this.label5.Size = new System.Drawing.Size(100, 20);
			this.label5.TabIndex = 77;
			this.label5.Text = "Address 2";
			// 
			// txtCity
			// 
			this.txtCity.Location = new System.Drawing.Point(242, 194);
			this.txtCity.Name = "txtCity";
			this.txtCity.Size = new System.Drawing.Size(134, 20);
			this.txtCity.TabIndex = 80;
			// 
			// label6
			// 
			this.label6.Location = new System.Drawing.Point(242, 178);
			this.label6.Name = "label6";
			this.label6.Size = new System.Drawing.Size(100, 20);
			this.label6.TabIndex = 79;
			this.label6.Text = "City";
			// 
			// label7
			// 
			this.label7.Location = new System.Drawing.Point(382, 178);
			this.label7.Name = "label7";
			this.label7.Size = new System.Drawing.Size(100, 16);
			this.label7.TabIndex = 81;
			this.label7.Text = "State";
			// 
			// cboState
			// 
			this.cboState.AutoCompleteMode = System.Windows.Forms.AutoCompleteMode.Suggest;
			this.cboState.FormattingEnabled = true;
			this.cboState.Location = new System.Drawing.Point(382, 194);
			this.cboState.Name = "cboState";
			this.cboState.Size = new System.Drawing.Size(54, 21);
			this.cboState.TabIndex = 82;
			// 
			// txtZip
			// 
			this.txtZip.Location = new System.Drawing.Point(442, 194);
			this.txtZip.Name = "txtZip";
			this.txtZip.Size = new System.Drawing.Size(65, 20);
			this.txtZip.TabIndex = 84;
			// 
			// label8
			// 
			this.label8.Location = new System.Drawing.Point(442, 178);
			this.label8.Name = "label8";
			this.label8.Size = new System.Drawing.Size(65, 20);
			this.label8.TabIndex = 83;
			this.label8.Text = "Zip";
			// 
			// txtLat
			// 
			this.txtLat.Location = new System.Drawing.Point(242, 237);
			this.txtLat.Name = "txtLat";
			this.txtLat.Size = new System.Drawing.Size(119, 20);
			this.txtLat.TabIndex = 86;
			// 
			// label9
			// 
			this.label9.Location = new System.Drawing.Point(242, 221);
			this.label9.Name = "label9";
			this.label9.Size = new System.Drawing.Size(100, 20);
			this.label9.TabIndex = 85;
			this.label9.Text = "Latitude";
			// 
			// txtLong
			// 
			this.txtLong.Location = new System.Drawing.Point(367, 237);
			this.txtLong.Name = "txtLong";
			this.txtLong.Size = new System.Drawing.Size(119, 20);
			this.txtLong.TabIndex = 88;
			// 
			// label10
			// 
			this.label10.Location = new System.Drawing.Point(367, 221);
			this.label10.Name = "label10";
			this.label10.Size = new System.Drawing.Size(100, 20);
			this.label10.TabIndex = 87;
			this.label10.Text = "Longitude";
			// 
			// frmLocations
			// 
			this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
			this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
			this.CancelButton = this.btnClose;
			this.ClientSize = new System.Drawing.Size(513, 346);
			this.Controls.Add(this.txtLong);
			this.Controls.Add(this.label10);
			this.Controls.Add(this.txtLat);
			this.Controls.Add(this.label9);
			this.Controls.Add(this.txtZip);
			this.Controls.Add(this.label8);
			this.Controls.Add(this.label7);
			this.Controls.Add(this.cboState);
			this.Controls.Add(this.txtCity);
			this.Controls.Add(this.label6);
			this.Controls.Add(this.txtAddr2);
			this.Controls.Add(this.label5);
			this.Controls.Add(this.txtAddr1);
			this.Controls.Add(this.label4);
			this.Controls.Add(this.label3);
			this.Controls.Add(this.label1);
			this.Controls.Add(this.cboFacilities);
			this.Controls.Add(this.btnClose);
			this.Controls.Add(this.btnUpdate);
			this.Controls.Add(this.btnRemove);
			this.Controls.Add(this.btnAdd);
			this.Controls.Add(this.listLoc);
			this.Controls.Add(this.txtName);
			this.Controls.Add(this.label2);
			this.MaximizeBox = false;
			this.MinimizeBox = false;
			this.Name = "frmLocations";
			this.Padding = new System.Windows.Forms.Padding(3);
			this.ShowIcon = false;
			this.ShowInTaskbar = false;
			this.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent;
			this.Text = "Equipment Locations";
			this.ResumeLayout(false);
			this.PerformLayout();
		}
		private System.Windows.Forms.Label label10;
		private System.Windows.Forms.TextBox txtLong;
		private System.Windows.Forms.Label label9;
		private System.Windows.Forms.TextBox txtLat;
		private System.Windows.Forms.Label label8;
		private System.Windows.Forms.TextBox txtZip;
		private System.Windows.Forms.ComboBox cboState;
		private System.Windows.Forms.Label label7;
		private System.Windows.Forms.Label label6;
		private System.Windows.Forms.TextBox txtCity;
		private System.Windows.Forms.Label label5;
		private System.Windows.Forms.TextBox txtAddr2;
		private System.Windows.Forms.Label label4;
		private System.Windows.Forms.TextBox txtAddr1;
		private System.Windows.Forms.Label label3;
		private System.Windows.Forms.ComboBox cboFacilities;
		private System.Windows.Forms.Label label1;
		private System.Windows.Forms.Label label2;
		private System.Windows.Forms.TextBox txtName;
		private System.Windows.Forms.ListBox listLoc;
		private System.Windows.Forms.Button btnAdd;
		private System.Windows.Forms.Button btnRemove;
		private System.Windows.Forms.Button btnUpdate;
		private System.Windows.Forms.Button btnClose;
	}
}

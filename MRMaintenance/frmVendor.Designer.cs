﻿/***************************************************************************************************
 * Class:   MRDbConnection.cs
 * Created By: Eric Conder
 * Created On: 7/26/2014
 * 
 * Changes:
 * 
 *
 * *************************************************************************************************/
namespace MRMaintenance
{
	partial class frmVendor
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
			this.txtWeb = new System.Windows.Forms.TextBox();
			this.label9 = new System.Windows.Forms.Label();
			this.txtFax = new System.Windows.Forms.TextBox();
			this.label12 = new System.Windows.Forms.Label();
			this.txtPhone2 = new System.Windows.Forms.TextBox();
			this.label11 = new System.Windows.Forms.Label();
			this.txtPhone1 = new System.Windows.Forms.TextBox();
			this.label1 = new System.Windows.Forms.Label();
			this.txtZip = new System.Windows.Forms.TextBox();
			this.label8 = new System.Windows.Forms.Label();
			this.label7 = new System.Windows.Forms.Label();
			this.cboState = new System.Windows.Forms.ComboBox();
			this.txtCity = new System.Windows.Forms.TextBox();
			this.label6 = new System.Windows.Forms.Label();
			this.txtAddr2 = new System.Windows.Forms.TextBox();
			this.label5 = new System.Windows.Forms.Label();
			this.txtAddr1 = new System.Windows.Forms.TextBox();
			this.label4 = new System.Windows.Forms.Label();
			this.label3 = new System.Windows.Forms.Label();
			this.btnClose = new System.Windows.Forms.Button();
			this.btnUpdate = new System.Windows.Forms.Button();
			this.btnRemove = new System.Windows.Forms.Button();
			this.btnAdd = new System.Windows.Forms.Button();
			this.listVen = new System.Windows.Forms.ListBox();
			this.txtName = new System.Windows.Forms.TextBox();
			this.label2 = new System.Windows.Forms.Label();
			this.SuspendLayout();
			// 
			// txtWeb
			// 
			this.txtWeb.Location = new System.Drawing.Point(242, 280);
			this.txtWeb.Name = "txtWeb";
			this.txtWeb.Size = new System.Drawing.Size(264, 20);
			this.txtWeb.TabIndex = 168;
			// 
			// label9
			// 
			this.label9.Location = new System.Drawing.Point(242, 265);
			this.label9.Name = "label9";
			this.label9.Size = new System.Drawing.Size(100, 20);
			this.label9.TabIndex = 167;
			this.label9.Text = "Website";
			// 
			// txtFax
			// 
			this.txtFax.Location = new System.Drawing.Point(242, 237);
			this.txtFax.Name = "txtFax";
			this.txtFax.Size = new System.Drawing.Size(100, 20);
			this.txtFax.TabIndex = 166;
			// 
			// label12
			// 
			this.label12.Location = new System.Drawing.Point(242, 222);
			this.label12.Name = "label12";
			this.label12.Size = new System.Drawing.Size(100, 20);
			this.label12.TabIndex = 165;
			this.label12.Text = "Fax";
			// 
			// txtPhone2
			// 
			this.txtPhone2.Location = new System.Drawing.Point(348, 195);
			this.txtPhone2.Name = "txtPhone2";
			this.txtPhone2.Size = new System.Drawing.Size(100, 20);
			this.txtPhone2.TabIndex = 164;
			// 
			// label11
			// 
			this.label11.Location = new System.Drawing.Point(348, 179);
			this.label11.Name = "label11";
			this.label11.Size = new System.Drawing.Size(100, 20);
			this.label11.TabIndex = 163;
			this.label11.Text = "Phone 2";
			// 
			// txtPhone1
			// 
			this.txtPhone1.Location = new System.Drawing.Point(242, 195);
			this.txtPhone1.Name = "txtPhone1";
			this.txtPhone1.Size = new System.Drawing.Size(100, 20);
			this.txtPhone1.TabIndex = 162;
			// 
			// label1
			// 
			this.label1.Location = new System.Drawing.Point(242, 179);
			this.label1.Name = "label1";
			this.label1.Size = new System.Drawing.Size(100, 20);
			this.label1.TabIndex = 161;
			this.label1.Text = "Phone 1";
			// 
			// txtZip
			// 
			this.txtZip.Location = new System.Drawing.Point(442, 152);
			this.txtZip.Name = "txtZip";
			this.txtZip.Size = new System.Drawing.Size(65, 20);
			this.txtZip.TabIndex = 160;
			// 
			// label8
			// 
			this.label8.Location = new System.Drawing.Point(442, 136);
			this.label8.Name = "label8";
			this.label8.Size = new System.Drawing.Size(65, 20);
			this.label8.TabIndex = 159;
			this.label8.Text = "Zip";
			// 
			// label7
			// 
			this.label7.Location = new System.Drawing.Point(382, 136);
			this.label7.Name = "label7";
			this.label7.Size = new System.Drawing.Size(100, 16);
			this.label7.TabIndex = 157;
			this.label7.Text = "State";
			// 
			// cboState
			// 
			this.cboState.AutoCompleteMode = System.Windows.Forms.AutoCompleteMode.Suggest;
			this.cboState.FormattingEnabled = true;
			this.cboState.Location = new System.Drawing.Point(382, 152);
			this.cboState.Name = "cboState";
			this.cboState.Size = new System.Drawing.Size(54, 21);
			this.cboState.TabIndex = 158;
			// 
			// txtCity
			// 
			this.txtCity.Location = new System.Drawing.Point(242, 152);
			this.txtCity.Name = "txtCity";
			this.txtCity.Size = new System.Drawing.Size(134, 20);
			this.txtCity.TabIndex = 156;
			// 
			// label6
			// 
			this.label6.Location = new System.Drawing.Point(242, 136);
			this.label6.Name = "label6";
			this.label6.Size = new System.Drawing.Size(100, 20);
			this.label6.TabIndex = 155;
			this.label6.Text = "City";
			// 
			// txtAddr2
			// 
			this.txtAddr2.Location = new System.Drawing.Point(242, 109);
			this.txtAddr2.Name = "txtAddr2";
			this.txtAddr2.Size = new System.Drawing.Size(264, 20);
			this.txtAddr2.TabIndex = 154;
			// 
			// label5
			// 
			this.label5.Location = new System.Drawing.Point(242, 93);
			this.label5.Name = "label5";
			this.label5.Size = new System.Drawing.Size(100, 20);
			this.label5.TabIndex = 153;
			this.label5.Text = "Address 2";
			// 
			// txtAddr1
			// 
			this.txtAddr1.Location = new System.Drawing.Point(242, 66);
			this.txtAddr1.Name = "txtAddr1";
			this.txtAddr1.Size = new System.Drawing.Size(264, 20);
			this.txtAddr1.TabIndex = 152;
			// 
			// label4
			// 
			this.label4.Location = new System.Drawing.Point(242, 50);
			this.label4.Name = "label4";
			this.label4.Size = new System.Drawing.Size(100, 20);
			this.label4.TabIndex = 151;
			this.label4.Text = "Address 1";
			// 
			// label3
			// 
			this.label3.Location = new System.Drawing.Point(6, 7);
			this.label3.Name = "label3";
			this.label3.Size = new System.Drawing.Size(100, 15);
			this.label3.TabIndex = 150;
			this.label3.Text = "Vendors";
			// 
			// btnClose
			// 
			this.btnClose.DialogResult = System.Windows.Forms.DialogResult.Cancel;
			this.btnClose.Location = new System.Drawing.Point(431, 350);
			this.btnClose.Name = "btnClose";
			this.btnClose.Size = new System.Drawing.Size(75, 23);
			this.btnClose.TabIndex = 149;
			this.btnClose.Text = "&Close";
			this.btnClose.UseVisualStyleBackColor = true;
			this.btnClose.Click += new System.EventHandler(this.btnClose_Click);
			// 
			// btnUpdate
			// 
			this.btnUpdate.Location = new System.Drawing.Point(350, 306);
			this.btnUpdate.Name = "btnUpdate";
			this.btnUpdate.Size = new System.Drawing.Size(75, 23);
			this.btnUpdate.TabIndex = 148;
			this.btnUpdate.Text = "&Update";
			this.btnUpdate.UseVisualStyleBackColor = true;
			this.btnUpdate.Click += new System.EventHandler(this.btnUpdate_Click);
			// 
			// btnRemove
			// 
			this.btnRemove.Location = new System.Drawing.Point(161, 306);
			this.btnRemove.Name = "btnRemove";
			this.btnRemove.Size = new System.Drawing.Size(75, 23);
			this.btnRemove.TabIndex = 147;
			this.btnRemove.Text = "&Remove";
			this.btnRemove.UseVisualStyleBackColor = true;
			this.btnRemove.Click += new System.EventHandler(this.btnRemove_Click);
			// 
			// btnAdd
			// 
			this.btnAdd.Location = new System.Drawing.Point(431, 306);
			this.btnAdd.Name = "btnAdd";
			this.btnAdd.Size = new System.Drawing.Size(75, 23);
			this.btnAdd.TabIndex = 146;
			this.btnAdd.Text = "&Add";
			this.btnAdd.UseVisualStyleBackColor = true;
			this.btnAdd.Click += new System.EventHandler(this.btnAdd_Click);
			// 
			// listVen
			// 
			this.listVen.FormattingEnabled = true;
			this.listVen.Location = new System.Drawing.Point(7, 23);
			this.listVen.Name = "listVen";
			this.listVen.Size = new System.Drawing.Size(229, 277);
			this.listVen.TabIndex = 145;
			// 
			// txtName
			// 
			this.txtName.Location = new System.Drawing.Point(242, 23);
			this.txtName.Name = "txtName";
			this.txtName.Size = new System.Drawing.Size(264, 20);
			this.txtName.TabIndex = 144;
			// 
			// label2
			// 
			this.label2.Location = new System.Drawing.Point(242, 7);
			this.label2.Name = "label2";
			this.label2.Size = new System.Drawing.Size(100, 20);
			this.label2.TabIndex = 143;
			this.label2.Text = "Name";
			// 
			// frmVendor
			// 
			this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
			this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
			this.ClientSize = new System.Drawing.Size(514, 379);
			this.Controls.Add(this.txtWeb);
			this.Controls.Add(this.label9);
			this.Controls.Add(this.txtFax);
			this.Controls.Add(this.label12);
			this.Controls.Add(this.txtPhone2);
			this.Controls.Add(this.label11);
			this.Controls.Add(this.txtPhone1);
			this.Controls.Add(this.label1);
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
			this.Controls.Add(this.btnClose);
			this.Controls.Add(this.btnUpdate);
			this.Controls.Add(this.btnRemove);
			this.Controls.Add(this.btnAdd);
			this.Controls.Add(this.listVen);
			this.Controls.Add(this.txtName);
			this.Controls.Add(this.label2);
			this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedDialog;
			this.MaximizeBox = false;
			this.MinimizeBox = false;
			this.Name = "frmVendor";
			this.Padding = new System.Windows.Forms.Padding(3);
			this.ShowIcon = false;
			this.ShowInTaskbar = false;
			this.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent;
			this.Text = "Vendors";
			this.ResumeLayout(false);
			this.PerformLayout();
		}
		private System.Windows.Forms.ListBox listVen;
		private System.Windows.Forms.TextBox txtWeb;
		private System.Windows.Forms.Label label2;
		private System.Windows.Forms.TextBox txtName;
		private System.Windows.Forms.Button btnAdd;
		private System.Windows.Forms.Button btnRemove;
		private System.Windows.Forms.Button btnUpdate;
		private System.Windows.Forms.Button btnClose;
		private System.Windows.Forms.Label label3;
		private System.Windows.Forms.Label label4;
		private System.Windows.Forms.TextBox txtAddr1;
		private System.Windows.Forms.Label label5;
		private System.Windows.Forms.TextBox txtAddr2;
		private System.Windows.Forms.Label label6;
		private System.Windows.Forms.TextBox txtCity;
		private System.Windows.Forms.ComboBox cboState;
		private System.Windows.Forms.Label label7;
		private System.Windows.Forms.Label label8;
		private System.Windows.Forms.TextBox txtZip;
		private System.Windows.Forms.Label label9;
		private System.Windows.Forms.Label label1;
		private System.Windows.Forms.TextBox txtPhone1;
		private System.Windows.Forms.Label label11;
		private System.Windows.Forms.TextBox txtPhone2;
		private System.Windows.Forms.Label label12;
		private System.Windows.Forms.TextBox txtFax;
	}
}

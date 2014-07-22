/***************************************************************************************************
 * Class:   MRDbConnection.cs
 * Created By: Eric Conder
 * Created On: 7/21/2014
 * 
 * Changes:
 * 
 *
 * *************************************************************************************************/
namespace MRMaintenance
{
	partial class frmDatabaseConnection
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
			this.txtServerName = new System.Windows.Forms.TextBox();
			this.txtDatabase = new System.Windows.Forms.TextBox();
			this.label2 = new System.Windows.Forms.Label();
			this.btnTest = new System.Windows.Forms.Button();
			this.btnCancel = new System.Windows.Forms.Button();
			this.btnOK = new System.Windows.Forms.Button();
			this.SuspendLayout();
			// 
			// label1
			// 
			this.label1.Location = new System.Drawing.Point(12, 9);
			this.label1.Name = "label1";
			this.label1.Size = new System.Drawing.Size(85, 18);
			this.label1.TabIndex = 0;
			this.label1.Text = "Server Name";
			// 
			// txtServerName
			// 
			this.txtServerName.Location = new System.Drawing.Point(12, 24);
			this.txtServerName.Name = "txtServerName";
			this.txtServerName.Size = new System.Drawing.Size(185, 20);
			this.txtServerName.TabIndex = 1;
			// 
			// txtDatabase
			// 
			this.txtDatabase.Location = new System.Drawing.Point(12, 65);
			this.txtDatabase.Name = "txtDatabase";
			this.txtDatabase.Size = new System.Drawing.Size(185, 20);
			this.txtDatabase.TabIndex = 3;
			// 
			// label2
			// 
			this.label2.Location = new System.Drawing.Point(12, 50);
			this.label2.Name = "label2";
			this.label2.Size = new System.Drawing.Size(85, 18);
			this.label2.TabIndex = 2;
			this.label2.Text = "Database Name";
			// 
			// btnTest
			// 
			this.btnTest.Location = new System.Drawing.Point(100, 91);
			this.btnTest.Name = "btnTest";
			this.btnTest.Size = new System.Drawing.Size(97, 23);
			this.btnTest.TabIndex = 4;
			this.btnTest.Text = "Test Connection";
			this.btnTest.UseVisualStyleBackColor = true;
			this.btnTest.Click += new System.EventHandler(this.BtnTestClick);
			// 
			// btnCancel
			// 
			this.btnCancel.DialogResult = System.Windows.Forms.DialogResult.Cancel;
			this.btnCancel.Location = new System.Drawing.Point(122, 135);
			this.btnCancel.Name = "btnCancel";
			this.btnCancel.Size = new System.Drawing.Size(75, 23);
			this.btnCancel.TabIndex = 5;
			this.btnCancel.Text = "&Cancel";
			this.btnCancel.UseVisualStyleBackColor = true;
			this.btnCancel.Click += new System.EventHandler(this.BtnCancelClick);
			// 
			// btnOK
			// 
			this.btnOK.Location = new System.Drawing.Point(41, 135);
			this.btnOK.Name = "btnOK";
			this.btnOK.Size = new System.Drawing.Size(75, 23);
			this.btnOK.TabIndex = 6;
			this.btnOK.Text = "&OK";
			this.btnOK.UseVisualStyleBackColor = true;
			this.btnOK.Click += new System.EventHandler(this.BtnOKClick);
			// 
			// frmDatabaseConnection
			// 
			this.AcceptButton = this.btnOK;
			this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
			this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
			this.CancelButton = this.btnCancel;
			this.ClientSize = new System.Drawing.Size(211, 161);
			this.Controls.Add(this.btnOK);
			this.Controls.Add(this.btnCancel);
			this.Controls.Add(this.btnTest);
			this.Controls.Add(this.txtDatabase);
			this.Controls.Add(this.label2);
			this.Controls.Add(this.txtServerName);
			this.Controls.Add(this.label1);
			this.KeyPreview = true;
			this.MaximizeBox = false;
			this.MinimizeBox = false;
			this.Name = "frmDatabaseConnection";
			this.ShowIcon = false;
			this.ShowInTaskbar = false;
			this.SizeGripStyle = System.Windows.Forms.SizeGripStyle.Hide;
			this.Text = "Database Connection";
			this.TopMost = true;
			this.ResumeLayout(false);
			this.PerformLayout();
		}
		private System.Windows.Forms.Button btnOK;
		private System.Windows.Forms.Button btnCancel;
		private System.Windows.Forms.Button btnTest;
		private System.Windows.Forms.Label label2;
		private System.Windows.Forms.TextBox txtDatabase;
		private System.Windows.Forms.TextBox txtServerName;
		private System.Windows.Forms.Label label1;
	}
}

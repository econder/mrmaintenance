/***************************************************************************************************
 * Class:   MRDbConnection.cs
 * Created By: Eric Conder
 * Created On: 8/1/2014
 * 
 * Changes:
 * 
 *
 * *************************************************************************************************/
namespace MRMaintenance
{
	partial class frmEquipmentModel
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
			this.listModel = new System.Windows.Forms.ListBox();
			this.txtName = new System.Windows.Forms.TextBox();
			this.label2 = new System.Windows.Forms.Label();
			this.label1 = new System.Windows.Forms.Label();
			this.SuspendLayout();
			// 
			// btnClose
			// 
			this.btnClose.DialogResult = System.Windows.Forms.DialogResult.Cancel;
			this.btnClose.Location = new System.Drawing.Point(431, 175);
			this.btnClose.Name = "btnClose";
			this.btnClose.Size = new System.Drawing.Size(75, 23);
			this.btnClose.TabIndex = 5;
			this.btnClose.Text = "&Close";
			this.btnClose.UseVisualStyleBackColor = true;
			this.btnClose.Click += new System.EventHandler(this.btnClose_Click);
			// 
			// btnUpdate
			// 
			this.btnUpdate.Location = new System.Drawing.Point(349, 46);
			this.btnUpdate.Name = "btnUpdate";
			this.btnUpdate.Size = new System.Drawing.Size(75, 23);
			this.btnUpdate.TabIndex = 3;
			this.btnUpdate.Text = "&Update";
			this.btnUpdate.UseVisualStyleBackColor = true;
			this.btnUpdate.Click += new System.EventHandler(this.btnUpdate_Click);
			// 
			// btnRemove
			// 
			this.btnRemove.Location = new System.Drawing.Point(159, 147);
			this.btnRemove.Name = "btnRemove";
			this.btnRemove.Size = new System.Drawing.Size(75, 23);
			this.btnRemove.TabIndex = 1;
			this.btnRemove.Text = "&Remove";
			this.btnRemove.UseVisualStyleBackColor = true;
			this.btnRemove.Click += new System.EventHandler(this.btnRemove_Click);
			// 
			// btnAdd
			// 
			this.btnAdd.Location = new System.Drawing.Point(430, 46);
			this.btnAdd.Name = "btnAdd";
			this.btnAdd.Size = new System.Drawing.Size(75, 23);
			this.btnAdd.TabIndex = 4;
			this.btnAdd.Text = "&Add";
			this.btnAdd.UseVisualStyleBackColor = true;
			this.btnAdd.Click += new System.EventHandler(this.btnAdd_Click);
			// 
			// listModel
			// 
			this.listModel.FormattingEnabled = true;
			this.listModel.Location = new System.Drawing.Point(5, 20);
			this.listModel.Name = "listModel";
			this.listModel.Size = new System.Drawing.Size(229, 121);
			this.listModel.TabIndex = 0;
			// 
			// txtName
			// 
			this.txtName.Location = new System.Drawing.Point(241, 20);
			this.txtName.Name = "txtName";
			this.txtName.Size = new System.Drawing.Size(264, 20);
			this.txtName.TabIndex = 2;
			this.txtName.Validating += new System.ComponentModel.CancelEventHandler(this.txtName_Validating);
			// 
			// label2
			// 
			this.label2.Location = new System.Drawing.Point(241, 5);
			this.label2.Name = "label2";
			this.label2.Size = new System.Drawing.Size(100, 20);
			this.label2.TabIndex = 65;
			this.label2.Text = "Model Name";
			// 
			// label1
			// 
			this.label1.Location = new System.Drawing.Point(5, 5);
			this.label1.Name = "label1";
			this.label1.Size = new System.Drawing.Size(100, 20);
			this.label1.TabIndex = 68;
			this.label1.Text = "Equipment Models";
			// 
			// frmEquipmentModel
			// 
			this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
			this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
			this.ClientSize = new System.Drawing.Size(511, 202);
			this.Controls.Add(this.btnClose);
			this.Controls.Add(this.btnUpdate);
			this.Controls.Add(this.btnRemove);
			this.Controls.Add(this.btnAdd);
			this.Controls.Add(this.listModel);
			this.Controls.Add(this.txtName);
			this.Controls.Add(this.label2);
			this.Controls.Add(this.label1);
			this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedDialog;
			this.MaximizeBox = false;
			this.MinimizeBox = false;
			this.Name = "frmEquipmentModel";
			this.ShowIcon = false;
			this.ShowInTaskbar = false;
			this.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent;
			this.Text = "Equipment Types";
			this.ResumeLayout(false);
			this.PerformLayout();
		}
		private System.Windows.Forms.Label label1;
		private System.Windows.Forms.Label label2;
		private System.Windows.Forms.TextBox txtName;
		private System.Windows.Forms.ListBox listModel;
		private System.Windows.Forms.Button btnAdd;
		private System.Windows.Forms.Button btnRemove;
		private System.Windows.Forms.Button btnUpdate;
		private System.Windows.Forms.Button btnClose;
	}
}

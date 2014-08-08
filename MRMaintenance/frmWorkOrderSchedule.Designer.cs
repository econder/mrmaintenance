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
	partial class frmWorkOrderSchedule
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
			this.cboEquip = new System.Windows.Forms.ComboBox();
			this.label11 = new System.Windows.Forms.Label();
			this.txtName = new System.Windows.Forms.TextBox();
			this.txtDescr = new System.Windows.Forms.TextBox();
			this.dtStartDate = new System.Windows.Forms.DateTimePicker();
			this.numFreq = new System.Windows.Forms.NumericUpDown();
			this.cboDept = new System.Windows.Forms.ComboBox();
			this.cboInterval = new System.Windows.Forms.ComboBox();
			this.label7 = new System.Windows.Forms.Label();
			this.label2 = new System.Windows.Forms.Label();
			this.label3 = new System.Windows.Forms.Label();
			this.label4 = new System.Windows.Forms.Label();
			this.label5 = new System.Windows.Forms.Label();
			this.label6 = new System.Windows.Forms.Label();
			this.listWO = new System.Windows.Forms.ListBox();
			this.label1 = new System.Windows.Forms.Label();
			this.btnUpdate = new System.Windows.Forms.Button();
			this.btnRemove = new System.Windows.Forms.Button();
			this.btnAdd = new System.Windows.Forms.Button();
			this.btnClose = new System.Windows.Forms.Button();
			this.label10 = new System.Windows.Forms.Label();
			((System.ComponentModel.ISupportInitialize)(this.numFreq)).BeginInit();
			this.SuspendLayout();
			// 
			// cboEquip
			// 
			this.cboEquip.AutoCompleteMode = System.Windows.Forms.AutoCompleteMode.SuggestAppend;
			this.cboEquip.AutoCompleteSource = System.Windows.Forms.AutoCompleteSource.ListItems;
			this.cboEquip.FormattingEnabled = true;
			this.cboEquip.Location = new System.Drawing.Point(241, 62);
			this.cboEquip.Name = "cboEquip";
			this.cboEquip.Size = new System.Drawing.Size(222, 21);
			this.cboEquip.TabIndex = 3;
			this.cboEquip.Validating += new System.ComponentModel.CancelEventHandler(this.cboEquip_Validating);
			// 
			// label11
			// 
			this.label11.Location = new System.Drawing.Point(241, 48);
			this.label11.Name = "label11";
			this.label11.Size = new System.Drawing.Size(104, 20);
			this.label11.TabIndex = 23;
			this.label11.Text = "Equipment Name";
			// 
			// txtName
			// 
			this.txtName.Location = new System.Drawing.Point(242, 21);
			this.txtName.Name = "txtName";
			this.txtName.Size = new System.Drawing.Size(264, 20);
			this.txtName.TabIndex = 2;
			this.txtName.Validating += new System.ComponentModel.CancelEventHandler(this.txtName_Validating);
			// 
			// txtDescr
			// 
			this.txtDescr.Location = new System.Drawing.Point(242, 147);
			this.txtDescr.Multiline = true;
			this.txtDescr.Name = "txtDescr";
			this.txtDescr.ScrollBars = System.Windows.Forms.ScrollBars.Vertical;
			this.txtDescr.Size = new System.Drawing.Size(264, 103);
			this.txtDescr.TabIndex = 5;
			// 
			// dtStartDate
			// 
			this.dtStartDate.CustomFormat = "";
			this.dtStartDate.Format = System.Windows.Forms.DateTimePickerFormat.Short;
			this.dtStartDate.Location = new System.Drawing.Point(382, 269);
			this.dtStartDate.MinDate = new System.DateTime(1970, 1, 1, 0, 0, 0, 0);
			this.dtStartDate.Name = "dtStartDate";
			this.dtStartDate.Size = new System.Drawing.Size(124, 20);
			this.dtStartDate.TabIndex = 6;
			this.dtStartDate.Validating += new System.ComponentModel.CancelEventHandler(this.dtStartDate_Validating);
			// 
			// numFreq
			// 
			this.numFreq.Location = new System.Drawing.Point(333, 314);
			this.numFreq.Maximum = new decimal(new int[] {
									999999999,
									0,
									0,
									0});
			this.numFreq.Name = "numFreq";
			this.numFreq.Size = new System.Drawing.Size(67, 20);
			this.numFreq.TabIndex = 7;
			// 
			// cboDept
			// 
			this.cboDept.AutoCompleteMode = System.Windows.Forms.AutoCompleteMode.Suggest;
			this.cboDept.AutoCompleteSource = System.Windows.Forms.AutoCompleteSource.ListItems;
			this.cboDept.FormattingEnabled = true;
			this.cboDept.Location = new System.Drawing.Point(241, 104);
			this.cboDept.Name = "cboDept";
			this.cboDept.Size = new System.Drawing.Size(222, 21);
			this.cboDept.TabIndex = 4;
			this.cboDept.Validating += new System.ComponentModel.CancelEventHandler(this.cboDept_Validating);
			// 
			// cboInterval
			// 
			this.cboInterval.AutoCompleteMode = System.Windows.Forms.AutoCompleteMode.Suggest;
			this.cboInterval.AutoCompleteSource = System.Windows.Forms.AutoCompleteSource.ListItems;
			this.cboInterval.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
			this.cboInterval.FormattingEnabled = true;
			this.cboInterval.Location = new System.Drawing.Point(406, 313);
			this.cboInterval.Name = "cboInterval";
			this.cboInterval.Size = new System.Drawing.Size(100, 21);
			this.cboInterval.TabIndex = 8;
			this.cboInterval.Validating += new System.ComponentModel.CancelEventHandler(this.cboInterval_Validating);
			// 
			// label7
			// 
			this.label7.Location = new System.Drawing.Point(242, 306);
			this.label7.Name = "label7";
			this.label7.Size = new System.Drawing.Size(83, 32);
			this.label7.TabIndex = 12;
			this.label7.Text = "Run Schedule \r\nEvery";
			this.label7.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
			// 
			// label2
			// 
			this.label2.Location = new System.Drawing.Point(242, 6);
			this.label2.Name = "label2";
			this.label2.Size = new System.Drawing.Size(100, 20);
			this.label2.TabIndex = 0;
			this.label2.Text = "Work Order Name";
			// 
			// label3
			// 
			this.label3.Location = new System.Drawing.Point(242, 132);
			this.label3.Name = "label3";
			this.label3.Size = new System.Drawing.Size(100, 20);
			this.label3.TabIndex = 2;
			this.label3.Text = "Work Description";
			// 
			// label4
			// 
			this.label4.Location = new System.Drawing.Point(242, 269);
			this.label4.Name = "label4";
			this.label4.Size = new System.Drawing.Size(107, 20);
			this.label4.TabIndex = 4;
			this.label4.Text = "Schedule Start Date";
			this.label4.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
			// 
			// label5
			// 
			this.label5.Location = new System.Drawing.Point(333, 299);
			this.label5.Name = "label5";
			this.label5.Size = new System.Drawing.Size(100, 20);
			this.label5.TabIndex = 7;
			this.label5.Text = "Frequency";
			// 
			// label6
			// 
			this.label6.Location = new System.Drawing.Point(406, 299);
			this.label6.Name = "label6";
			this.label6.Size = new System.Drawing.Size(84, 20);
			this.label6.TabIndex = 10;
			this.label6.Text = "Time Interval";
			// 
			// listWO
			// 
			this.listWO.FormattingEnabled = true;
			this.listWO.Location = new System.Drawing.Point(6, 21);
			this.listWO.Name = "listWO";
			this.listWO.Size = new System.Drawing.Size(229, 355);
			this.listWO.TabIndex = 0;
			// 
			// label1
			// 
			this.label1.Location = new System.Drawing.Point(6, 6);
			this.label1.Name = "label1";
			this.label1.Size = new System.Drawing.Size(100, 20);
			this.label1.TabIndex = 30;
			this.label1.Text = "Work Order Schedules";
			// 
			// btnUpdate
			// 
			this.btnUpdate.Location = new System.Drawing.Point(351, 340);
			this.btnUpdate.Name = "btnUpdate";
			this.btnUpdate.Size = new System.Drawing.Size(75, 23);
			this.btnUpdate.TabIndex = 10;
			this.btnUpdate.Text = "&Update";
			this.btnUpdate.UseVisualStyleBackColor = true;
			this.btnUpdate.Click += new System.EventHandler(this.btnUpdate_Click);
			// 
			// btnRemove
			// 
			this.btnRemove.Location = new System.Drawing.Point(160, 382);
			this.btnRemove.Name = "btnRemove";
			this.btnRemove.Size = new System.Drawing.Size(75, 23);
			this.btnRemove.TabIndex = 1;
			this.btnRemove.Text = "&Remove";
			this.btnRemove.UseVisualStyleBackColor = true;
			this.btnRemove.Click += new System.EventHandler(this.btnRemove_Click);
			// 
			// btnAdd
			// 
			this.btnAdd.Location = new System.Drawing.Point(432, 340);
			this.btnAdd.Name = "btnAdd";
			this.btnAdd.Size = new System.Drawing.Size(75, 23);
			this.btnAdd.TabIndex = 12;
			this.btnAdd.Text = "&Add";
			this.btnAdd.UseVisualStyleBackColor = true;
			this.btnAdd.Click += new System.EventHandler(this.btnAdd_Click);
			// 
			// btnClose
			// 
			this.btnClose.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right)));
			this.btnClose.DialogResult = System.Windows.Forms.DialogResult.Cancel;
			this.btnClose.Location = new System.Drawing.Point(432, 403);
			this.btnClose.Name = "btnClose";
			this.btnClose.Size = new System.Drawing.Size(75, 23);
			this.btnClose.TabIndex = 13;
			this.btnClose.Text = "&Close";
			this.btnClose.UseVisualStyleBackColor = true;
			this.btnClose.Click += new System.EventHandler(this.btnClose_Click);
			// 
			// label10
			// 
			this.label10.Location = new System.Drawing.Point(241, 90);
			this.label10.Name = "label10";
			this.label10.Size = new System.Drawing.Size(120, 20);
			this.label10.TabIndex = 17;
			this.label10.Text = "Department Assigned";
			// 
			// frmWorkOrderSchedule
			// 
			this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
			this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
			this.CancelButton = this.btnClose;
			this.ClientSize = new System.Drawing.Size(513, 431);
			this.Controls.Add(this.btnClose);
			this.Controls.Add(this.btnUpdate);
			this.Controls.Add(this.btnRemove);
			this.Controls.Add(this.btnAdd);
			this.Controls.Add(this.listWO);
			this.Controls.Add(this.cboEquip);
			this.Controls.Add(this.label11);
			this.Controls.Add(this.txtName);
			this.Controls.Add(this.txtDescr);
			this.Controls.Add(this.dtStartDate);
			this.Controls.Add(this.label4);
			this.Controls.Add(this.numFreq);
			this.Controls.Add(this.cboDept);
			this.Controls.Add(this.label10);
			this.Controls.Add(this.label3);
			this.Controls.Add(this.cboInterval);
			this.Controls.Add(this.label2);
			this.Controls.Add(this.label7);
			this.Controls.Add(this.label6);
			this.Controls.Add(this.label5);
			this.Controls.Add(this.label1);
			this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedDialog;
			this.MaximizeBox = false;
			this.MinimizeBox = false;
			this.Name = "frmWorkOrderSchedule";
			this.Padding = new System.Windows.Forms.Padding(3);
			this.ShowIcon = false;
			this.ShowInTaskbar = false;
			this.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent;
			this.Text = "Work Order Schedule";
			((System.ComponentModel.ISupportInitialize)(this.numFreq)).EndInit();
			this.ResumeLayout(false);
			this.PerformLayout();
		}
		private System.Windows.Forms.Button btnClose;
		private System.Windows.Forms.Button btnAdd;
		private System.Windows.Forms.Button btnRemove;
		private System.Windows.Forms.Button btnUpdate;
		private System.Windows.Forms.Label label1;
		private System.Windows.Forms.ListBox listWO;
		private System.Windows.Forms.Label label6;
		private System.Windows.Forms.Label label5;
		private System.Windows.Forms.Label label4;
		private System.Windows.Forms.Label label3;
		private System.Windows.Forms.Label label2;
		private System.Windows.Forms.Label label7;
		private System.Windows.Forms.ComboBox cboInterval;
		private System.Windows.Forms.Label label10;
		private System.Windows.Forms.ComboBox cboDept;
		private System.Windows.Forms.NumericUpDown numFreq;
		private System.Windows.Forms.DateTimePicker dtStartDate;
		private System.Windows.Forms.TextBox txtDescr;
		private System.Windows.Forms.TextBox txtName;
		private System.Windows.Forms.Label label11;
		private System.Windows.Forms.ComboBox cboEquip;
	}
}

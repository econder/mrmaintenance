/***************************************************************************************************
 * Class:   MRDbConnection.cs
 * Created By: Eric Conder
 * Created On: 7/9/2014
 * 
 * Changes:
 * 
 *
 * *************************************************************************************************/
namespace MRMaintenance
{
	partial class MainForm
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
			System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle1 = new System.Windows.Forms.DataGridViewCellStyle();
			this.menuStrip1 = new System.Windows.Forms.MenuStrip();
			this.viewToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
			this.workOrderSchedulesToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
			this.equipmentToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
			this.locationsToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
			this.facilitiesToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
			this.departmentsToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
			this.manufacturersToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
			this.vendorsToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
			this.aboutToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
			this.label1 = new System.Windows.Forms.Label();
			this.panel3 = new System.Windows.Forms.Panel();
			this.cboLocation = new System.Windows.Forms.ComboBox();
			this.label12 = new System.Windows.Forms.Label();
			this.cboEquip = new System.Windows.Forms.ComboBox();
			this.label11 = new System.Windows.Forms.Label();
			this.txtName = new System.Windows.Forms.TextBox();
			this.txtDescr = new System.Windows.Forms.TextBox();
			this.dtStartDate = new System.Windows.Forms.DateTimePicker();
			this.numFreq = new System.Windows.Forms.NumericUpDown();
			this.cboDept = new System.Windows.Forms.ComboBox();
			this.label10 = new System.Windows.Forms.Label();
			this.cboInterval = new System.Windows.Forms.ComboBox();
			this.label7 = new System.Windows.Forms.Label();
			this.label9 = new System.Windows.Forms.Label();
			this.dtNextDue = new System.Windows.Forms.DateTimePicker();
			this.label2 = new System.Windows.Forms.Label();
			this.label3 = new System.Windows.Forms.Label();
			this.dtLastCompleted = new System.Windows.Forms.DateTimePicker();
			this.label8 = new System.Windows.Forms.Label();
			this.label4 = new System.Windows.Forms.Label();
			this.label5 = new System.Windows.Forms.Label();
			this.label6 = new System.Windows.Forms.Label();
			this.dgview = new System.Windows.Forms.DataGridView();
			this.cboFacilties = new System.Windows.Forms.ComboBox();
			this.menuStrip1.SuspendLayout();
			this.panel3.SuspendLayout();
			((System.ComponentModel.ISupportInitialize)(this.numFreq)).BeginInit();
			((System.ComponentModel.ISupportInitialize)(this.dgview)).BeginInit();
			this.SuspendLayout();
			// 
			// menuStrip1
			// 
			this.menuStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
									this.viewToolStripMenuItem,
									this.aboutToolStripMenuItem});
			this.menuStrip1.Location = new System.Drawing.Point(3, 3);
			this.menuStrip1.Name = "menuStrip1";
			this.menuStrip1.Size = new System.Drawing.Size(686, 24);
			this.menuStrip1.TabIndex = 0;
			this.menuStrip1.Text = "menuStrip1";
			// 
			// viewToolStripMenuItem
			// 
			this.viewToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
									this.workOrderSchedulesToolStripMenuItem,
									this.equipmentToolStripMenuItem,
									this.locationsToolStripMenuItem,
									this.facilitiesToolStripMenuItem,
									this.departmentsToolStripMenuItem,
									this.manufacturersToolStripMenuItem,
									this.vendorsToolStripMenuItem});
			this.viewToolStripMenuItem.Name = "viewToolStripMenuItem";
			this.viewToolStripMenuItem.Size = new System.Drawing.Size(41, 20);
			this.viewToolStripMenuItem.Text = "&View";
			// 
			// workOrderSchedulesToolStripMenuItem
			// 
			this.workOrderSchedulesToolStripMenuItem.Name = "workOrderSchedulesToolStripMenuItem";
			this.workOrderSchedulesToolStripMenuItem.Size = new System.Drawing.Size(181, 22);
			this.workOrderSchedulesToolStripMenuItem.Text = "&Work Order Schedules";
			this.workOrderSchedulesToolStripMenuItem.Click += new System.EventHandler(this.WorkOrderSchedulesToolStripMenuItemClick);
			// 
			// equipmentToolStripMenuItem
			// 
			this.equipmentToolStripMenuItem.Name = "equipmentToolStripMenuItem";
			this.equipmentToolStripMenuItem.Size = new System.Drawing.Size(181, 22);
			this.equipmentToolStripMenuItem.Text = "&Equipment";
			this.equipmentToolStripMenuItem.Click += new System.EventHandler(this.EquipmentToolStripMenuItemClick);
			// 
			// locationsToolStripMenuItem
			// 
			this.locationsToolStripMenuItem.Name = "locationsToolStripMenuItem";
			this.locationsToolStripMenuItem.Size = new System.Drawing.Size(181, 22);
			this.locationsToolStripMenuItem.Text = "&Locations";
			this.locationsToolStripMenuItem.Click += new System.EventHandler(this.LocationsToolStripMenuItemClick);
			// 
			// facilitiesToolStripMenuItem
			// 
			this.facilitiesToolStripMenuItem.Name = "facilitiesToolStripMenuItem";
			this.facilitiesToolStripMenuItem.Size = new System.Drawing.Size(181, 22);
			this.facilitiesToolStripMenuItem.Text = "&Facilities";
			// 
			// departmentsToolStripMenuItem
			// 
			this.departmentsToolStripMenuItem.Name = "departmentsToolStripMenuItem";
			this.departmentsToolStripMenuItem.Size = new System.Drawing.Size(181, 22);
			this.departmentsToolStripMenuItem.Text = "&Departments";
			// 
			// manufacturersToolStripMenuItem
			// 
			this.manufacturersToolStripMenuItem.Name = "manufacturersToolStripMenuItem";
			this.manufacturersToolStripMenuItem.Size = new System.Drawing.Size(181, 22);
			this.manufacturersToolStripMenuItem.Text = "Manufacturers";
			// 
			// vendorsToolStripMenuItem
			// 
			this.vendorsToolStripMenuItem.Name = "vendorsToolStripMenuItem";
			this.vendorsToolStripMenuItem.Size = new System.Drawing.Size(181, 22);
			this.vendorsToolStripMenuItem.Text = "Vendors";
			// 
			// aboutToolStripMenuItem
			// 
			this.aboutToolStripMenuItem.Name = "aboutToolStripMenuItem";
			this.aboutToolStripMenuItem.Size = new System.Drawing.Size(60, 20);
			this.aboutToolStripMenuItem.Text = "About...";
			// 
			// label1
			// 
			this.label1.Location = new System.Drawing.Point(3, 36);
			this.label1.Name = "label1";
			this.label1.Size = new System.Drawing.Size(100, 16);
			this.label1.TabIndex = 5;
			this.label1.Text = "Facility";
			// 
			// panel3
			// 
			this.panel3.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
			this.panel3.Controls.Add(this.cboLocation);
			this.panel3.Controls.Add(this.label12);
			this.panel3.Controls.Add(this.cboEquip);
			this.panel3.Controls.Add(this.label11);
			this.panel3.Controls.Add(this.txtName);
			this.panel3.Controls.Add(this.txtDescr);
			this.panel3.Controls.Add(this.dtStartDate);
			this.panel3.Controls.Add(this.numFreq);
			this.panel3.Controls.Add(this.cboDept);
			this.panel3.Controls.Add(this.label10);
			this.panel3.Controls.Add(this.cboInterval);
			this.panel3.Controls.Add(this.label7);
			this.panel3.Controls.Add(this.label9);
			this.panel3.Controls.Add(this.dtNextDue);
			this.panel3.Controls.Add(this.label2);
			this.panel3.Controls.Add(this.label3);
			this.panel3.Controls.Add(this.dtLastCompleted);
			this.panel3.Controls.Add(this.label8);
			this.panel3.Controls.Add(this.label4);
			this.panel3.Controls.Add(this.label5);
			this.panel3.Controls.Add(this.label6);
			this.panel3.Location = new System.Drawing.Point(420, 81);
			this.panel3.Name = "panel3";
			this.panel3.Size = new System.Drawing.Size(269, 456);
			this.panel3.TabIndex = 6;
			// 
			// cboLocation
			// 
			this.cboLocation.AutoCompleteMode = System.Windows.Forms.AutoCompleteMode.Suggest;
			this.cboLocation.AutoCompleteSource = System.Windows.Forms.AutoCompleteSource.ListItems;
			this.cboLocation.FormattingEnabled = true;
			this.cboLocation.Location = new System.Drawing.Point(3, 54);
			this.cboLocation.Name = "cboLocation";
			this.cboLocation.Size = new System.Drawing.Size(264, 21);
			this.cboLocation.TabIndex = 26;
			// 
			// label12
			// 
			this.label12.Location = new System.Drawing.Point(3, 40);
			this.label12.Name = "label12";
			this.label12.Size = new System.Drawing.Size(84, 20);
			this.label12.TabIndex = 25;
			this.label12.Text = "Location";
			// 
			// cboEquip
			// 
			this.cboEquip.AutoCompleteMode = System.Windows.Forms.AutoCompleteMode.Suggest;
			this.cboEquip.AutoCompleteSource = System.Windows.Forms.AutoCompleteSource.ListItems;
			this.cboEquip.FormattingEnabled = true;
			this.cboEquip.Location = new System.Drawing.Point(3, 14);
			this.cboEquip.Name = "cboEquip";
			this.cboEquip.Size = new System.Drawing.Size(264, 21);
			this.cboEquip.TabIndex = 24;
			// 
			// label11
			// 
			this.label11.Location = new System.Drawing.Point(3, 0);
			this.label11.Name = "label11";
			this.label11.Size = new System.Drawing.Size(104, 20);
			this.label11.TabIndex = 23;
			this.label11.Text = "Equipment Name";
			// 
			// txtName
			// 
			this.txtName.Location = new System.Drawing.Point(3, 109);
			this.txtName.Name = "txtName";
			this.txtName.Size = new System.Drawing.Size(264, 20);
			this.txtName.TabIndex = 1;
			// 
			// txtDescr
			// 
			this.txtDescr.Location = new System.Drawing.Point(3, 151);
			this.txtDescr.Multiline = true;
			this.txtDescr.Name = "txtDescr";
			this.txtDescr.ScrollBars = System.Windows.Forms.ScrollBars.Vertical;
			this.txtDescr.Size = new System.Drawing.Size(264, 72);
			this.txtDescr.TabIndex = 3;
			// 
			// dtStartDate
			// 
			this.dtStartDate.CustomFormat = "";
			this.dtStartDate.Format = System.Windows.Forms.DateTimePickerFormat.Short;
			this.dtStartDate.Location = new System.Drawing.Point(143, 230);
			this.dtStartDate.MinDate = new System.DateTime(1970, 1, 1, 0, 0, 0, 0);
			this.dtStartDate.Name = "dtStartDate";
			this.dtStartDate.Size = new System.Drawing.Size(124, 20);
			this.dtStartDate.TabIndex = 6;
			// 
			// numFreq
			// 
			this.numFreq.Location = new System.Drawing.Point(94, 270);
			this.numFreq.Maximum = new decimal(new int[] {
									999999999,
									0,
									0,
									0});
			this.numFreq.Name = "numFreq";
			this.numFreq.Size = new System.Drawing.Size(67, 20);
			this.numFreq.TabIndex = 9;
			// 
			// cboDept
			// 
			this.cboDept.AutoCompleteMode = System.Windows.Forms.AutoCompleteMode.Suggest;
			this.cboDept.AutoCompleteSource = System.Windows.Forms.AutoCompleteSource.ListItems;
			this.cboDept.FormattingEnabled = true;
			this.cboDept.Location = new System.Drawing.Point(133, 366);
			this.cboDept.Name = "cboDept";
			this.cboDept.Size = new System.Drawing.Size(134, 21);
			this.cboDept.TabIndex = 18;
			// 
			// label10
			// 
			this.label10.Location = new System.Drawing.Point(3, 366);
			this.label10.Name = "label10";
			this.label10.Size = new System.Drawing.Size(120, 20);
			this.label10.TabIndex = 17;
			this.label10.Text = "Department Assigned";
			this.label10.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
			// 
			// cboInterval
			// 
			this.cboInterval.AutoCompleteMode = System.Windows.Forms.AutoCompleteMode.Suggest;
			this.cboInterval.AutoCompleteSource = System.Windows.Forms.AutoCompleteSource.ListItems;
			this.cboInterval.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
			this.cboInterval.FormattingEnabled = true;
			this.cboInterval.Location = new System.Drawing.Point(167, 269);
			this.cboInterval.Name = "cboInterval";
			this.cboInterval.Size = new System.Drawing.Size(100, 21);
			this.cboInterval.TabIndex = 11;
			// 
			// label7
			// 
			this.label7.Location = new System.Drawing.Point(3, 262);
			this.label7.Name = "label7";
			this.label7.Size = new System.Drawing.Size(83, 32);
			this.label7.TabIndex = 12;
			this.label7.Text = "Run Schedule \r\nEvery";
			this.label7.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
			// 
			// label9
			// 
			this.label9.Location = new System.Drawing.Point(3, 340);
			this.label9.Name = "label9";
			this.label9.Size = new System.Drawing.Size(83, 20);
			this.label9.TabIndex = 15;
			this.label9.Text = "Next Due On";
			this.label9.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
			// 
			// dtNextDue
			// 
			this.dtNextDue.CustomFormat = "";
			this.dtNextDue.Enabled = false;
			this.dtNextDue.Format = System.Windows.Forms.DateTimePickerFormat.Short;
			this.dtNextDue.Location = new System.Drawing.Point(133, 340);
			this.dtNextDue.MinDate = new System.DateTime(1970, 1, 1, 0, 0, 0, 0);
			this.dtNextDue.Name = "dtNextDue";
			this.dtNextDue.Size = new System.Drawing.Size(134, 20);
			this.dtNextDue.TabIndex = 16;
			// 
			// label2
			// 
			this.label2.Location = new System.Drawing.Point(3, 94);
			this.label2.Name = "label2";
			this.label2.Size = new System.Drawing.Size(100, 20);
			this.label2.TabIndex = 0;
			this.label2.Text = "Work Order Name";
			// 
			// label3
			// 
			this.label3.Location = new System.Drawing.Point(3, 136);
			this.label3.Name = "label3";
			this.label3.Size = new System.Drawing.Size(100, 20);
			this.label3.TabIndex = 2;
			this.label3.Text = "Description";
			// 
			// dtLastCompleted
			// 
			this.dtLastCompleted.CustomFormat = "";
			this.dtLastCompleted.Format = System.Windows.Forms.DateTimePickerFormat.Short;
			this.dtLastCompleted.Location = new System.Drawing.Point(133, 314);
			this.dtLastCompleted.MinDate = new System.DateTime(1970, 1, 1, 0, 0, 0, 0);
			this.dtLastCompleted.Name = "dtLastCompleted";
			this.dtLastCompleted.Size = new System.Drawing.Size(134, 20);
			this.dtLastCompleted.TabIndex = 14;
			// 
			// label8
			// 
			this.label8.Location = new System.Drawing.Point(3, 314);
			this.label8.Name = "label8";
			this.label8.Size = new System.Drawing.Size(83, 20);
			this.label8.TabIndex = 13;
			this.label8.Text = "Last Completed";
			this.label8.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
			// 
			// label4
			// 
			this.label4.Location = new System.Drawing.Point(3, 230);
			this.label4.Name = "label4";
			this.label4.Size = new System.Drawing.Size(107, 20);
			this.label4.TabIndex = 4;
			this.label4.Text = "Schedule Start Date";
			this.label4.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
			// 
			// label5
			// 
			this.label5.Location = new System.Drawing.Point(94, 255);
			this.label5.Name = "label5";
			this.label5.Size = new System.Drawing.Size(100, 20);
			this.label5.TabIndex = 7;
			this.label5.Text = "Frequency";
			// 
			// label6
			// 
			this.label6.Location = new System.Drawing.Point(167, 255);
			this.label6.Name = "label6";
			this.label6.Size = new System.Drawing.Size(84, 20);
			this.label6.TabIndex = 10;
			this.label6.Text = "Time Interval";
			// 
			// dgview
			// 
			this.dgview.AllowUserToOrderColumns = true;
			this.dgview.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
									| System.Windows.Forms.AnchorStyles.Left) 
									| System.Windows.Forms.AnchorStyles.Right)));
			this.dgview.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.AllCells;
			this.dgview.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
			dataGridViewCellStyle1.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
			dataGridViewCellStyle1.BackColor = System.Drawing.SystemColors.Window;
			dataGridViewCellStyle1.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
			dataGridViewCellStyle1.ForeColor = System.Drawing.SystemColors.ControlText;
			dataGridViewCellStyle1.SelectionBackColor = System.Drawing.SystemColors.Highlight;
			dataGridViewCellStyle1.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
			dataGridViewCellStyle1.WrapMode = System.Windows.Forms.DataGridViewTriState.False;
			this.dgview.DefaultCellStyle = dataGridViewCellStyle1;
			this.dgview.Location = new System.Drawing.Point(3, 81);
			this.dgview.Name = "dgview";
			this.dgview.ReadOnly = true;
			this.dgview.RowHeadersVisible = false;
			this.dgview.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
			this.dgview.Size = new System.Drawing.Size(411, 486);
			this.dgview.TabIndex = 8;
			// 
			// cboFacilties
			// 
			this.cboFacilties.FormattingEnabled = true;
			this.cboFacilties.Location = new System.Drawing.Point(3, 52);
			this.cboFacilties.Name = "cboFacilties";
			this.cboFacilties.Size = new System.Drawing.Size(226, 21);
			this.cboFacilties.TabIndex = 7;
			this.cboFacilties.SelectedIndexChanged += new System.EventHandler(this.cboFacilties_SelectedIndexChanged);
			// 
			// MainForm
			// 
			this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
			this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
			this.ClientSize = new System.Drawing.Size(692, 573);
			this.Controls.Add(this.label1);
			this.Controls.Add(this.panel3);
			this.Controls.Add(this.dgview);
			this.Controls.Add(this.cboFacilties);
			this.Controls.Add(this.menuStrip1);
			this.MainMenuStrip = this.menuStrip1;
			this.MinimumSize = new System.Drawing.Size(700, 600);
			this.Name = "MainForm";
			this.Padding = new System.Windows.Forms.Padding(3);
			this.Text = "MRMaintenance - Copyright © 2014";
			this.menuStrip1.ResumeLayout(false);
			this.menuStrip1.PerformLayout();
			this.panel3.ResumeLayout(false);
			this.panel3.PerformLayout();
			((System.ComponentModel.ISupportInitialize)(this.numFreq)).EndInit();
			((System.ComponentModel.ISupportInitialize)(this.dgview)).EndInit();
			this.ResumeLayout(false);
			this.PerformLayout();
		}
		private System.Windows.Forms.ToolStripMenuItem aboutToolStripMenuItem;
		private System.Windows.Forms.ToolStripMenuItem vendorsToolStripMenuItem;
		private System.Windows.Forms.ToolStripMenuItem manufacturersToolStripMenuItem;
		private System.Windows.Forms.ToolStripMenuItem departmentsToolStripMenuItem;
		private System.Windows.Forms.ToolStripMenuItem workOrderSchedulesToolStripMenuItem;
		private System.Windows.Forms.ToolStripMenuItem locationsToolStripMenuItem;
		private System.Windows.Forms.Panel panel3;
		private System.Windows.Forms.Label label12;
		private System.Windows.Forms.ComboBox cboLocation;
		private System.Windows.Forms.Label label10;
		private System.Windows.Forms.ComboBox cboDept;
		private System.Windows.Forms.Label label11;
		private System.Windows.Forms.ComboBox cboEquip;
		private System.Windows.Forms.Label label9;
		private System.Windows.Forms.DateTimePicker dtNextDue;
		private System.Windows.Forms.Label label8;
		private System.Windows.Forms.DateTimePicker dtLastCompleted;
		private System.Windows.Forms.Label label7;
		private System.Windows.Forms.Label label6;
		private System.Windows.Forms.ComboBox cboInterval;
		private System.Windows.Forms.Label label2;
		private System.Windows.Forms.TextBox txtName;
		private System.Windows.Forms.Label label3;
		private System.Windows.Forms.TextBox txtDescr;
		private System.Windows.Forms.Label label4;
		private System.Windows.Forms.DateTimePicker dtStartDate;
		private System.Windows.Forms.Label label5;
		private System.Windows.Forms.NumericUpDown numFreq;
		private System.Windows.Forms.DataGridView dgview;
		private System.Windows.Forms.ComboBox cboFacilties;
		private System.Windows.Forms.Label label1;
		private System.Windows.Forms.ToolStripMenuItem facilitiesToolStripMenuItem;
		private System.Windows.Forms.ToolStripMenuItem equipmentToolStripMenuItem;
		private System.Windows.Forms.ToolStripMenuItem viewToolStripMenuItem;
		private System.Windows.Forms.MenuStrip menuStrip1;
	}
}

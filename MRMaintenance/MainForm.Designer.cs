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
			this.workOrdersDueToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
			this.scheduledWorkOrdersToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
			this.equipmentToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
			this.facilitiesToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
			this.settingsToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
			this.tableLayoutPanel1 = new System.Windows.Forms.TableLayoutPanel();
			this.dgview = new System.Windows.Forms.DataGridView();
			this.panel1 = new System.Windows.Forms.Panel();
			this.cboFacilties = new System.Windows.Forms.ComboBox();
			this.label1 = new System.Windows.Forms.Label();
			this.panel2 = new System.Windows.Forms.Panel();
			this.cboLocation = new System.Windows.Forms.ComboBox();
			this.label12 = new System.Windows.Forms.Label();
			this.cboEquip = new System.Windows.Forms.ComboBox();
			this.label11 = new System.Windows.Forms.Label();
			this.cboDept = new System.Windows.Forms.ComboBox();
			this.label10 = new System.Windows.Forms.Label();
			this.dtNextDue = new System.Windows.Forms.DateTimePicker();
			this.label9 = new System.Windows.Forms.Label();
			this.dtLastCompleted = new System.Windows.Forms.DateTimePicker();
			this.label8 = new System.Windows.Forms.Label();
			this.cboInterval = new System.Windows.Forms.ComboBox();
			this.label6 = new System.Windows.Forms.Label();
			this.numFreq = new System.Windows.Forms.NumericUpDown();
			this.label5 = new System.Windows.Forms.Label();
			this.dtStartDate = new System.Windows.Forms.DateTimePicker();
			this.label4 = new System.Windows.Forms.Label();
			this.txtDescr = new System.Windows.Forms.TextBox();
			this.label3 = new System.Windows.Forms.Label();
			this.txtName = new System.Windows.Forms.TextBox();
			this.label2 = new System.Windows.Forms.Label();
			this.label7 = new System.Windows.Forms.Label();
			this.menuStrip1.SuspendLayout();
			this.tableLayoutPanel1.SuspendLayout();
			((System.ComponentModel.ISupportInitialize)(this.dgview)).BeginInit();
			this.panel1.SuspendLayout();
			this.panel2.SuspendLayout();
			((System.ComponentModel.ISupportInitialize)(this.numFreq)).BeginInit();
			this.SuspendLayout();
			// 
			// menuStrip1
			// 
			this.menuStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
									this.viewToolStripMenuItem,
									this.settingsToolStripMenuItem});
			this.menuStrip1.Location = new System.Drawing.Point(0, 0);
			this.menuStrip1.Name = "menuStrip1";
			this.menuStrip1.Size = new System.Drawing.Size(850, 24);
			this.menuStrip1.TabIndex = 0;
			this.menuStrip1.Text = "menuStrip1";
			// 
			// viewToolStripMenuItem
			// 
			this.viewToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
									this.workOrdersDueToolStripMenuItem,
									this.scheduledWorkOrdersToolStripMenuItem,
									this.equipmentToolStripMenuItem,
									this.facilitiesToolStripMenuItem});
			this.viewToolStripMenuItem.Name = "viewToolStripMenuItem";
			this.viewToolStripMenuItem.Size = new System.Drawing.Size(41, 20);
			this.viewToolStripMenuItem.Text = "&View";
			// 
			// workOrdersDueToolStripMenuItem
			// 
			this.workOrdersDueToolStripMenuItem.Name = "workOrdersDueToolStripMenuItem";
			this.workOrdersDueToolStripMenuItem.Size = new System.Drawing.Size(187, 22);
			this.workOrdersDueToolStripMenuItem.Text = "&Work Orders Due";
			// 
			// scheduledWorkOrdersToolStripMenuItem
			// 
			this.scheduledWorkOrdersToolStripMenuItem.Name = "scheduledWorkOrdersToolStripMenuItem";
			this.scheduledWorkOrdersToolStripMenuItem.Size = new System.Drawing.Size(187, 22);
			this.scheduledWorkOrdersToolStripMenuItem.Text = "&Scheduled Work Orders";
			// 
			// equipmentToolStripMenuItem
			// 
			this.equipmentToolStripMenuItem.Name = "equipmentToolStripMenuItem";
			this.equipmentToolStripMenuItem.Size = new System.Drawing.Size(187, 22);
			this.equipmentToolStripMenuItem.Text = "&Equipment";
			// 
			// facilitiesToolStripMenuItem
			// 
			this.facilitiesToolStripMenuItem.Name = "facilitiesToolStripMenuItem";
			this.facilitiesToolStripMenuItem.Size = new System.Drawing.Size(187, 22);
			this.facilitiesToolStripMenuItem.Text = "&Facilities";
			// 
			// settingsToolStripMenuItem
			// 
			this.settingsToolStripMenuItem.Name = "settingsToolStripMenuItem";
			this.settingsToolStripMenuItem.Size = new System.Drawing.Size(70, 20);
			this.settingsToolStripMenuItem.Text = "&Settings...";
			this.settingsToolStripMenuItem.Click += new System.EventHandler(this.SettingsToolStripMenuItemClick);
			// 
			// tableLayoutPanel1
			// 
			this.tableLayoutPanel1.AutoSize = true;
			this.tableLayoutPanel1.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink;
			this.tableLayoutPanel1.ColumnCount = 1;
			this.tableLayoutPanel1.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 100F));
			this.tableLayoutPanel1.Controls.Add(this.dgview, 0, 1);
			this.tableLayoutPanel1.Controls.Add(this.panel1, 0, 0);
			this.tableLayoutPanel1.Controls.Add(this.panel2, 0, 2);
			this.tableLayoutPanel1.Dock = System.Windows.Forms.DockStyle.Fill;
			this.tableLayoutPanel1.Location = new System.Drawing.Point(0, 24);
			this.tableLayoutPanel1.Name = "tableLayoutPanel1";
			this.tableLayoutPanel1.Padding = new System.Windows.Forms.Padding(3);
			this.tableLayoutPanel1.RowCount = 3;
			this.tableLayoutPanel1.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 45F));
			this.tableLayoutPanel1.RowStyles.Add(new System.Windows.Forms.RowStyle());
			this.tableLayoutPanel1.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 120F));
			this.tableLayoutPanel1.Size = new System.Drawing.Size(850, 666);
			this.tableLayoutPanel1.TabIndex = 1;
			// 
			// dgview
			// 
			this.dgview.AllowUserToAddRows = false;
			this.dgview.AllowUserToDeleteRows = false;
			this.dgview.AllowUserToOrderColumns = true;
			this.dgview.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.AllCells;
			this.dgview.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
			dataGridViewCellStyle1.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
			dataGridViewCellStyle1.BackColor = System.Drawing.SystemColors.Window;
			dataGridViewCellStyle1.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
			dataGridViewCellStyle1.ForeColor = System.Drawing.SystemColors.ControlText;
			dataGridViewCellStyle1.NullValue = "0";
			dataGridViewCellStyle1.SelectionBackColor = System.Drawing.SystemColors.Highlight;
			dataGridViewCellStyle1.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
			dataGridViewCellStyle1.WrapMode = System.Windows.Forms.DataGridViewTriState.False;
			this.dgview.DefaultCellStyle = dataGridViewCellStyle1;
			this.dgview.Dock = System.Windows.Forms.DockStyle.Fill;
			this.dgview.Location = new System.Drawing.Point(6, 51);
			this.dgview.Name = "dgview";
			this.dgview.ReadOnly = true;
			this.dgview.RowHeadersVisible = false;
			this.dgview.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
			this.dgview.Size = new System.Drawing.Size(838, 311);
			this.dgview.TabIndex = 0;
			// 
			// panel1
			// 
			this.panel1.AutoSize = true;
			this.panel1.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink;
			this.panel1.Controls.Add(this.cboFacilties);
			this.panel1.Controls.Add(this.label1);
			this.panel1.Dock = System.Windows.Forms.DockStyle.Fill;
			this.panel1.Location = new System.Drawing.Point(6, 6);
			this.panel1.Name = "panel1";
			this.panel1.Size = new System.Drawing.Size(838, 39);
			this.panel1.TabIndex = 1;
			// 
			// cboFacilties
			// 
			this.cboFacilties.FormattingEnabled = true;
			this.cboFacilties.Location = new System.Drawing.Point(0, 17);
			this.cboFacilties.Name = "cboFacilties";
			this.cboFacilties.Size = new System.Drawing.Size(226, 21);
			this.cboFacilties.TabIndex = 1;
			this.cboFacilties.SelectedIndexChanged += new System.EventHandler(this.cboFaciltiesSelectedIndexChanged);
			// 
			// label1
			// 
			this.label1.Location = new System.Drawing.Point(0, 1);
			this.label1.Name = "label1";
			this.label1.Size = new System.Drawing.Size(100, 16);
			this.label1.TabIndex = 0;
			this.label1.Text = "Facility";
			// 
			// panel2
			// 
			this.panel2.AutoSize = true;
			this.panel2.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink;
			this.panel2.Controls.Add(this.cboLocation);
			this.panel2.Controls.Add(this.label12);
			this.panel2.Controls.Add(this.cboEquip);
			this.panel2.Controls.Add(this.label11);
			this.panel2.Controls.Add(this.cboDept);
			this.panel2.Controls.Add(this.label10);
			this.panel2.Controls.Add(this.dtNextDue);
			this.panel2.Controls.Add(this.label9);
			this.panel2.Controls.Add(this.dtLastCompleted);
			this.panel2.Controls.Add(this.label8);
			this.panel2.Controls.Add(this.cboInterval);
			this.panel2.Controls.Add(this.label6);
			this.panel2.Controls.Add(this.numFreq);
			this.panel2.Controls.Add(this.label5);
			this.panel2.Controls.Add(this.dtStartDate);
			this.panel2.Controls.Add(this.label4);
			this.panel2.Controls.Add(this.txtDescr);
			this.panel2.Controls.Add(this.label3);
			this.panel2.Controls.Add(this.txtName);
			this.panel2.Controls.Add(this.label2);
			this.panel2.Controls.Add(this.label7);
			this.panel2.Dock = System.Windows.Forms.DockStyle.Fill;
			this.panel2.Location = new System.Drawing.Point(6, 368);
			this.panel2.Name = "panel2";
			this.panel2.Padding = new System.Windows.Forms.Padding(0, 5, 0, 0);
			this.panel2.Size = new System.Drawing.Size(838, 292);
			this.panel2.TabIndex = 2;
			// 
			// cboLocation
			// 
			this.cboLocation.FormattingEnabled = true;
			this.cboLocation.Location = new System.Drawing.Point(550, 75);
			this.cboLocation.Name = "cboLocation";
			this.cboLocation.Size = new System.Drawing.Size(215, 21);
			this.cboLocation.TabIndex = 22;
			// 
			// label12
			// 
			this.label12.Location = new System.Drawing.Point(550, 61);
			this.label12.Name = "label12";
			this.label12.Size = new System.Drawing.Size(84, 18);
			this.label12.TabIndex = 21;
			this.label12.Text = "Location";
			// 
			// cboEquip
			// 
			this.cboEquip.FormattingEnabled = true;
			this.cboEquip.Location = new System.Drawing.Point(293, 75);
			this.cboEquip.Name = "cboEquip";
			this.cboEquip.Size = new System.Drawing.Size(251, 21);
			this.cboEquip.TabIndex = 20;
			// 
			// label11
			// 
			this.label11.Location = new System.Drawing.Point(293, 61);
			this.label11.Name = "label11";
			this.label11.Size = new System.Drawing.Size(104, 18);
			this.label11.TabIndex = 19;
			this.label11.Text = "Equipment Name";
			// 
			// cboDept
			// 
			this.cboDept.FormattingEnabled = true;
			this.cboDept.Location = new System.Drawing.Point(588, 19);
			this.cboDept.Name = "cboDept";
			this.cboDept.Size = new System.Drawing.Size(177, 21);
			this.cboDept.TabIndex = 18;
			// 
			// label10
			// 
			this.label10.Location = new System.Drawing.Point(588, 5);
			this.label10.Name = "label10";
			this.label10.Size = new System.Drawing.Size(120, 18);
			this.label10.TabIndex = 17;
			this.label10.Text = "Department Assigned";
			// 
			// dtNextDue
			// 
			this.dtNextDue.CustomFormat = "ww, mmm d yyyy";
			this.dtNextDue.Format = System.Windows.Forms.DateTimePickerFormat.Short;
			this.dtNextDue.Location = new System.Drawing.Point(433, 20);
			this.dtNextDue.MinDate = new System.DateTime(1970, 1, 1, 0, 0, 0, 0);
			this.dtNextDue.Name = "dtNextDue";
			this.dtNextDue.Size = new System.Drawing.Size(134, 20);
			this.dtNextDue.TabIndex = 16;
			// 
			// label9
			// 
			this.label9.Location = new System.Drawing.Point(433, 5);
			this.label9.Name = "label9";
			this.label9.Size = new System.Drawing.Size(134, 18);
			this.label9.TabIndex = 15;
			this.label9.Text = "Due Again On";
			// 
			// dtLastCompleted
			// 
			this.dtLastCompleted.CustomFormat = "ww, mmm d yyyy";
			this.dtLastCompleted.Format = System.Windows.Forms.DateTimePickerFormat.Short;
			this.dtLastCompleted.Location = new System.Drawing.Point(293, 20);
			this.dtLastCompleted.MinDate = new System.DateTime(1970, 1, 1, 0, 0, 0, 0);
			this.dtLastCompleted.Name = "dtLastCompleted";
			this.dtLastCompleted.Size = new System.Drawing.Size(134, 20);
			this.dtLastCompleted.TabIndex = 14;
			// 
			// label8
			// 
			this.label8.Location = new System.Drawing.Point(293, 5);
			this.label8.Name = "label8";
			this.label8.Size = new System.Drawing.Size(134, 18);
			this.label8.TabIndex = 13;
			this.label8.Text = "Last Completed";
			// 
			// cboInterval
			// 
			this.cboInterval.FormattingEnabled = true;
			this.cboInterval.Location = new System.Drawing.Point(164, 197);
			this.cboInterval.Name = "cboInterval";
			this.cboInterval.Size = new System.Drawing.Size(100, 21);
			this.cboInterval.TabIndex = 11;
			// 
			// label6
			// 
			this.label6.Location = new System.Drawing.Point(164, 183);
			this.label6.Name = "label6";
			this.label6.Size = new System.Drawing.Size(84, 18);
			this.label6.TabIndex = 10;
			this.label6.Text = "Time Interval";
			// 
			// numFreq
			// 
			this.numFreq.Location = new System.Drawing.Point(91, 198);
			this.numFreq.Maximum = new decimal(new int[] {
									999999999,
									0,
									0,
									0});
			this.numFreq.Name = "numFreq";
			this.numFreq.Size = new System.Drawing.Size(67, 20);
			this.numFreq.TabIndex = 9;
			// 
			// label5
			// 
			this.label5.Location = new System.Drawing.Point(91, 183);
			this.label5.Name = "label5";
			this.label5.Size = new System.Drawing.Size(100, 18);
			this.label5.TabIndex = 7;
			this.label5.Text = "Frequency";
			// 
			// dtStartDate
			// 
			this.dtStartDate.CustomFormat = "ww, mmm d yyyy";
			this.dtStartDate.Format = System.Windows.Forms.DateTimePickerFormat.Short;
			this.dtStartDate.Location = new System.Drawing.Point(0, 156);
			this.dtStartDate.MinDate = new System.DateTime(1970, 1, 1, 0, 0, 0, 0);
			this.dtStartDate.Name = "dtStartDate";
			this.dtStartDate.Size = new System.Drawing.Size(134, 20);
			this.dtStartDate.TabIndex = 6;
			// 
			// label4
			// 
			this.label4.Location = new System.Drawing.Point(0, 141);
			this.label4.Name = "label4";
			this.label4.Size = new System.Drawing.Size(134, 18);
			this.label4.TabIndex = 4;
			this.label4.Text = "Schedule Start Date";
			// 
			// txtDescr
			// 
			this.txtDescr.Location = new System.Drawing.Point(0, 62);
			this.txtDescr.Multiline = true;
			this.txtDescr.Name = "txtDescr";
			this.txtDescr.Size = new System.Drawing.Size(264, 70);
			this.txtDescr.TabIndex = 3;
			// 
			// label3
			// 
			this.label3.Location = new System.Drawing.Point(0, 47);
			this.label3.Name = "label3";
			this.label3.Size = new System.Drawing.Size(100, 18);
			this.label3.TabIndex = 2;
			this.label3.Text = "Description";
			// 
			// txtName
			// 
			this.txtName.Location = new System.Drawing.Point(0, 20);
			this.txtName.Name = "txtName";
			this.txtName.Size = new System.Drawing.Size(264, 20);
			this.txtName.TabIndex = 1;
			// 
			// label2
			// 
			this.label2.Location = new System.Drawing.Point(0, 5);
			this.label2.Name = "label2";
			this.label2.Size = new System.Drawing.Size(100, 18);
			this.label2.TabIndex = 0;
			this.label2.Text = "Name";
			// 
			// label7
			// 
			this.label7.Location = new System.Drawing.Point(0, 193);
			this.label7.Name = "label7";
			this.label7.Size = new System.Drawing.Size(83, 30);
			this.label7.TabIndex = 12;
			this.label7.Text = "Run Schedule \r\nEvery";
			// 
			// MainForm
			// 
			this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
			this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
			this.ClientSize = new System.Drawing.Size(850, 690);
			this.Controls.Add(this.tableLayoutPanel1);
			this.Controls.Add(this.menuStrip1);
			this.MainMenuStrip = this.menuStrip1;
			this.MinimumSize = new System.Drawing.Size(640, 480);
			this.Name = "MainForm";
			this.Text = "MRMaintenance - Copyright © 2014";
			this.menuStrip1.ResumeLayout(false);
			this.menuStrip1.PerformLayout();
			this.tableLayoutPanel1.ResumeLayout(false);
			this.tableLayoutPanel1.PerformLayout();
			((System.ComponentModel.ISupportInitialize)(this.dgview)).EndInit();
			this.panel1.ResumeLayout(false);
			this.panel2.ResumeLayout(false);
			this.panel2.PerformLayout();
			((System.ComponentModel.ISupportInitialize)(this.numFreq)).EndInit();
			this.ResumeLayout(false);
			this.PerformLayout();
		}
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
		private System.Windows.Forms.Panel panel2;
		private System.Windows.Forms.Panel panel1;
		private System.Windows.Forms.DataGridView dgview;
		private System.Windows.Forms.ComboBox cboFacilties;
		private System.Windows.Forms.Label label1;
		private System.Windows.Forms.TableLayoutPanel tableLayoutPanel1;
		private System.Windows.Forms.ToolStripMenuItem settingsToolStripMenuItem;
		private System.Windows.Forms.ToolStripMenuItem facilitiesToolStripMenuItem;
		private System.Windows.Forms.ToolStripMenuItem equipmentToolStripMenuItem;
		private System.Windows.Forms.ToolStripMenuItem scheduledWorkOrdersToolStripMenuItem;
		private System.Windows.Forms.ToolStripMenuItem workOrdersDueToolStripMenuItem;
		private System.Windows.Forms.ToolStripMenuItem viewToolStripMenuItem;
		private System.Windows.Forms.MenuStrip menuStrip1;
	}
}

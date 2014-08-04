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
			this.components = new System.ComponentModel.Container();
			System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle1 = new System.Windows.Forms.DataGridViewCellStyle();
			this.menuStrip1 = new System.Windows.Forms.MenuStrip();
			this.fileToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
			this.exitToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
			this.viewToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
			this.workOrderSchedulesToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
			this.equipmentToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
			this.locationsToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
			this.facilitiesToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
			this.departmentsToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
			this.manufacturersToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
			this.vendorsToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
			this.reportsToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
			this.workOrdersToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
			this.allToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
			this.aboutToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
			this.label1 = new System.Windows.Forms.Label();
			this.dgview = new System.Windows.Forms.DataGridView();
			this.menuDGView = new System.Windows.Forms.ContextMenuStrip(this.components);
			this.markAsComplete = new System.Windows.Forms.ToolStripMenuItem();
			this.cboFacilities = new System.Windows.Forms.ComboBox();
			this.menuStrip1.SuspendLayout();
			((System.ComponentModel.ISupportInitialize)(this.dgview)).BeginInit();
			this.menuDGView.SuspendLayout();
			this.SuspendLayout();
			// 
			// menuStrip1
			// 
			this.menuStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
									this.fileToolStripMenuItem,
									this.viewToolStripMenuItem,
									this.reportsToolStripMenuItem,
									this.aboutToolStripMenuItem});
			this.menuStrip1.Location = new System.Drawing.Point(3, 3);
			this.menuStrip1.Name = "menuStrip1";
			this.menuStrip1.Size = new System.Drawing.Size(686, 24);
			this.menuStrip1.TabIndex = 0;
			this.menuStrip1.Text = "menuStrip1";
			// 
			// fileToolStripMenuItem
			// 
			this.fileToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
									this.exitToolStripMenuItem});
			this.fileToolStripMenuItem.Name = "fileToolStripMenuItem";
			this.fileToolStripMenuItem.Size = new System.Drawing.Size(35, 20);
			this.fileToolStripMenuItem.Text = "&File";
			// 
			// exitToolStripMenuItem
			// 
			this.exitToolStripMenuItem.Name = "exitToolStripMenuItem";
			this.exitToolStripMenuItem.ShortcutKeyDisplayString = "Alt+F4";
			this.exitToolStripMenuItem.Size = new System.Drawing.Size(152, 22);
			this.exitToolStripMenuItem.Text = "E&xit";
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
			this.viewToolStripMenuItem.Size = new System.Drawing.Size(37, 20);
			this.viewToolStripMenuItem.Text = "&Edit";
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
			this.facilitiesToolStripMenuItem.Click += new System.EventHandler(this.FacilitiesToolStripMenuItemClick);
			// 
			// departmentsToolStripMenuItem
			// 
			this.departmentsToolStripMenuItem.Name = "departmentsToolStripMenuItem";
			this.departmentsToolStripMenuItem.Size = new System.Drawing.Size(181, 22);
			this.departmentsToolStripMenuItem.Text = "&Departments";
			this.departmentsToolStripMenuItem.Click += new System.EventHandler(this.DepartmentsToolStripMenuItemClick);
			// 
			// manufacturersToolStripMenuItem
			// 
			this.manufacturersToolStripMenuItem.Name = "manufacturersToolStripMenuItem";
			this.manufacturersToolStripMenuItem.Size = new System.Drawing.Size(181, 22);
			this.manufacturersToolStripMenuItem.Text = "Manufacturers";
			this.manufacturersToolStripMenuItem.Click += new System.EventHandler(this.ManufacturersToolStripMenuItemClick);
			// 
			// vendorsToolStripMenuItem
			// 
			this.vendorsToolStripMenuItem.Name = "vendorsToolStripMenuItem";
			this.vendorsToolStripMenuItem.Size = new System.Drawing.Size(181, 22);
			this.vendorsToolStripMenuItem.Text = "Vendors";
			this.vendorsToolStripMenuItem.Click += new System.EventHandler(this.VendorsToolStripMenuItemClick);
			// 
			// reportsToolStripMenuItem
			// 
			this.reportsToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
									this.workOrdersToolStripMenuItem});
			this.reportsToolStripMenuItem.Name = "reportsToolStripMenuItem";
			this.reportsToolStripMenuItem.Size = new System.Drawing.Size(57, 20);
			this.reportsToolStripMenuItem.Text = "&Reports";
			// 
			// workOrdersToolStripMenuItem
			// 
			this.workOrdersToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
									this.allToolStripMenuItem});
			this.workOrdersToolStripMenuItem.Name = "workOrdersToolStripMenuItem";
			this.workOrdersToolStripMenuItem.Size = new System.Drawing.Size(152, 22);
			this.workOrdersToolStripMenuItem.Text = "&Work Orders";
			// 
			// allToolStripMenuItem
			// 
			this.allToolStripMenuItem.Name = "allToolStripMenuItem";
			this.allToolStripMenuItem.Size = new System.Drawing.Size(152, 22);
			this.allToolStripMenuItem.Text = "&All";
			this.allToolStripMenuItem.Click += new System.EventHandler(this.AllToolStripMenuItemClick);
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
			// dgview
			// 
			this.dgview.AllowUserToAddRows = false;
			this.dgview.AllowUserToDeleteRows = false;
			this.dgview.AllowUserToOrderColumns = true;
			this.dgview.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
									| System.Windows.Forms.AnchorStyles.Left) 
									| System.Windows.Forms.AnchorStyles.Right)));
			this.dgview.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.AllCells;
			this.dgview.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
			this.dgview.ContextMenuStrip = this.menuDGView;
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
			this.dgview.Size = new System.Drawing.Size(686, 486);
			this.dgview.TabIndex = 1;
			this.dgview.CellDoubleClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dgview_CellDoubleClick);
			// 
			// menuDGView
			// 
			this.menuDGView.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
									this.markAsComplete});
			this.menuDGView.Name = "menuDGView";
			this.menuDGView.Size = new System.Drawing.Size(161, 26);
			// 
			// markAsComplete
			// 
			this.markAsComplete.Name = "markAsComplete";
			this.markAsComplete.Size = new System.Drawing.Size(160, 22);
			this.markAsComplete.Text = "&Mark As Complete";
			this.markAsComplete.Click += new System.EventHandler(this.MarkAsCompleteClick);
			// 
			// cboFacilities
			// 
			this.cboFacilities.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
			this.cboFacilities.FormattingEnabled = true;
			this.cboFacilities.Location = new System.Drawing.Point(3, 52);
			this.cboFacilities.Name = "cboFacilities";
			this.cboFacilities.Size = new System.Drawing.Size(226, 21);
			this.cboFacilities.TabIndex = 0;
			// 
			// MainForm
			// 
			this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
			this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
			this.ClientSize = new System.Drawing.Size(692, 573);
			this.Controls.Add(this.label1);
			this.Controls.Add(this.dgview);
			this.Controls.Add(this.cboFacilities);
			this.Controls.Add(this.menuStrip1);
			this.MainMenuStrip = this.menuStrip1;
			this.MinimumSize = new System.Drawing.Size(700, 600);
			this.Name = "MainForm";
			this.Padding = new System.Windows.Forms.Padding(3);
			this.Text = "MRMaintenance - Copyright © 2014";
			this.menuStrip1.ResumeLayout(false);
			this.menuStrip1.PerformLayout();
			((System.ComponentModel.ISupportInitialize)(this.dgview)).EndInit();
			this.menuDGView.ResumeLayout(false);
			this.ResumeLayout(false);
			this.PerformLayout();
		}
		private System.Windows.Forms.ToolStripMenuItem markAsComplete;
		private System.Windows.Forms.ContextMenuStrip menuDGView;
		private System.Windows.Forms.ToolStripMenuItem exitToolStripMenuItem;
		private System.Windows.Forms.ToolStripMenuItem fileToolStripMenuItem;
		private System.Windows.Forms.ToolStripMenuItem allToolStripMenuItem;
		private System.Windows.Forms.ToolStripMenuItem workOrdersToolStripMenuItem;
		private System.Windows.Forms.ToolStripMenuItem reportsToolStripMenuItem;
		private System.Windows.Forms.ToolStripMenuItem aboutToolStripMenuItem;
		private System.Windows.Forms.ToolStripMenuItem vendorsToolStripMenuItem;
		private System.Windows.Forms.ToolStripMenuItem manufacturersToolStripMenuItem;
		private System.Windows.Forms.ToolStripMenuItem departmentsToolStripMenuItem;
		private System.Windows.Forms.ToolStripMenuItem workOrderSchedulesToolStripMenuItem;
		private System.Windows.Forms.ToolStripMenuItem locationsToolStripMenuItem;
		private System.Windows.Forms.DataGridView dgview;
		private System.Windows.Forms.ComboBox cboFacilities;
		private System.Windows.Forms.Label label1;
		private System.Windows.Forms.ToolStripMenuItem facilitiesToolStripMenuItem;
		private System.Windows.Forms.ToolStripMenuItem equipmentToolStripMenuItem;
		private System.Windows.Forms.ToolStripMenuItem viewToolStripMenuItem;
		private System.Windows.Forms.MenuStrip menuStrip1;
	}
}

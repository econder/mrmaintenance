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
			this.menuStrip1.SuspendLayout();
			this.tableLayoutPanel1.SuspendLayout();
			((System.ComponentModel.ISupportInitialize)(this.dgview)).BeginInit();
			this.panel1.SuspendLayout();
			this.SuspendLayout();
			// 
			// menuStrip1
			// 
			this.menuStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
									this.viewToolStripMenuItem,
									this.settingsToolStripMenuItem});
			this.menuStrip1.Location = new System.Drawing.Point(0, 0);
			this.menuStrip1.Name = "menuStrip1";
			this.menuStrip1.Size = new System.Drawing.Size(937, 24);
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
			this.tableLayoutPanel1.ColumnCount = 1;
			this.tableLayoutPanel1.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle());
			this.tableLayoutPanel1.Controls.Add(this.dgview, 0, 1);
			this.tableLayoutPanel1.Controls.Add(this.panel1, 0, 0);
			this.tableLayoutPanel1.Dock = System.Windows.Forms.DockStyle.Fill;
			this.tableLayoutPanel1.Location = new System.Drawing.Point(0, 24);
			this.tableLayoutPanel1.Name = "tableLayoutPanel1";
			this.tableLayoutPanel1.Padding = new System.Windows.Forms.Padding(5, 10, 5, 5);
			this.tableLayoutPanel1.RowCount = 2;
			this.tableLayoutPanel1.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 50F));
			this.tableLayoutPanel1.RowStyles.Add(new System.Windows.Forms.RowStyle());
			this.tableLayoutPanel1.Size = new System.Drawing.Size(937, 516);
			this.tableLayoutPanel1.TabIndex = 1;
			// 
			// dgview
			// 
			this.dgview.AllowUserToOrderColumns = true;
			this.dgview.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
			this.dgview.Dock = System.Windows.Forms.DockStyle.Fill;
			this.dgview.Location = new System.Drawing.Point(8, 63);
			this.dgview.Name = "dgview";
			this.dgview.Size = new System.Drawing.Size(921, 445);
			this.dgview.TabIndex = 0;
			// 
			// panel1
			// 
			this.panel1.Controls.Add(this.cboFacilties);
			this.panel1.Controls.Add(this.label1);
			this.panel1.Dock = System.Windows.Forms.DockStyle.Fill;
			this.panel1.Location = new System.Drawing.Point(8, 13);
			this.panel1.Name = "panel1";
			this.panel1.Size = new System.Drawing.Size(921, 44);
			this.panel1.TabIndex = 1;
			// 
			// cboFacilties
			// 
			this.cboFacilties.FormattingEnabled = true;
			this.cboFacilties.Location = new System.Drawing.Point(0, 17);
			this.cboFacilties.Name = "cboFacilties";
			this.cboFacilties.Size = new System.Drawing.Size(214, 21);
			this.cboFacilties.TabIndex = 1;
			this.cboFacilties.SelectedIndexChanged += new System.EventHandler(this.CboFaciltiesSelectedIndexChanged);
			// 
			// label1
			// 
			this.label1.Location = new System.Drawing.Point(0, 1);
			this.label1.Name = "label1";
			this.label1.Size = new System.Drawing.Size(100, 16);
			this.label1.TabIndex = 0;
			this.label1.Text = "Facility";
			// 
			// MainForm
			// 
			this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
			this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
			this.ClientSize = new System.Drawing.Size(937, 540);
			this.Controls.Add(this.tableLayoutPanel1);
			this.Controls.Add(this.menuStrip1);
			this.MainMenuStrip = this.menuStrip1;
			this.Name = "MainForm";
			this.Text = "MRMaintenance";
			this.menuStrip1.ResumeLayout(false);
			this.menuStrip1.PerformLayout();
			this.tableLayoutPanel1.ResumeLayout(false);
			((System.ComponentModel.ISupportInitialize)(this.dgview)).EndInit();
			this.panel1.ResumeLayout(false);
			this.ResumeLayout(false);
			this.PerformLayout();
		}
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

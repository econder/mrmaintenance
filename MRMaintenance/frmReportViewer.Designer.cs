/***************************************************************************************************
 * Class:   MRDbConnection.cs
 * Created By: Eric Conder
 * Created On: 8/12/2014
 * 
 * Changes:
 * 
 *
 * *************************************************************************************************/
namespace MRMaintenance
{
	partial class frmReportViewer
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
			System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(frmReportViewer));
			this.rptView = new Microsoft.Reporting.WinForms.ReportViewer();
			this.SuspendLayout();
			// 
			// rptView
			// 
			this.rptView.Dock = System.Windows.Forms.DockStyle.Fill;
			this.rptView.Location = new System.Drawing.Point(3, 3);
			this.rptView.Name = "rptView";
			this.rptView.ProcessingMode = Microsoft.Reporting.WinForms.ProcessingMode.Remote;
			this.rptView.Size = new System.Drawing.Size(472, 385);
			this.rptView.TabIndex = 0;
			// 
			// frmReportViewer
			// 
			this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
			this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
			this.ClientSize = new System.Drawing.Size(478, 391);
			this.Controls.Add(this.rptView);
			this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
			this.Name = "frmReportViewer";
			this.Padding = new System.Windows.Forms.Padding(3);
			this.ShowIcon = false;
			this.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent;
			this.Text = "MR Maintenance Report Viewer";
			this.WindowState = System.Windows.Forms.FormWindowState.Maximized;
			this.ResumeLayout(false);
		}
		private Microsoft.Reporting.WinForms.ReportViewer rptView;
	}
}

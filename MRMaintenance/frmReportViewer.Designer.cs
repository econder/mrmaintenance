/***************************************************************************************************
 * Class:   MRDbConnection.cs
 * Created By: Eric Conder
 * Created On: 8/4/2014
 * 
 * Changes:
 * 
 *
 * *************************************************************************************************/
 
namespace MRMaintenance.Reports
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
			this.reportPreview = new PdfSharp.Forms.PagePreview();
			this.SuspendLayout();
			// 
			// reportPreview
			// 
			this.reportPreview.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
									| System.Windows.Forms.AnchorStyles.Left) 
									| System.Windows.Forms.AnchorStyles.Right)));
			this.reportPreview.DesktopColor = System.Drawing.SystemColors.ControlDark;
			this.reportPreview.Location = new System.Drawing.Point(6, 6);
			this.reportPreview.Name = "reportPreview";
			this.reportPreview.PageColor = System.Drawing.Color.GhostWhite;
			this.reportPreview.PageSize = ((PdfSharp.Drawing.XSize)(resources.GetObject("reportPreview.PageSize")));
			this.reportPreview.PageSizeF = new System.Drawing.Size(595, 842);
			this.reportPreview.Size = new System.Drawing.Size(526, 396);
			this.reportPreview.TabIndex = 1;
			this.reportPreview.ZoomPercent = 32;
			// 
			// frmReportViewer
			// 
			this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
			this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
			this.ClientSize = new System.Drawing.Size(538, 408);
			this.Controls.Add(this.reportPreview);
			this.Name = "frmReportViewer";
			this.Padding = new System.Windows.Forms.Padding(3);
			this.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent;
			this.Text = "MR Maintenance Report Viewer";
			this.ResumeLayout(false);
		}
		private PdfSharp.Forms.PagePreview reportPreview;
	}
}

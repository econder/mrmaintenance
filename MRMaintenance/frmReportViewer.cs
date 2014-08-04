/***************************************************************************************************
 * Class:   	frmReportViewer.cs
 * Created By: 	Eric Conder
 * Created On: 	8/4/2014
 * 
 * Changes:
 * 
 *
 * *************************************************************************************************/
using System;
using System.Drawing;
using System.Windows.Forms;
using ICSharpCode.Reporting;
using ICSharpCode.Reporting.Items;
using ICSharpCode.Reporting.Pdf;

namespace MRMaintenance.Reports
{
	/// <summary>
	/// Description of frmReportViewer.
	/// </summary>
	public partial class frmReportViewer : Form
	{
		private ReportSettings reportSettings;
		
		
		public frmReportViewer()
		{
			InitializeComponent();
		}
		
		
		public frmReportViewer(string reportFileName)
		{
			InitializeComponent();
			
			ReportSettings rs = new ReportSettings();
			rs.FileName = reportFileName;
		}
	}
}

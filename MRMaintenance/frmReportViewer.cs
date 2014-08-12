/***************************************************************************************************
 * Class:   	frmReportViewer.cs
 * Created By: 	Eric Conder
 * Created On: 	8/12/2014
 * 
 * Changes:
 * 
 *
 * *************************************************************************************************/
using System;
using System.Drawing;
using System.Windows.Forms;

namespace MRMaintenance
{
	/// <summary>
	/// Description of frmReportViewer.
	/// </summary>
	public partial class frmReportViewer : Form
	{
		public frmReportViewer(string reportFileName)
		{
			InitializeComponent();
			
			rptView.ServerReport.ReportPath = string.Format("/{0}", reportFileName);
			rptView.ServerReport.ReportServerUrl = new Uri("http://ecvm-ww2014/reportserver");
			rptView.RefreshReport();
		}
	}
}

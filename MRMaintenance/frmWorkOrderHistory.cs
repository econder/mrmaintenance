/***************************************************************************************************
 * Class:   	frmWorkOrderHistory.cs
 * Created By: 	Eric Conder
 * Created On: 	8/4/2014
 * 
 * Changes:
 * 
 *
 * *************************************************************************************************/
using System;
using System.Data;
using System.Drawing;
using System.Windows.Forms;

using MRMaintenance.BusinessAccess;
using MRMaintenance.BusinessObjects;
using MRMaintenance.Data;


namespace MRMaintenance
{
	/// <summary>
	/// Description of frmWorkOrderHistory.
	/// </summary>
	public partial class frmWorkOrderHistory : Form
	{
		private WorkOrderHistoryBA woHistoryBA;
		
		
		public frmWorkOrderHistory()
		{
			InitializeComponent();
		}
		
		
		
	}
}

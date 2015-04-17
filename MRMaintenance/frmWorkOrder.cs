/***************************************************************************************************
 * Class:   	frmWorkOrder.cs
 * Created By: 	Eric Conder
 * Created On: 	10/13/2014
 * 
 * Changes:
 * 
 *
 * *************************************************************************************************/
using System;
using System.Collections.Generic;
using System.Data;
using System.Drawing;
using System.Windows.Forms;
using MRMaintenance.BusinessAccess;
using MRMaintenance.BusinessObjects;


namespace MRMaintenance
{
    public partial class frmWorkOrder : Form
    {
        private WorkOrder m_workOrder;
        private WorkOrderBA woBA;


        public frmWorkOrder(WorkOrder workOrder)
        {
            InitializeComponent();

            m_workOrder = workOrder;

            this.FillData();
        }

		
		private void FillData()
		{
            woBA = new WorkOrderBA();
            DataTable dt = woBA.Load(m_workOrder.ID);
			
			//Bind controls
			txtWoReqName.DataBindings.Add("Text", dt, "reqName", true, DataSourceUpdateMode.Never, "");
            numWoId.DataBindings.Add("Value", dt, "woID", true, DataSourceUpdateMode.Never, 0);
            numWoReqId.DataBindings.Add("Value", dt, "reqId", true, DataSourceUpdateMode.Never, 0);
            dtCreatedOn.DataBindings.Add("Value", dt, "woDateCreated", true, DataSourceUpdateMode.Never, null);
            dtDateDue.DataBindings.Add("Value", dt, "woDateDue", true, DataSourceUpdateMode.Never, null);
            chkComplete.DataBindings.Add("Checked", dt, "woComplete", true, DataSourceUpdateMode.Never, false);
            dtCompletedOn.DataBindings.Add("Value", dt, "woDateCompleted", true, DataSourceUpdateMode.Never, null);
            txtCompletedBy.DataBindings.Add("Text", dt, "woCompletedBy", true, DataSourceUpdateMode.Never, "");
            txtReqDesc.DataBindings.Add("Text", dt, "reqDescr", true, DataSourceUpdateMode.Never, "");
            txtNotes.DataBindings.Add("Text", dt, "woNotes", true, DataSourceUpdateMode.Never, "");
		}
		
		
		private void ResetControlBindings()
		{
			//Clear existing databindings for each control
			txtWoReqName.DataBindings.Clear();
            numWoId.DataBindings.Clear();
            numWoReqId.DataBindings.Clear();
            dtCreatedOn.DataBindings.Clear();
            dtDateDue.DataBindings.Clear();
            chkComplete.DataBindings.Clear();
            dtCompletedOn.DataBindings.Clear();
            txtCompletedBy.DataBindings.Clear();
            txtReqDesc.DataBindings.Clear();
            txtNotes.DataBindings.Clear();
			
			//Clear and reload datatable
			//dt.Clear();
			
			try
			{
				//Load database and re-bind all the controls
				this.FillData();
			}
			catch
			{
				throw;
			}
		}


        private void btnSave_Click(object sender, EventArgs e)
        {
            WorkOrder wo = new WorkOrder();
            wo.ID = m_workOrder.ID;
            wo.RequestID = (long)numWoReqId.Value;
            wo.DateCreated = dtCreatedOn.Value;
            wo.DateDue = dtDateDue.Value;
            wo.Complete = chkComplete.Checked;
            wo.CompletedBy = txtCompletedBy.Text;
            wo.DateCompleted = dtCompletedOn.Value;
            wo.Notes = txtNotes.Text;

            woBA.Update(wo);
        }


        private void btnClose_Click(object sender, EventArgs e)
        {
            this.Dispose();
        }
    }
}

namespace MRMaintenance
{
    partial class frmWorkOrder
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.label1 = new System.Windows.Forms.Label();
            this.txtWoReqName = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.dtCompletedOn = new System.Windows.Forms.DateTimePicker();
            this.txtCompletedBy = new System.Windows.Forms.TextBox();
            this.label5 = new System.Windows.Forms.Label();
            this.txtNotes = new System.Windows.Forms.TextBox();
            this.label6 = new System.Windows.Forms.Label();
            this.chkComplete = new System.Windows.Forms.CheckBox();
            this.btnSave = new System.Windows.Forms.Button();
            this.btnClose = new System.Windows.Forms.Button();
            this.dtCreatedOn = new System.Windows.Forms.DateTimePicker();
            this.numWoReqId = new System.Windows.Forms.NumericUpDown();
            this.txtReqDesc = new System.Windows.Forms.TextBox();
            this.label7 = new System.Windows.Forms.Label();
            this.numWoId = new System.Windows.Forms.NumericUpDown();
            this.label8 = new System.Windows.Forms.Label();
            this.dtDateDue = new System.Windows.Forms.DateTimePicker();
            this.label9 = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.numWoReqId)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.numWoId)).BeginInit();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(3, 7);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(136, 13);
            this.label1.TabIndex = 0;
            this.label1.Text = "Work Order Request Name";
            // 
            // txtWoReqName
            // 
            this.txtWoReqName.Location = new System.Drawing.Point(6, 23);
            this.txtWoReqName.Name = "txtWoReqName";
            this.txtWoReqName.Size = new System.Drawing.Size(339, 20);
            this.txtWoReqName.TabIndex = 1;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(348, 7);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(119, 13);
            this.label2.TabIndex = 2;
            this.label2.Text = "Work Order Request ID";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(3, 50);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(61, 13);
            this.label3.TabIndex = 4;
            this.label3.Text = "Created On";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(3, 120);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(74, 13);
            this.label4.TabIndex = 6;
            this.label4.Text = "Completed On";
            // 
            // dtCompletedOn
            // 
            this.dtCompletedOn.Format = System.Windows.Forms.DateTimePickerFormat.Short;
            this.dtCompletedOn.Location = new System.Drawing.Point(6, 136);
            this.dtCompletedOn.Name = "dtCompletedOn";
            this.dtCompletedOn.Size = new System.Drawing.Size(136, 20);
            this.dtCompletedOn.TabIndex = 7;
            // 
            // txtCompletedBy
            // 
            this.txtCompletedBy.Location = new System.Drawing.Point(148, 136);
            this.txtCompletedBy.Name = "txtCompletedBy";
            this.txtCompletedBy.Size = new System.Drawing.Size(179, 20);
            this.txtCompletedBy.TabIndex = 9;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(145, 120);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(72, 13);
            this.label5.TabIndex = 8;
            this.label5.Text = "Completed By";
            // 
            // txtNotes
            // 
            this.txtNotes.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.txtNotes.Location = new System.Drawing.Point(395, 179);
            this.txtNotes.Multiline = true;
            this.txtNotes.Name = "txtNotes";
            this.txtNotes.ScrollBars = System.Windows.Forms.ScrollBars.Both;
            this.txtNotes.Size = new System.Drawing.Size(267, 187);
            this.txtNotes.TabIndex = 11;
            // 
            // label6
            // 
            this.label6.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(395, 163);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(131, 13);
            this.label6.TabIndex = 10;
            this.label6.Text = "Work Notes/Observations";
            // 
            // chkComplete
            // 
            this.chkComplete.AutoSize = true;
            this.chkComplete.Location = new System.Drawing.Point(6, 96);
            this.chkComplete.Name = "chkComplete";
            this.chkComplete.Size = new System.Drawing.Size(70, 17);
            this.chkComplete.TabIndex = 12;
            this.chkComplete.Text = "Complete";
            this.chkComplete.UseVisualStyleBackColor = true;
            // 
            // btnSave
            // 
            this.btnSave.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right)));
            this.btnSave.Location = new System.Drawing.Point(506, 389);
            this.btnSave.Name = "btnSave";
            this.btnSave.Size = new System.Drawing.Size(75, 23);
            this.btnSave.TabIndex = 133;
            this.btnSave.Text = "&Save";
            this.btnSave.UseVisualStyleBackColor = true;
            this.btnSave.Click += new System.EventHandler(this.btnSave_Click);
            // 
            // btnClose
            // 
            this.btnClose.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right)));
            this.btnClose.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.btnClose.Location = new System.Drawing.Point(587, 389);
            this.btnClose.Name = "btnClose";
            this.btnClose.Size = new System.Drawing.Size(75, 23);
            this.btnClose.TabIndex = 132;
            this.btnClose.Text = "&Close";
            this.btnClose.UseVisualStyleBackColor = true;
            this.btnClose.Click += new System.EventHandler(this.btnClose_Click);
            // 
            // dtCreatedOn
            // 
            this.dtCreatedOn.Format = System.Windows.Forms.DateTimePickerFormat.Short;
            this.dtCreatedOn.Location = new System.Drawing.Point(6, 66);
            this.dtCreatedOn.Name = "dtCreatedOn";
            this.dtCreatedOn.Size = new System.Drawing.Size(136, 20);
            this.dtCreatedOn.TabIndex = 134;
            // 
            // numWoReqId
            // 
            this.numWoReqId.Enabled = false;
            this.numWoReqId.InterceptArrowKeys = false;
            this.numWoReqId.Location = new System.Drawing.Point(351, 23);
            this.numWoReqId.Maximum = new decimal(new int[] {
            -727379969,
            232,
            0,
            0});
            this.numWoReqId.Name = "numWoReqId";
            this.numWoReqId.Size = new System.Drawing.Size(119, 20);
            this.numWoReqId.TabIndex = 135;
            this.numWoReqId.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            // 
            // txtReqDesc
            // 
            this.txtReqDesc.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.txtReqDesc.Location = new System.Drawing.Point(6, 179);
            this.txtReqDesc.Multiline = true;
            this.txtReqDesc.Name = "txtReqDesc";
            this.txtReqDesc.ScrollBars = System.Windows.Forms.ScrollBars.Both;
            this.txtReqDesc.Size = new System.Drawing.Size(380, 187);
            this.txtReqDesc.TabIndex = 137;
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(3, 163);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(94, 13);
            this.label7.TabIndex = 136;
            this.label7.Text = "Work Order Tasks";
            // 
            // numWoId
            // 
            this.numWoId.Enabled = false;
            this.numWoId.InterceptArrowKeys = false;
            this.numWoId.Location = new System.Drawing.Point(546, 23);
            this.numWoId.Maximum = new decimal(new int[] {
            -727379969,
            232,
            0,
            0});
            this.numWoId.Name = "numWoId";
            this.numWoId.Size = new System.Drawing.Size(119, 20);
            this.numWoId.TabIndex = 139;
            this.numWoId.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(589, 7);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(76, 13);
            this.label8.TabIndex = 138;
            this.label8.Text = "Work Order ID";
            // 
            // dtDateDue
            // 
            this.dtDateDue.Enabled = false;
            this.dtDateDue.Format = System.Windows.Forms.DateTimePickerFormat.Short;
            this.dtDateDue.Location = new System.Drawing.Point(148, 66);
            this.dtDateDue.Name = "dtDateDue";
            this.dtDateDue.Size = new System.Drawing.Size(136, 20);
            this.dtDateDue.TabIndex = 141;
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Location = new System.Drawing.Point(145, 50);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(44, 13);
            this.label9.TabIndex = 140;
            this.label9.Text = "Due On";
            // 
            // frmWorkOrder
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.CancelButton = this.btnClose;
            this.ClientSize = new System.Drawing.Size(668, 418);
            this.Controls.Add(this.dtDateDue);
            this.Controls.Add(this.label9);
            this.Controls.Add(this.numWoId);
            this.Controls.Add(this.label8);
            this.Controls.Add(this.txtReqDesc);
            this.Controls.Add(this.label7);
            this.Controls.Add(this.numWoReqId);
            this.Controls.Add(this.dtCreatedOn);
            this.Controls.Add(this.btnSave);
            this.Controls.Add(this.btnClose);
            this.Controls.Add(this.chkComplete);
            this.Controls.Add(this.txtNotes);
            this.Controls.Add(this.label6);
            this.Controls.Add(this.txtCompletedBy);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.dtCompletedOn);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.txtWoReqName);
            this.Controls.Add(this.label1);
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.MinimumSize = new System.Drawing.Size(684, 450);
            this.Name = "frmWorkOrder";
            this.Padding = new System.Windows.Forms.Padding(3);
            this.ShowIcon = false;
            this.ShowInTaskbar = false;
            this.SizeGripStyle = System.Windows.Forms.SizeGripStyle.Hide;
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent;
            this.Text = "Work Order";
            ((System.ComponentModel.ISupportInitialize)(this.numWoReqId)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.numWoId)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox txtWoReqName;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.DateTimePicker dtCompletedOn;
        private System.Windows.Forms.TextBox txtCompletedBy;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.TextBox txtNotes;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.CheckBox chkComplete;
        private System.Windows.Forms.Button btnSave;
        private System.Windows.Forms.Button btnClose;
        private System.Windows.Forms.DateTimePicker dtCreatedOn;
        private System.Windows.Forms.NumericUpDown numWoReqId;
        private System.Windows.Forms.TextBox txtReqDesc;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.NumericUpDown numWoId;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.DateTimePicker dtDateDue;
        private System.Windows.Forms.Label label9;

    }
}
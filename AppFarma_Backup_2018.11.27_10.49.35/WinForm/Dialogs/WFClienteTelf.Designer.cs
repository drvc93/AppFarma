namespace AppFarma.WinForm.Dialogs
{
    partial class WFClienteTelf
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(WFClienteTelf));
            this.txtNumeroTelf = new Telerik.WinControls.UI.RadMaskedEditBox();
            this.btn_Cancel = new DevExpress.XtraEditors.SimpleButton();
            this.btnGuardar = new DevExpress.XtraEditors.SimpleButton();
            this.labelControl9 = new DevExpress.XtraEditors.LabelControl();
            this.labelControl5 = new DevExpress.XtraEditors.LabelControl();
            this.txtContacto = new System.Windows.Forms.TextBox();
            this.txtClienteDoc = new System.Windows.Forms.TextBox();
            this.txtClienteNomb = new System.Windows.Forms.TextBox();
            this.labelControl1 = new DevExpress.XtraEditors.LabelControl();
            this.labelControl2 = new DevExpress.XtraEditors.LabelControl();
            this.chkActivo = new DevExpress.XtraEditors.CheckEdit();
            ((System.ComponentModel.ISupportInitialize)(this.txtNumeroTelf)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.chkActivo.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // txtNumeroTelf
            // 
            this.txtNumeroTelf.Font = new System.Drawing.Font("Arial", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtNumeroTelf.Location = new System.Drawing.Point(117, 75);
            this.txtNumeroTelf.Mask = "9999999999999";
            this.txtNumeroTelf.MaskType = Telerik.WinControls.UI.MaskType.Standard;
            this.txtNumeroTelf.Name = "txtNumeroTelf";
            this.txtNumeroTelf.PromptChar = ' ';
            this.txtNumeroTelf.Size = new System.Drawing.Size(217, 25);
            this.txtNumeroTelf.TabIndex = 19;
            this.txtNumeroTelf.TabStop = false;
            this.txtNumeroTelf.Text = "_____________";
            // 
            // btn_Cancel
            // 
            this.btn_Cancel.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.btn_Cancel.ImageOptions.Image = global::AppFarma.Properties.Resources.icn_cancel;
            this.btn_Cancel.Location = new System.Drawing.Point(275, 198);
            this.btn_Cancel.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.btn_Cancel.Name = "btn_Cancel";
            this.btn_Cancel.Size = new System.Drawing.Size(93, 39);
            this.btn_Cancel.TabIndex = 20;
            this.btn_Cancel.Text = "Cancelar";
            this.btn_Cancel.Click += new System.EventHandler(this.btn_Cancel_Click);
            // 
            // btnGuardar
            // 
            this.btnGuardar.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.btnGuardar.ImageOptions.Image = global::AppFarma.Properties.Resources.icn_guardar;
            this.btnGuardar.Location = new System.Drawing.Point(175, 198);
            this.btnGuardar.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.btnGuardar.Name = "btnGuardar";
            this.btnGuardar.Size = new System.Drawing.Size(94, 39);
            this.btnGuardar.TabIndex = 21;
            this.btnGuardar.Text = "Guardar";
            this.btnGuardar.Click += new System.EventHandler(this.btnGuardar_Click_1);
            // 
            // labelControl9
            // 
            this.labelControl9.Appearance.Font = new System.Drawing.Font("Tahoma", 9F, System.Drawing.FontStyle.Bold);
            this.labelControl9.Appearance.ForeColor = System.Drawing.Color.MidnightBlue;
            this.labelControl9.Appearance.Options.UseFont = true;
            this.labelControl9.Appearance.Options.UseForeColor = true;
            this.labelControl9.LineStyle = System.Drawing.Drawing2D.DashStyle.Dash;
            this.labelControl9.LineVisible = true;
            this.labelControl9.Location = new System.Drawing.Point(46, 82);
            this.labelControl9.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.labelControl9.Name = "labelControl9";
            this.labelControl9.Size = new System.Drawing.Size(59, 18);
            this.labelControl9.TabIndex = 33;
            this.labelControl9.Text = "Numero";
            // 
            // labelControl5
            // 
            this.labelControl5.Appearance.Font = new System.Drawing.Font("Tahoma", 9F, System.Drawing.FontStyle.Bold);
            this.labelControl5.Appearance.ForeColor = System.Drawing.Color.MidnightBlue;
            this.labelControl5.Appearance.Options.UseFont = true;
            this.labelControl5.Appearance.Options.UseForeColor = true;
            this.labelControl5.LineStyle = System.Drawing.Drawing2D.DashStyle.Dash;
            this.labelControl5.LineVisible = true;
            this.labelControl5.Location = new System.Drawing.Point(39, 119);
            this.labelControl5.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.labelControl5.Name = "labelControl5";
            this.labelControl5.Size = new System.Drawing.Size(66, 18);
            this.labelControl5.TabIndex = 35;
            this.labelControl5.Text = "Contacto";
            // 
            // txtContacto
            // 
            this.txtContacto.Font = new System.Drawing.Font("Arial", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtContacto.Location = new System.Drawing.Point(117, 116);
            this.txtContacto.Name = "txtContacto";
            this.txtContacto.Size = new System.Drawing.Size(218, 27);
            this.txtContacto.TabIndex = 34;
            // 
            // txtClienteDoc
            // 
            this.txtClienteDoc.Enabled = false;
            this.txtClienteDoc.Font = new System.Drawing.Font("Arial", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtClienteDoc.Location = new System.Drawing.Point(116, 30);
            this.txtClienteDoc.Name = "txtClienteDoc";
            this.txtClienteDoc.Size = new System.Drawing.Size(110, 27);
            this.txtClienteDoc.TabIndex = 36;
            // 
            // txtClienteNomb
            // 
            this.txtClienteNomb.Enabled = false;
            this.txtClienteNomb.Font = new System.Drawing.Font("Arial", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtClienteNomb.Location = new System.Drawing.Point(242, 30);
            this.txtClienteNomb.Name = "txtClienteNomb";
            this.txtClienteNomb.Size = new System.Drawing.Size(255, 27);
            this.txtClienteNomb.TabIndex = 37;
            // 
            // labelControl1
            // 
            this.labelControl1.Appearance.Font = new System.Drawing.Font("Tahoma", 9F, System.Drawing.FontStyle.Bold);
            this.labelControl1.Appearance.ForeColor = System.Drawing.Color.MidnightBlue;
            this.labelControl1.Appearance.Options.UseFont = true;
            this.labelControl1.Appearance.Options.UseForeColor = true;
            this.labelControl1.LineStyle = System.Drawing.Drawing2D.DashStyle.Dash;
            this.labelControl1.LineVisible = true;
            this.labelControl1.Location = new System.Drawing.Point(52, 30);
            this.labelControl1.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.labelControl1.Name = "labelControl1";
            this.labelControl1.Size = new System.Drawing.Size(53, 18);
            this.labelControl1.TabIndex = 38;
            this.labelControl1.Text = "Cliente";
            // 
            // labelControl2
            // 
            this.labelControl2.Appearance.Font = new System.Drawing.Font("Tahoma", 9F, System.Drawing.FontStyle.Bold);
            this.labelControl2.Appearance.ForeColor = System.Drawing.Color.MidnightBlue;
            this.labelControl2.Appearance.Options.UseFont = true;
            this.labelControl2.Appearance.Options.UseForeColor = true;
            this.labelControl2.LineStyle = System.Drawing.Drawing2D.DashStyle.Dash;
            this.labelControl2.LineVisible = true;
            this.labelControl2.Location = new System.Drawing.Point(58, 154);
            this.labelControl2.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.labelControl2.Name = "labelControl2";
            this.labelControl2.Size = new System.Drawing.Size(47, 18);
            this.labelControl2.TabIndex = 40;
            this.labelControl2.Text = "Activo";
            // 
            // chkActivo
            // 
            this.chkActivo.EditValue = true;
            this.chkActivo.Enabled = false;
            this.chkActivo.Location = new System.Drawing.Point(117, 153);
            this.chkActivo.Name = "chkActivo";
            this.chkActivo.Properties.Caption = "";
            this.chkActivo.Size = new System.Drawing.Size(66, 19);
            this.chkActivo.TabIndex = 39;
            // 
            // WFClienteTelf
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(522, 273);
            this.Controls.Add(this.labelControl2);
            this.Controls.Add(this.chkActivo);
            this.Controls.Add(this.labelControl1);
            this.Controls.Add(this.txtClienteNomb);
            this.Controls.Add(this.txtClienteDoc);
            this.Controls.Add(this.labelControl5);
            this.Controls.Add(this.txtContacto);
            this.Controls.Add(this.labelControl9);
            this.Controls.Add(this.btn_Cancel);
            this.Controls.Add(this.btnGuardar);
            this.Controls.Add(this.txtNumeroTelf);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.MaximizeBox = false;
            this.MaximumSize = new System.Drawing.Size(540, 320);
            this.MinimizeBox = false;
            this.MinimumSize = new System.Drawing.Size(540, 320);
            this.Name = "WFClienteTelf";
            this.Text = "Telefonos Cliente";
            this.Load += new System.EventHandler(this.WFClienteTelf_Load);
            ((System.ComponentModel.ISupportInitialize)(this.txtNumeroTelf)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.chkActivo.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private DevExpress.XtraEditors.SimpleButton btn_Cancel;
        private DevExpress.XtraEditors.SimpleButton btnGuardar;
        private DevExpress.XtraEditors.LabelControl labelControl9;
        private DevExpress.XtraEditors.LabelControl labelControl5;
        private System.Windows.Forms.TextBox txtClienteDoc;
        private System.Windows.Forms.TextBox txtClienteNomb;
        private DevExpress.XtraEditors.LabelControl labelControl1;
        private DevExpress.XtraEditors.LabelControl labelControl2;
        public Telerik.WinControls.UI.RadMaskedEditBox txtNumeroTelf;
        public System.Windows.Forms.TextBox txtContacto;
        public DevExpress.XtraEditors.CheckEdit chkActivo;
    }
}
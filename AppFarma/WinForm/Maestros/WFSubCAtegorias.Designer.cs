namespace AppFarma.WinForm.Maestros
{
    partial class WFSubCategorias
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
            this.panelSub = new Telerik.WinControls.UI.RadPanel();
            this.textBox1 = new System.Windows.Forms.TextBox();
            this.labelControl2 = new DevExpress.XtraEditors.LabelControl();
            this.labelControl1 = new DevExpress.XtraEditors.LabelControl();
            this.cboCat = new System.Windows.Forms.ComboBox();
            this.gvCategorias = new DevExpress.XtraGrid.GridControl();
            this.gridView1 = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.n_categoria = new DevExpress.XtraGrid.Columns.GridColumn();
            this.c_descripcion = new DevExpress.XtraGrid.Columns.GridColumn();
            this.c_usuarioregistro = new DevExpress.XtraGrid.Columns.GridColumn();
            this.c_ultimafechamod = new DevExpress.XtraGrid.Columns.GridColumn();
            this.textEdit1 = new DevExpress.XtraEditors.TextEdit();
            this.textEdit2 = new DevExpress.XtraEditors.TextEdit();
            this.textEdit3 = new DevExpress.XtraEditors.TextEdit();
            this.labelControl3 = new DevExpress.XtraEditors.LabelControl();
            this.labelControl4 = new DevExpress.XtraEditors.LabelControl();
            this.labelControl5 = new DevExpress.XtraEditors.LabelControl();
            this.btn_Cancel = new DevExpress.XtraEditors.SimpleButton();
            this.btnGuardar = new DevExpress.XtraEditors.SimpleButton();
            this.checkEdit1 = new DevExpress.XtraEditors.CheckEdit();
            this.labelControl6 = new DevExpress.XtraEditors.LabelControl();
            ((System.ComponentModel.ISupportInitialize)(this.panelSub)).BeginInit();
            this.panelSub.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.gvCategorias)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit1.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit2.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit3.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.checkEdit1.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // panelSub
            // 
            this.panelSub.Controls.Add(this.labelControl6);
            this.panelSub.Controls.Add(this.checkEdit1);
            this.panelSub.Controls.Add(this.btn_Cancel);
            this.panelSub.Controls.Add(this.btnGuardar);
            this.panelSub.Controls.Add(this.labelControl5);
            this.panelSub.Controls.Add(this.labelControl4);
            this.panelSub.Controls.Add(this.labelControl3);
            this.panelSub.Controls.Add(this.textEdit3);
            this.panelSub.Controls.Add(this.textEdit2);
            this.panelSub.Controls.Add(this.textEdit1);
            this.panelSub.Controls.Add(this.textBox1);
            this.panelSub.Controls.Add(this.labelControl2);
            this.panelSub.Controls.Add(this.labelControl1);
            this.panelSub.Controls.Add(this.cboCat);
            this.panelSub.Location = new System.Drawing.Point(12, 12);
            this.panelSub.Name = "panelSub";
            this.panelSub.Size = new System.Drawing.Size(336, 333);
            this.panelSub.TabIndex = 0;
            // 
            // textBox1
            // 
            this.textBox1.Location = new System.Drawing.Point(95, 10);
            this.textBox1.Name = "textBox1";
            this.textBox1.Size = new System.Drawing.Size(225, 21);
            this.textBox1.TabIndex = 4;
            // 
            // labelControl2
            // 
            this.labelControl2.Appearance.Font = new System.Drawing.Font("Tahoma", 9F, System.Drawing.FontStyle.Bold);
            this.labelControl2.Appearance.ForeColor = System.Drawing.Color.MidnightBlue;
            this.labelControl2.Appearance.Options.UseFont = true;
            this.labelControl2.Appearance.Options.UseForeColor = true;
            this.labelControl2.Location = new System.Drawing.Point(37, 12);
            this.labelControl2.Name = "labelControl2";
            this.labelControl2.Size = new System.Drawing.Size(47, 14);
            this.labelControl2.TabIndex = 3;
            this.labelControl2.Text = "Codigo ";
            // 
            // labelControl1
            // 
            this.labelControl1.Appearance.Font = new System.Drawing.Font("Tahoma", 9F, System.Drawing.FontStyle.Bold);
            this.labelControl1.Appearance.ForeColor = System.Drawing.Color.MidnightBlue;
            this.labelControl1.Appearance.Options.UseFont = true;
            this.labelControl1.Appearance.Options.UseForeColor = true;
            this.labelControl1.Location = new System.Drawing.Point(25, 49);
            this.labelControl1.Name = "labelControl1";
            this.labelControl1.Size = new System.Drawing.Size(59, 14);
            this.labelControl1.TabIndex = 2;
            this.labelControl1.Text = "Categoria";
            // 
            // cboCat
            // 
            this.cboCat.FormattingEnabled = true;
            this.cboCat.Location = new System.Drawing.Point(95, 42);
            this.cboCat.Name = "cboCat";
            this.cboCat.Size = new System.Drawing.Size(225, 21);
            this.cboCat.TabIndex = 0;
            // 
            // gvCategorias
            // 
            this.gvCategorias.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.gvCategorias.Location = new System.Drawing.Point(354, 12);
            this.gvCategorias.MainView = this.gridView1;
            this.gvCategorias.Name = "gvCategorias";
            this.gvCategorias.Size = new System.Drawing.Size(619, 503);
            this.gvCategorias.TabIndex = 1;
            this.gvCategorias.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gridView1});
            // 
            // gridView1
            // 
            this.gridView1.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.n_categoria,
            this.c_descripcion,
            this.c_usuarioregistro,
            this.c_ultimafechamod});
            this.gridView1.GridControl = this.gvCategorias;
            this.gridView1.Name = "gridView1";
            // 
            // n_categoria
            // 
            this.n_categoria.Caption = "Codigo";
            this.n_categoria.FieldName = "n_categoria";
            this.n_categoria.Name = "n_categoria";
            this.n_categoria.OptionsColumn.AllowEdit = false;
            this.n_categoria.Visible = true;
            this.n_categoria.VisibleIndex = 0;
            // 
            // c_descripcion
            // 
            this.c_descripcion.Caption = "Descripción";
            this.c_descripcion.FieldName = "c_descripcion";
            this.c_descripcion.Name = "c_descripcion";
            this.c_descripcion.OptionsColumn.AllowEdit = false;
            this.c_descripcion.Visible = true;
            this.c_descripcion.VisibleIndex = 1;
            // 
            // c_usuarioregistro
            // 
            this.c_usuarioregistro.Caption = "Usuario Registro";
            this.c_usuarioregistro.FieldName = "c_usuarioregistro";
            this.c_usuarioregistro.Name = "c_usuarioregistro";
            this.c_usuarioregistro.OptionsColumn.AllowEdit = false;
            this.c_usuarioregistro.Visible = true;
            this.c_usuarioregistro.VisibleIndex = 2;
            // 
            // c_ultimafechamod
            // 
            this.c_ultimafechamod.Caption = "Ult.Fecha Mod.";
            this.c_ultimafechamod.FieldName = "c_ultimafechamod";
            this.c_ultimafechamod.Name = "c_ultimafechamod";
            this.c_ultimafechamod.Visible = true;
            this.c_ultimafechamod.VisibleIndex = 3;
            // 
            // textEdit1
            // 
            this.textEdit1.Location = new System.Drawing.Point(96, 72);
            this.textEdit1.Name = "textEdit1";
            this.textEdit1.Properties.Appearance.Font = new System.Drawing.Font("Tahoma", 10F);
            this.textEdit1.Properties.Appearance.Options.UseFont = true;
            this.textEdit1.Size = new System.Drawing.Size(225, 22);
            this.textEdit1.TabIndex = 5;
            // 
            // textEdit2
            // 
            this.textEdit2.Location = new System.Drawing.Point(95, 103);
            this.textEdit2.Name = "textEdit2";
            this.textEdit2.Properties.Appearance.Font = new System.Drawing.Font("Tahoma", 10F);
            this.textEdit2.Properties.Appearance.Options.UseFont = true;
            this.textEdit2.Size = new System.Drawing.Size(225, 22);
            this.textEdit2.TabIndex = 6;
            // 
            // textEdit3
            // 
            this.textEdit3.Location = new System.Drawing.Point(95, 139);
            this.textEdit3.Name = "textEdit3";
            this.textEdit3.Properties.Appearance.Font = new System.Drawing.Font("Tahoma", 10F);
            this.textEdit3.Properties.Appearance.Options.UseFont = true;
            this.textEdit3.Size = new System.Drawing.Size(225, 22);
            this.textEdit3.TabIndex = 7;
            // 
            // labelControl3
            // 
            this.labelControl3.Appearance.Font = new System.Drawing.Font("Tahoma", 9F, System.Drawing.FontStyle.Bold);
            this.labelControl3.Appearance.ForeColor = System.Drawing.Color.MidnightBlue;
            this.labelControl3.Appearance.Options.UseFont = true;
            this.labelControl3.Appearance.Options.UseForeColor = true;
            this.labelControl3.Location = new System.Drawing.Point(15, 80);
            this.labelControl3.Name = "labelControl3";
            this.labelControl3.Size = new System.Drawing.Size(69, 14);
            this.labelControl3.TabIndex = 8;
            this.labelControl3.Text = "Descripcion";
            // 
            // labelControl4
            // 
            this.labelControl4.Appearance.Font = new System.Drawing.Font("Tahoma", 9F, System.Drawing.FontStyle.Bold);
            this.labelControl4.Appearance.ForeColor = System.Drawing.Color.MidnightBlue;
            this.labelControl4.Appearance.Options.UseFont = true;
            this.labelControl4.Appearance.Options.UseForeColor = true;
            this.labelControl4.Location = new System.Drawing.Point(18, 111);
            this.labelControl4.Name = "labelControl4";
            this.labelControl4.Size = new System.Drawing.Size(66, 14);
            this.labelControl4.TabIndex = 9;
            this.labelControl4.Text = "Ult.Usuario";
            // 
            // labelControl5
            // 
            this.labelControl5.Appearance.Font = new System.Drawing.Font("Tahoma", 9F, System.Drawing.FontStyle.Bold);
            this.labelControl5.Appearance.ForeColor = System.Drawing.Color.MidnightBlue;
            this.labelControl5.Appearance.Options.UseFont = true;
            this.labelControl5.Appearance.Options.UseForeColor = true;
            this.labelControl5.Location = new System.Drawing.Point(19, 143);
            this.labelControl5.Name = "labelControl5";
            this.labelControl5.Size = new System.Drawing.Size(55, 14);
            this.labelControl5.TabIndex = 10;
            this.labelControl5.Text = "Ult.Fecha";
            // 
            // btn_Cancel
            // 
            this.btn_Cancel.ImageOptions.Image = global::AppFarma.Properties.Resources.icn_cancel;
            this.btn_Cancel.Location = new System.Drawing.Point(185, 229);
            this.btn_Cancel.Name = "btn_Cancel";
            this.btn_Cancel.Size = new System.Drawing.Size(84, 32);
            this.btn_Cancel.TabIndex = 11;
            this.btn_Cancel.Text = "Cancelar";
            // 
            // btnGuardar
            // 
            this.btnGuardar.Enabled = false;
            this.btnGuardar.ImageOptions.Image = global::AppFarma.Properties.Resources.icn_guardar;
            this.btnGuardar.Location = new System.Drawing.Point(95, 229);
            this.btnGuardar.Name = "btnGuardar";
            this.btnGuardar.Size = new System.Drawing.Size(84, 32);
            this.btnGuardar.TabIndex = 12;
            this.btnGuardar.Text = "Guardar";
            this.btnGuardar.Click += new System.EventHandler(this.btnGuardar_Click);
            // 
            // checkEdit1
            // 
            this.checkEdit1.Location = new System.Drawing.Point(95, 182);
            this.checkEdit1.Name = "checkEdit1";
            this.checkEdit1.Properties.Caption = "Activo";
            this.checkEdit1.Size = new System.Drawing.Size(75, 19);
            this.checkEdit1.TabIndex = 13;
            // 
            // labelControl6
            // 
            this.labelControl6.Appearance.Font = new System.Drawing.Font("Tahoma", 9F, System.Drawing.FontStyle.Bold);
            this.labelControl6.Appearance.ForeColor = System.Drawing.Color.MidnightBlue;
            this.labelControl6.Appearance.Options.UseFont = true;
            this.labelControl6.Appearance.Options.UseForeColor = true;
            this.labelControl6.Location = new System.Drawing.Point(29, 187);
            this.labelControl6.Name = "labelControl6";
            this.labelControl6.Size = new System.Drawing.Size(42, 14);
            this.labelControl6.TabIndex = 14;
            this.labelControl6.Text = "Estado";
            // 
            // WFSubCategorias
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(985, 527);
            this.Controls.Add(this.gvCategorias);
            this.Controls.Add(this.panelSub);
            this.Name = "WFSubCategorias";
            this.Text = "WFSubCAtegorias";
            ((System.ComponentModel.ISupportInitialize)(this.panelSub)).EndInit();
            this.panelSub.ResumeLayout(false);
            this.panelSub.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.gvCategorias)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit1.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit2.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit3.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.checkEdit1.Properties)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private Telerik.WinControls.UI.RadPanel panelSub;
        private DevExpress.XtraGrid.GridControl gvCategorias;
        private DevExpress.XtraGrid.Views.Grid.GridView gridView1;
        private DevExpress.XtraGrid.Columns.GridColumn n_categoria;
        private DevExpress.XtraGrid.Columns.GridColumn c_descripcion;
        private DevExpress.XtraGrid.Columns.GridColumn c_usuarioregistro;
        private DevExpress.XtraGrid.Columns.GridColumn c_ultimafechamod;
        private System.Windows.Forms.ComboBox cboCat;
        private System.Windows.Forms.TextBox textBox1;
        private DevExpress.XtraEditors.LabelControl labelControl2;
        private DevExpress.XtraEditors.LabelControl labelControl1;
        private DevExpress.XtraEditors.TextEdit textEdit1;
        private DevExpress.XtraEditors.LabelControl labelControl5;
        private DevExpress.XtraEditors.LabelControl labelControl4;
        private DevExpress.XtraEditors.LabelControl labelControl3;
        private DevExpress.XtraEditors.TextEdit textEdit3;
        private DevExpress.XtraEditors.TextEdit textEdit2;
        private DevExpress.XtraEditors.SimpleButton btn_Cancel;
        private DevExpress.XtraEditors.SimpleButton btnGuardar;
        private DevExpress.XtraEditors.LabelControl labelControl6;
        private DevExpress.XtraEditors.CheckEdit checkEdit1;
    }
}
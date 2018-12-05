namespace AppFarma.WinForm.Maestros
{
    partial class WPrincipActiv
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
            this.gvPrincipActiv = new DevExpress.XtraGrid.GridControl();
            this.gridView1 = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.n_categoria = new DevExpress.XtraGrid.Columns.GridColumn();
            this.c_descripcion = new DevExpress.XtraGrid.Columns.GridColumn();
            this.c_usuarioregistro = new DevExpress.XtraGrid.Columns.GridColumn();
            this.c_ultimafechamod = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn1 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.btn_Cancel = new DevExpress.XtraEditors.SimpleButton();
            this.btnGuardar = new DevExpress.XtraEditors.SimpleButton();
            this.txtUltimaFecha = new DevExpress.XtraEditors.TextEdit();
            this.txtUltimoUsuario = new DevExpress.XtraEditors.TextEdit();
            this.txtDescripcion = new DevExpress.XtraEditors.TextEdit();
            this.btnModificar = new DevExpress.XtraEditors.SimpleButton();
            this.btnNuevo = new DevExpress.XtraEditors.SimpleButton();
            this.txtCodPrincipio = new DevExpress.XtraEditors.TextEdit();
            this.radPanel1 = new Telerik.WinControls.UI.RadPanel();
            this.labelControl7 = new DevExpress.XtraEditors.LabelControl();
            this.chkEstadoPrincipio = new DevExpress.XtraEditors.CheckEdit();
            this.labelControl4 = new DevExpress.XtraEditors.LabelControl();
            this.labelControl3 = new DevExpress.XtraEditors.LabelControl();
            this.labelControl2 = new DevExpress.XtraEditors.LabelControl();
            this.labelControl1 = new DevExpress.XtraEditors.LabelControl();
            this.repositoryItemCheckEdit1 = new DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit();
            ((System.ComponentModel.ISupportInitialize)(this.gvPrincipActiv)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtUltimaFecha.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtUltimoUsuario.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtDescripcion.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtCodPrincipio.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.radPanel1)).BeginInit();
            this.radPanel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.chkEstadoPrincipio.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemCheckEdit1)).BeginInit();
            this.SuspendLayout();
            // 
            // gvPrincipActiv
            // 
            this.gvPrincipActiv.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.gvPrincipActiv.EmbeddedNavigator.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.gvPrincipActiv.Location = new System.Drawing.Point(432, 57);
            this.gvPrincipActiv.MainView = this.gridView1;
            this.gvPrincipActiv.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.gvPrincipActiv.Name = "gvPrincipActiv";
            this.gvPrincipActiv.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.repositoryItemCheckEdit1});
            this.gvPrincipActiv.Size = new System.Drawing.Size(1007, 416);
            this.gvPrincipActiv.TabIndex = 9;
            this.gvPrincipActiv.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gridView1});
            // 
            // gridView1
            // 
            this.gridView1.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.n_categoria,
            this.c_descripcion,
            this.c_usuarioregistro,
            this.c_ultimafechamod,
            this.gridColumn1});
            this.gridView1.GridControl = this.gvPrincipActiv;
            this.gridView1.Name = "gridView1";
            this.gridView1.OptionsBehavior.Editable = false;
            this.gridView1.Click += new System.EventHandler(this.gridView1_Click);
            // 
            // n_categoria
            // 
            this.n_categoria.Caption = "Codigo";
            this.n_categoria.FieldName = "n_codigoprincipoact";
            this.n_categoria.Name = "n_categoria";
            this.n_categoria.OptionsColumn.AllowEdit = false;
            this.n_categoria.OptionsColumn.ReadOnly = true;
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
            this.c_usuarioregistro.FieldName = "c_usuarioreg";
            this.c_usuarioregistro.Name = "c_usuarioregistro";
            this.c_usuarioregistro.OptionsColumn.AllowEdit = false;
            this.c_usuarioregistro.Visible = true;
            this.c_usuarioregistro.VisibleIndex = 2;
            // 
            // c_ultimafechamod
            // 
            this.c_ultimafechamod.Caption = "Fecha Reg.";
            this.c_ultimafechamod.FieldName = "d_fecharegistro";
            this.c_ultimafechamod.Name = "c_ultimafechamod";
            this.c_ultimafechamod.Visible = true;
            this.c_ultimafechamod.VisibleIndex = 3;
            // 
            // gridColumn1
            // 
            this.gridColumn1.Caption = "Estado";
            this.gridColumn1.ColumnEdit = this.repositoryItemCheckEdit1;
            this.gridColumn1.FieldName = "c_estado";
            this.gridColumn1.Name = "gridColumn1";
            this.gridColumn1.Visible = true;
            this.gridColumn1.VisibleIndex = 4;
            // 
            // btn_Cancel
            // 
            this.btn_Cancel.ImageOptions.Image = global::AppFarma.Properties.Resources.icn_cancel;
            this.btn_Cancel.Location = new System.Drawing.Point(250, 318);
            this.btn_Cancel.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.btn_Cancel.Name = "btn_Cancel";
            this.btn_Cancel.Size = new System.Drawing.Size(98, 39);
            this.btn_Cancel.TabIndex = 13;
            this.btn_Cancel.Text = "Cancelar";
            // 
            // btnGuardar
            // 
            this.btnGuardar.Enabled = false;
            this.btnGuardar.ImageOptions.Image = global::AppFarma.Properties.Resources.icn_guardar;
            this.btnGuardar.Location = new System.Drawing.Point(145, 318);
            this.btnGuardar.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.btnGuardar.Name = "btnGuardar";
            this.btnGuardar.Size = new System.Drawing.Size(98, 39);
            this.btnGuardar.TabIndex = 17;
            this.btnGuardar.Text = "Guardar";
            this.btnGuardar.Click += new System.EventHandler(this.btnGuardar_Click);
            // 
            // txtUltimaFecha
            // 
            this.txtUltimaFecha.Enabled = false;
            this.txtUltimaFecha.Location = new System.Drawing.Point(135, 227);
            this.txtUltimaFecha.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.txtUltimaFecha.Name = "txtUltimaFecha";
            this.txtUltimaFecha.Properties.Appearance.Font = new System.Drawing.Font("Tahoma", 12F);
            this.txtUltimaFecha.Properties.Appearance.Options.UseFont = true;
            this.txtUltimaFecha.Size = new System.Drawing.Size(248, 30);
            this.txtUltimaFecha.TabIndex = 16;
            // 
            // txtUltimoUsuario
            // 
            this.txtUltimoUsuario.Enabled = false;
            this.txtUltimoUsuario.Location = new System.Drawing.Point(135, 176);
            this.txtUltimoUsuario.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.txtUltimoUsuario.Name = "txtUltimoUsuario";
            this.txtUltimoUsuario.Properties.Appearance.Font = new System.Drawing.Font("Tahoma", 12F);
            this.txtUltimoUsuario.Properties.Appearance.Options.UseFont = true;
            this.txtUltimoUsuario.Size = new System.Drawing.Size(248, 30);
            this.txtUltimoUsuario.TabIndex = 14;
            // 
            // txtDescripcion
            // 
            this.txtDescripcion.Enabled = false;
            this.txtDescripcion.Location = new System.Drawing.Point(135, 122);
            this.txtDescripcion.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.txtDescripcion.Name = "txtDescripcion";
            this.txtDescripcion.Properties.Appearance.Font = new System.Drawing.Font("Tahoma", 12F);
            this.txtDescripcion.Properties.Appearance.Options.UseFont = true;
            this.txtDescripcion.Size = new System.Drawing.Size(248, 30);
            this.txtDescripcion.TabIndex = 11;
            // 
            // btnModificar
            // 
            this.btnModificar.ImageOptions.Image = global::AppFarma.Properties.Resources.icn_modificar;
            this.btnModificar.Location = new System.Drawing.Point(547, 13);
            this.btnModificar.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.btnModificar.Name = "btnModificar";
            this.btnModificar.Size = new System.Drawing.Size(120, 39);
            this.btnModificar.TabIndex = 15;
            this.btnModificar.Text = "Modificar";
            this.btnModificar.Click += new System.EventHandler(this.btnModificar_Click);
            // 
            // btnNuevo
            // 
            this.btnNuevo.ImageOptions.Image = global::AppFarma.Properties.Resources.icn_agregar;
            this.btnNuevo.Location = new System.Drawing.Point(432, 13);
            this.btnNuevo.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.btnNuevo.Name = "btnNuevo";
            this.btnNuevo.Size = new System.Drawing.Size(109, 39);
            this.btnNuevo.TabIndex = 12;
            this.btnNuevo.Text = "Nuevo";
            this.btnNuevo.Click += new System.EventHandler(this.btnNuevo_Click);
            // 
            // txtCodPrincipio
            // 
            this.txtCodPrincipio.Enabled = false;
            this.txtCodPrincipio.Location = new System.Drawing.Point(135, 75);
            this.txtCodPrincipio.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.txtCodPrincipio.Name = "txtCodPrincipio";
            this.txtCodPrincipio.Properties.Appearance.Font = new System.Drawing.Font("Tahoma", 12F);
            this.txtCodPrincipio.Properties.Appearance.Options.UseFont = true;
            this.txtCodPrincipio.Size = new System.Drawing.Size(154, 30);
            this.txtCodPrincipio.TabIndex = 10;
            // 
            // radPanel1
            // 
            this.radPanel1.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left)));
            this.radPanel1.Controls.Add(this.labelControl7);
            this.radPanel1.Controls.Add(this.chkEstadoPrincipio);
            this.radPanel1.Controls.Add(this.labelControl4);
            this.radPanel1.Controls.Add(this.labelControl3);
            this.radPanel1.Controls.Add(this.btn_Cancel);
            this.radPanel1.Controls.Add(this.labelControl2);
            this.radPanel1.Controls.Add(this.btnGuardar);
            this.radPanel1.Controls.Add(this.labelControl1);
            this.radPanel1.Controls.Add(this.txtUltimaFecha);
            this.radPanel1.Controls.Add(this.txtCodPrincipio);
            this.radPanel1.Controls.Add(this.txtUltimoUsuario);
            this.radPanel1.Controls.Add(this.txtDescripcion);
            this.radPanel1.Location = new System.Drawing.Point(12, 13);
            this.radPanel1.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.radPanel1.Name = "radPanel1";
            this.radPanel1.Size = new System.Drawing.Size(414, 460);
            this.radPanel1.TabIndex = 18;
            // 
            // labelControl7
            // 
            this.labelControl7.Appearance.Font = new System.Drawing.Font("Tahoma", 9F, System.Drawing.FontStyle.Bold);
            this.labelControl7.Appearance.ForeColor = System.Drawing.Color.MidnightBlue;
            this.labelControl7.Appearance.Options.UseFont = true;
            this.labelControl7.Appearance.Options.UseForeColor = true;
            this.labelControl7.Location = new System.Drawing.Point(62, 279);
            this.labelControl7.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.labelControl7.Name = "labelControl7";
            this.labelControl7.Size = new System.Drawing.Size(50, 18);
            this.labelControl7.TabIndex = 19;
            this.labelControl7.Text = "Estado";
            // 
            // chkEstadoPrincipio
            // 
            this.chkEstadoPrincipio.Location = new System.Drawing.Point(135, 279);
            this.chkEstadoPrincipio.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.chkEstadoPrincipio.Name = "chkEstadoPrincipio";
            this.chkEstadoPrincipio.Properties.Caption = "Activo";
            this.chkEstadoPrincipio.Size = new System.Drawing.Size(87, 20);
            this.chkEstadoPrincipio.TabIndex = 18;
            // 
            // labelControl4
            // 
            this.labelControl4.Appearance.Font = new System.Drawing.Font("Tahoma", 9F, System.Drawing.FontStyle.Bold);
            this.labelControl4.Appearance.ForeColor = System.Drawing.Color.MidnightBlue;
            this.labelControl4.Appearance.Options.UseFont = true;
            this.labelControl4.Appearance.Options.UseForeColor = true;
            this.labelControl4.Location = new System.Drawing.Point(40, 239);
            this.labelControl4.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.labelControl4.Name = "labelControl4";
            this.labelControl4.Size = new System.Drawing.Size(71, 18);
            this.labelControl4.TabIndex = 7;
            this.labelControl4.Text = "Ult.Fecha";
            // 
            // labelControl3
            // 
            this.labelControl3.Appearance.Font = new System.Drawing.Font("Tahoma", 9F, System.Drawing.FontStyle.Bold);
            this.labelControl3.Appearance.ForeColor = System.Drawing.Color.MidnightBlue;
            this.labelControl3.Appearance.Options.UseFont = true;
            this.labelControl3.Appearance.Options.UseForeColor = true;
            this.labelControl3.Location = new System.Drawing.Point(27, 188);
            this.labelControl3.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.labelControl3.Name = "labelControl3";
            this.labelControl3.Size = new System.Drawing.Size(85, 18);
            this.labelControl3.TabIndex = 5;
            this.labelControl3.Text = "Ult.Usuario";
            // 
            // labelControl2
            // 
            this.labelControl2.Appearance.Font = new System.Drawing.Font("Tahoma", 9F, System.Drawing.FontStyle.Bold);
            this.labelControl2.Appearance.ForeColor = System.Drawing.Color.MidnightBlue;
            this.labelControl2.Appearance.Options.UseFont = true;
            this.labelControl2.Appearance.Options.UseForeColor = true;
            this.labelControl2.Location = new System.Drawing.Point(23, 134);
            this.labelControl2.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.labelControl2.Name = "labelControl2";
            this.labelControl2.Size = new System.Drawing.Size(88, 18);
            this.labelControl2.TabIndex = 3;
            this.labelControl2.Text = "Descripcion";
            // 
            // labelControl1
            // 
            this.labelControl1.Appearance.Font = new System.Drawing.Font("Tahoma", 9F, System.Drawing.FontStyle.Bold);
            this.labelControl1.Appearance.ForeColor = System.Drawing.Color.MidnightBlue;
            this.labelControl1.Appearance.Options.UseFont = true;
            this.labelControl1.Appearance.Options.UseForeColor = true;
            this.labelControl1.Location = new System.Drawing.Point(54, 87);
            this.labelControl1.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.labelControl1.Name = "labelControl1";
            this.labelControl1.Size = new System.Drawing.Size(51, 18);
            this.labelControl1.TabIndex = 1;
            this.labelControl1.Text = "Codigo";
            // 
            // repositoryItemCheckEdit1
            // 
            this.repositoryItemCheckEdit1.AutoHeight = false;
            this.repositoryItemCheckEdit1.Name = "repositoryItemCheckEdit1";
            // 
            // WPrincipActiv
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1521, 624);
            this.Controls.Add(this.radPanel1);
            this.Controls.Add(this.gvPrincipActiv);
            this.Controls.Add(this.btnModificar);
            this.Controls.Add(this.btnNuevo);
            this.Name = "WPrincipActiv";
            this.Text = "Principio Activo";
            ((System.ComponentModel.ISupportInitialize)(this.gvPrincipActiv)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtUltimaFecha.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtUltimoUsuario.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtDescripcion.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtCodPrincipio.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.radPanel1)).EndInit();
            this.radPanel1.ResumeLayout(false);
            this.radPanel1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.chkEstadoPrincipio.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemCheckEdit1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.GridControl gvPrincipActiv;
        private DevExpress.XtraGrid.Views.Grid.GridView gridView1;
        private DevExpress.XtraGrid.Columns.GridColumn n_categoria;
        private DevExpress.XtraGrid.Columns.GridColumn c_descripcion;
        private DevExpress.XtraGrid.Columns.GridColumn c_usuarioregistro;
        private DevExpress.XtraGrid.Columns.GridColumn c_ultimafechamod;
        //private DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit repositoryItemCheckEdit1;
        private DevExpress.XtraEditors.SimpleButton btn_Cancel;
        private DevExpress.XtraEditors.SimpleButton btnGuardar;
        private DevExpress.XtraEditors.TextEdit txtUltimaFecha;
        private DevExpress.XtraEditors.TextEdit txtUltimoUsuario;
        private DevExpress.XtraEditors.TextEdit txtDescripcion;
        private DevExpress.XtraEditors.SimpleButton btnModificar;
        private DevExpress.XtraEditors.SimpleButton btnNuevo;
        private DevExpress.XtraEditors.TextEdit txtCodPrincipio;
        private Telerik.WinControls.UI.RadPanel radPanel1;
        private DevExpress.XtraEditors.LabelControl labelControl4;
        private DevExpress.XtraEditors.LabelControl labelControl3;
        private DevExpress.XtraEditors.LabelControl labelControl2;
        private DevExpress.XtraEditors.LabelControl labelControl1;
        private DevExpress.XtraEditors.LabelControl labelControl7;
        private DevExpress.XtraEditors.CheckEdit chkEstadoPrincipio;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn1;
        private DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit repositoryItemCheckEdit1;
    }
}
using DevExpress.XtraEditors;

namespace AppFarma.WinForm.Maestros
{
    partial class WFCategorias
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
            this.gvCategorias = new DevExpress.XtraGrid.GridControl();
            this.gridView1 = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.n_categoria = new DevExpress.XtraGrid.Columns.GridColumn();
            this.c_descripcion = new DevExpress.XtraGrid.Columns.GridColumn();
            this.c_usuarioregistro = new DevExpress.XtraGrid.Columns.GridColumn();
            this.c_ultimafechamod = new DevExpress.XtraGrid.Columns.GridColumn();
            this.repositoryItemCheckEdit1 = new DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit();
            this.radPanel1 = new Telerik.WinControls.UI.RadPanel();
            this.btn_Cancel = new DevExpress.XtraEditors.SimpleButton();
            this.btnGuardar = new DevExpress.XtraEditors.SimpleButton();
            this.labelControl4 = new DevExpress.XtraEditors.LabelControl();
            this.txtUltimaFecha = new DevExpress.XtraEditors.TextEdit();
            this.labelControl3 = new DevExpress.XtraEditors.LabelControl();
            this.txtUltimoUsuario = new DevExpress.XtraEditors.TextEdit();
            this.labelControl2 = new DevExpress.XtraEditors.LabelControl();
            this.txtDescripcion = new DevExpress.XtraEditors.TextEdit();
            this.labelControl1 = new DevExpress.XtraEditors.LabelControl();
            this.txtCodCategoria = new DevExpress.XtraEditors.TextEdit();
            this.btnNuevo = new DevExpress.XtraEditors.SimpleButton();
            this.btnModificar = new DevExpress.XtraEditors.SimpleButton();
            ((System.ComponentModel.ISupportInitialize)(this.gvCategorias)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemCheckEdit1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.radPanel1)).BeginInit();
            this.radPanel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.txtUltimaFecha.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtUltimoUsuario.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtDescripcion.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtCodCategoria.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // gvCategorias
            // 
            this.gvCategorias.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            // 
            // 
            // 
            this.gvCategorias.EmbeddedNavigator.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.gvCategorias.Location = new System.Drawing.Point(454, 59);
            this.gvCategorias.MainView = this.gridView1;
            this.gvCategorias.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.gvCategorias.Name = "gvCategorias";
            this.gvCategorias.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.repositoryItemCheckEdit1});
            this.gvCategorias.Size = new System.Drawing.Size(675, 416);
            this.gvCategorias.TabIndex = 0;
            this.gvCategorias.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gridView1});
            this.gvCategorias.Click += new System.EventHandler(this.gvCategorias_Click);
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
            // repositoryItemCheckEdit1
            // 
            this.repositoryItemCheckEdit1.AutoHeight = false;
            this.repositoryItemCheckEdit1.Name = "repositoryItemCheckEdit1";
            // 
            // radPanel1
            // 
            this.radPanel1.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left)));
            this.radPanel1.Controls.Add(this.btn_Cancel);
            this.radPanel1.Controls.Add(this.btnGuardar);
            this.radPanel1.Controls.Add(this.labelControl4);
            this.radPanel1.Controls.Add(this.txtUltimaFecha);
            this.radPanel1.Controls.Add(this.labelControl3);
            this.radPanel1.Controls.Add(this.txtUltimoUsuario);
            this.radPanel1.Controls.Add(this.labelControl2);
            this.radPanel1.Controls.Add(this.txtDescripcion);
            this.radPanel1.Controls.Add(this.labelControl1);
            this.radPanel1.Controls.Add(this.txtCodCategoria);
            this.radPanel1.Location = new System.Drawing.Point(33, 15);
            this.radPanel1.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.radPanel1.Name = "radPanel1";
            this.radPanel1.Size = new System.Drawing.Size(414, 460);
            this.radPanel1.TabIndex = 1;
            // 
            // btn_Cancel
            // 
            this.btn_Cancel.ImageOptions.Image = global::AppFarma.Properties.Resources.icn_cancel;
            this.btn_Cancel.Location = new System.Drawing.Point(219, 316);
            this.btn_Cancel.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.btn_Cancel.Name = "btn_Cancel";
            this.btn_Cancel.Size = new System.Drawing.Size(98, 39);
            this.btn_Cancel.TabIndex = 4;
            this.btn_Cancel.Text = "Cancelar";
            this.btn_Cancel.Click += new System.EventHandler(this.btn_Cancel_Click);
            // 
            // btnGuardar
            // 
            this.btnGuardar.Enabled = false;
            this.btnGuardar.ImageOptions.Image = global::AppFarma.Properties.Resources.icn_guardar;
            this.btnGuardar.Location = new System.Drawing.Point(114, 316);
            this.btnGuardar.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.btnGuardar.Name = "btnGuardar";
            this.btnGuardar.Size = new System.Drawing.Size(98, 39);
            this.btnGuardar.TabIndex = 8;
            this.btnGuardar.Text = "Guardar";
            this.btnGuardar.Click += new System.EventHandler(this.btnGuardar_Click);
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
            // txtUltimaFecha
            // 
            this.txtUltimaFecha.Enabled = false;
            this.txtUltimaFecha.Location = new System.Drawing.Point(114, 224);
            this.txtUltimaFecha.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.txtUltimaFecha.Name = "txtUltimaFecha";
            // 
            // 
            // 
            this.txtUltimaFecha.Properties.Appearance.Font = new System.Drawing.Font("Tahoma", 12F);
            this.txtUltimaFecha.Properties.Appearance.Options.UseFont = true;
            this.txtUltimaFecha.Size = new System.Drawing.Size(248, 30);
            this.txtUltimaFecha.TabIndex = 6;
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
            // txtUltimoUsuario
            // 
            this.txtUltimoUsuario.Enabled = false;
            this.txtUltimoUsuario.Location = new System.Drawing.Point(114, 174);
            this.txtUltimoUsuario.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.txtUltimoUsuario.Name = "txtUltimoUsuario";
            // 
            // 
            // 
            this.txtUltimoUsuario.Properties.Appearance.Font = new System.Drawing.Font("Tahoma", 12F);
            this.txtUltimoUsuario.Properties.Appearance.Options.UseFont = true;
            this.txtUltimoUsuario.Size = new System.Drawing.Size(248, 30);
            this.txtUltimoUsuario.TabIndex = 4;
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
            this.labelControl2.Click += new System.EventHandler(this.labelControl2_Click);
            // 
            // txtDescripcion
            // 
            this.txtDescripcion.Enabled = false;
            this.txtDescripcion.Location = new System.Drawing.Point(114, 126);
            this.txtDescripcion.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.txtDescripcion.Name = "txtDescripcion";
            // 
            // 
            // 
            this.txtDescripcion.Properties.Appearance.Font = new System.Drawing.Font("Tahoma", 12F);
            this.txtDescripcion.Properties.Appearance.Options.UseFont = true;
            this.txtDescripcion.Size = new System.Drawing.Size(248, 30);
            this.txtDescripcion.TabIndex = 2;
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
            this.labelControl1.Click += new System.EventHandler(this.labelControl1_Click);
            // 
            // txtCodCategoria
            // 
            this.txtCodCategoria.Enabled = false;
            this.txtCodCategoria.Location = new System.Drawing.Point(114, 73);
            this.txtCodCategoria.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.txtCodCategoria.Name = "txtCodCategoria";
            // 
            // 
            // 
            this.txtCodCategoria.Properties.Appearance.Font = new System.Drawing.Font("Tahoma", 12F);
            this.txtCodCategoria.Properties.Appearance.Options.UseFont = true;
            this.txtCodCategoria.Size = new System.Drawing.Size(154, 30);
            this.txtCodCategoria.TabIndex = 0;
            // 
            // btnNuevo
            // 
            this.btnNuevo.ImageOptions.Image = global::AppFarma.Properties.Resources.icn_agregar;
            this.btnNuevo.Location = new System.Drawing.Point(454, 15);
            this.btnNuevo.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.btnNuevo.Name = "btnNuevo";
            this.btnNuevo.Size = new System.Drawing.Size(98, 39);
            this.btnNuevo.TabIndex = 3;
            this.btnNuevo.Text = "Nuevo";
            this.btnNuevo.Click += new System.EventHandler(this.btnNuevo_Click);
            // 
            // btnModificar
            // 
            this.btnModificar.ImageOptions.Image = global::AppFarma.Properties.Resources.icn_modificar;
            this.btnModificar.Location = new System.Drawing.Point(559, 15);
            this.btnModificar.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.btnModificar.Name = "btnModificar";
            this.btnModificar.Size = new System.Drawing.Size(98, 39);
            this.btnModificar.TabIndex = 4;
            this.btnModificar.Text = "Modificar";
            this.btnModificar.Click += new System.EventHandler(this.btnModificar_Click);
            // 
            // WFCategorias
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1143, 490);
            this.Controls.Add(this.btnModificar);
            this.Controls.Add(this.btnNuevo);
            this.Controls.Add(this.radPanel1);
            this.Controls.Add(this.gvCategorias);
            this.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.Name = "WFCategorias";
            this.Text = "CATEGORIAS";
            this.Load += new System.EventHandler(this.WFCategorias_Load);
            ((System.ComponentModel.ISupportInitialize)(this.gvCategorias)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemCheckEdit1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.radPanel1)).EndInit();
            this.radPanel1.ResumeLayout(false);
            this.radPanel1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.txtUltimaFecha.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtUltimoUsuario.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtDescripcion.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtCodCategoria.Properties)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.GridControl gvCategorias;
        private DevExpress.XtraGrid.Views.Grid.GridView gridView1;
        private Telerik.WinControls.UI.RadPanel radPanel1;
        private TextEdit txtCodCategoria;
        private LabelControl labelControl1;
        private LabelControl labelControl2;
        private TextEdit txtDescripcion;
        private SimpleButton btnNuevo;
        private LabelControl labelControl4;
        private TextEdit txtUltimaFecha;
        private LabelControl labelControl3;
        private TextEdit txtUltimoUsuario;
        private SimpleButton btnGuardar;
        private SimpleButton btn_Cancel;
        private SimpleButton btnModificar;
        private DevExpress.XtraGrid.Columns.GridColumn n_categoria;
        private DevExpress.XtraGrid.Columns.GridColumn c_descripcion;
        private DevExpress.XtraGrid.Columns.GridColumn c_usuarioregistro;
        private DevExpress.XtraGrid.Columns.GridColumn c_ultimafechamod;
        private DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit repositoryItemCheckEdit1;
    }
}
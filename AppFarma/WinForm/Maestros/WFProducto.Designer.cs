namespace AppFarma.WinForm.Maestros
{
    partial class WFProducto
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
            this.radPanel1 = new Telerik.WinControls.UI.RadPanel();
            this.labelControl4 = new DevExpress.XtraEditors.LabelControl();
            this.txtUltimaFecha = new DevExpress.XtraEditors.TextEdit();
            this.labelControl3 = new DevExpress.XtraEditors.LabelControl();
            this.txtUltimoUsuario = new DevExpress.XtraEditors.TextEdit();
            this.labelControl2 = new DevExpress.XtraEditors.LabelControl();
            this.txtDescripcion = new DevExpress.XtraEditors.TextEdit();
            this.labelControl1 = new DevExpress.XtraEditors.LabelControl();
            this.txtCodProducto = new DevExpress.XtraEditors.TextEdit();
            this.gvCategorias = new DevExpress.XtraGrid.GridControl();
            this.gridView1 = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.btnModificar = new DevExpress.XtraEditors.SimpleButton();
            this.btnNuevo = new DevExpress.XtraEditors.SimpleButton();
            this.btn_Cancel = new DevExpress.XtraEditors.SimpleButton();
            this.btnGuardar = new DevExpress.XtraEditors.SimpleButton();
            this.n_categoria = new DevExpress.XtraGrid.Columns.GridColumn();
            this.c_descripcion = new DevExpress.XtraGrid.Columns.GridColumn();
            this.c_usuarioregistro = new DevExpress.XtraGrid.Columns.GridColumn();
            this.c_ultimafechamod = new DevExpress.XtraGrid.Columns.GridColumn();
            this.repositoryItemCheckEdit1 = new DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit();
            this.cboCat = new System.Windows.Forms.ComboBox();
            this.labelControl5 = new DevExpress.XtraEditors.LabelControl();
            this.labelControl6 = new DevExpress.XtraEditors.LabelControl();
            this.comboBox1 = new System.Windows.Forms.ComboBox();
            ((System.ComponentModel.ISupportInitialize)(this.radPanel1)).BeginInit();
            this.radPanel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.txtUltimaFecha.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtUltimoUsuario.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtDescripcion.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtCodProducto.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gvCategorias)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemCheckEdit1)).BeginInit();
            this.SuspendLayout();
            // 
            // radPanel1
            // 
            this.radPanel1.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left)));
            this.radPanel1.Controls.Add(this.labelControl6);
            this.radPanel1.Controls.Add(this.comboBox1);
            this.radPanel1.Controls.Add(this.labelControl5);
            this.radPanel1.Controls.Add(this.cboCat);
            this.radPanel1.Controls.Add(this.btn_Cancel);
            this.radPanel1.Controls.Add(this.btnGuardar);
            this.radPanel1.Controls.Add(this.labelControl4);
            this.radPanel1.Controls.Add(this.txtUltimaFecha);
            this.radPanel1.Controls.Add(this.labelControl3);
            this.radPanel1.Controls.Add(this.txtUltimoUsuario);
            this.radPanel1.Controls.Add(this.labelControl2);
            this.radPanel1.Controls.Add(this.txtDescripcion);
            this.radPanel1.Controls.Add(this.labelControl1);
            this.radPanel1.Controls.Add(this.txtCodProducto);
            this.radPanel1.Location = new System.Drawing.Point(12, 13);
            this.radPanel1.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.radPanel1.Name = "radPanel1";
            this.radPanel1.Size = new System.Drawing.Size(405, 460);
            this.radPanel1.TabIndex = 6;
            // 
            // labelControl4
            // 
            this.labelControl4.Appearance.Font = new System.Drawing.Font("Tahoma", 9F, System.Drawing.FontStyle.Bold);
            this.labelControl4.Appearance.ForeColor = System.Drawing.Color.MidnightBlue;
            this.labelControl4.Appearance.Options.UseFont = true;
            this.labelControl4.Appearance.Options.UseForeColor = true;
            this.labelControl4.Location = new System.Drawing.Point(37, 229);
            this.labelControl4.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.labelControl4.Name = "labelControl4";
            this.labelControl4.Size = new System.Drawing.Size(71, 18);
            this.labelControl4.TabIndex = 7;
            this.labelControl4.Text = "Ult.Fecha";
            // 
            // txtUltimaFecha
            // 
            this.txtUltimaFecha.Enabled = false;
            this.txtUltimaFecha.Location = new System.Drawing.Point(122, 217);
            this.txtUltimaFecha.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.txtUltimaFecha.Name = "txtUltimaFecha";
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
            this.labelControl3.Location = new System.Drawing.Point(23, 187);
            this.labelControl3.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.labelControl3.Name = "labelControl3";
            this.labelControl3.Size = new System.Drawing.Size(85, 18);
            this.labelControl3.TabIndex = 5;
            this.labelControl3.Text = "Ult.Usuario";
            // 
            // txtUltimoUsuario
            // 
            this.txtUltimoUsuario.Enabled = false;
            this.txtUltimoUsuario.Location = new System.Drawing.Point(122, 175);
            this.txtUltimoUsuario.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.txtUltimoUsuario.Name = "txtUltimoUsuario";
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
            this.labelControl2.Location = new System.Drawing.Point(20, 72);
            this.labelControl2.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.labelControl2.Name = "labelControl2";
            this.labelControl2.Size = new System.Drawing.Size(88, 18);
            this.labelControl2.TabIndex = 3;
            this.labelControl2.Text = "Descripcion";
            // 
            // txtDescripcion
            // 
            this.txtDescripcion.Enabled = false;
            this.txtDescripcion.Location = new System.Drawing.Point(122, 62);
            this.txtDescripcion.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.txtDescripcion.Name = "txtDescripcion";
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
            this.labelControl1.Location = new System.Drawing.Point(57, 30);
            this.labelControl1.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.labelControl1.Name = "labelControl1";
            this.labelControl1.Size = new System.Drawing.Size(51, 18);
            this.labelControl1.TabIndex = 1;
            this.labelControl1.Text = "Codigo";
            // 
            // txtCodProducto
            // 
            this.txtCodProducto.Enabled = false;
            this.txtCodProducto.Location = new System.Drawing.Point(122, 22);
            this.txtCodProducto.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.txtCodProducto.Name = "txtCodProducto";
            this.txtCodProducto.Properties.Appearance.Font = new System.Drawing.Font("Tahoma", 12F);
            this.txtCodProducto.Properties.Appearance.Options.UseFont = true;
            this.txtCodProducto.Size = new System.Drawing.Size(154, 30);
            this.txtCodProducto.TabIndex = 0;
            // 
            // gvCategorias
            // 
            this.gvCategorias.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.gvCategorias.EmbeddedNavigator.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.gvCategorias.Location = new System.Drawing.Point(508, 108);
            this.gvCategorias.MainView = this.gridView1;
            this.gvCategorias.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.gvCategorias.Name = "gvCategorias";
            this.gvCategorias.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.repositoryItemCheckEdit1});
            this.gvCategorias.Size = new System.Drawing.Size(675, 416);
            this.gvCategorias.TabIndex = 5;
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
            // btnModificar
            // 
            this.btnModificar.ImageOptions.Image = global::AppFarma.Properties.Resources.icn_modificar;
            this.btnModificar.Location = new System.Drawing.Point(613, 64);
            this.btnModificar.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.btnModificar.Name = "btnModificar";
            this.btnModificar.Size = new System.Drawing.Size(98, 39);
            this.btnModificar.TabIndex = 8;
            this.btnModificar.Text = "Modificar";
            // 
            // btnNuevo
            // 
            this.btnNuevo.ImageOptions.Image = global::AppFarma.Properties.Resources.icn_agregar;
            this.btnNuevo.Location = new System.Drawing.Point(508, 64);
            this.btnNuevo.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.btnNuevo.Name = "btnNuevo";
            this.btnNuevo.Size = new System.Drawing.Size(98, 39);
            this.btnNuevo.TabIndex = 7;
            this.btnNuevo.Text = "Nuevo";
            // 
            // btn_Cancel
            // 
            this.btn_Cancel.ImageOptions.Image = global::AppFarma.Properties.Resources.icn_cancel;
            this.btn_Cancel.Location = new System.Drawing.Point(226, 267);
            this.btn_Cancel.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.btn_Cancel.Name = "btn_Cancel";
            this.btn_Cancel.Size = new System.Drawing.Size(98, 39);
            this.btn_Cancel.TabIndex = 4;
            this.btn_Cancel.Text = "Cancelar";
            // 
            // btnGuardar
            // 
            this.btnGuardar.Enabled = false;
            this.btnGuardar.ImageOptions.Image = global::AppFarma.Properties.Resources.icn_guardar;
            this.btnGuardar.Location = new System.Drawing.Point(122, 267);
            this.btnGuardar.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.btnGuardar.Name = "btnGuardar";
            this.btnGuardar.Size = new System.Drawing.Size(98, 39);
            this.btnGuardar.TabIndex = 8;
            this.btnGuardar.Text = "Guardar";
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
            // cboCat
            // 
            this.cboCat.FormattingEnabled = true;
            this.cboCat.Location = new System.Drawing.Point(122, 100);
            this.cboCat.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.cboCat.Name = "cboCat";
            this.cboCat.Size = new System.Drawing.Size(248, 24);
            this.cboCat.TabIndex = 9;
            // 
            // labelControl5
            // 
            this.labelControl5.Appearance.Font = new System.Drawing.Font("Tahoma", 9F, System.Drawing.FontStyle.Bold);
            this.labelControl5.Appearance.ForeColor = System.Drawing.Color.MidnightBlue;
            this.labelControl5.Appearance.Options.UseFont = true;
            this.labelControl5.Appearance.Options.UseForeColor = true;
            this.labelControl5.AutoSizeMode = DevExpress.XtraEditors.LabelAutoSizeMode.Horizontal;
            this.labelControl5.LineLocation = DevExpress.XtraEditors.LineLocation.Right;
            this.labelControl5.LineStyle = System.Drawing.Drawing2D.DashStyle.Dot;
            this.labelControl5.LineVisible = true;
            this.labelControl5.Location = new System.Drawing.Point(36, 106);
            this.labelControl5.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.labelControl5.Name = "labelControl5";
            this.labelControl5.Size = new System.Drawing.Size(76, 18);
            this.labelControl5.TabIndex = 10;
            this.labelControl5.Text = "Categoria";
            // 
            // labelControl6
            // 
            this.labelControl6.Appearance.Font = new System.Drawing.Font("Tahoma", 9F, System.Drawing.FontStyle.Bold);
            this.labelControl6.Appearance.ForeColor = System.Drawing.Color.MidnightBlue;
            this.labelControl6.Appearance.Options.UseFont = true;
            this.labelControl6.Appearance.Options.UseForeColor = true;
            this.labelControl6.AutoSizeMode = DevExpress.XtraEditors.LabelAutoSizeMode.Horizontal;
            this.labelControl6.LineLocation = DevExpress.XtraEditors.LineLocation.Right;
            this.labelControl6.LineOrientation = DevExpress.XtraEditors.LabelLineOrientation.Vertical;
            this.labelControl6.LineStyle = System.Drawing.Drawing2D.DashStyle.Dot;
            this.labelControl6.LineVisible = true;
            this.labelControl6.Location = new System.Drawing.Point(4, 139);
            this.labelControl6.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.labelControl6.Name = "labelControl6";
            this.labelControl6.Size = new System.Drawing.Size(109, 18);
            this.labelControl6.TabIndex = 12;
            this.labelControl6.Text = "Sub Categoria";
            // 
            // comboBox1
            // 
            this.comboBox1.FormattingEnabled = true;
            this.comboBox1.Location = new System.Drawing.Point(122, 133);
            this.comboBox1.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.comboBox1.Name = "comboBox1";
            this.comboBox1.Size = new System.Drawing.Size(248, 24);
            this.comboBox1.TabIndex = 11;
            // 
            // WFProducto
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1271, 588);
            this.Controls.Add(this.btnModificar);
            this.Controls.Add(this.btnNuevo);
            this.Controls.Add(this.radPanel1);
            this.Controls.Add(this.gvCategorias);
            this.Name = "WFProducto";
            this.Text = "WFProducto";
            ((System.ComponentModel.ISupportInitialize)(this.radPanel1)).EndInit();
            this.radPanel1.ResumeLayout(false);
            this.radPanel1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.txtUltimaFecha.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtUltimoUsuario.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtDescripcion.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtCodProducto.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gvCategorias)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemCheckEdit1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraEditors.SimpleButton btnModificar;
        private DevExpress.XtraEditors.SimpleButton btnNuevo;
        private Telerik.WinControls.UI.RadPanel radPanel1;
        private DevExpress.XtraEditors.SimpleButton btn_Cancel;
        private DevExpress.XtraEditors.SimpleButton btnGuardar;
        private DevExpress.XtraEditors.LabelControl labelControl4;
        private DevExpress.XtraEditors.TextEdit txtUltimaFecha;
        private DevExpress.XtraEditors.LabelControl labelControl3;
        private DevExpress.XtraEditors.TextEdit txtUltimoUsuario;
        private DevExpress.XtraEditors.LabelControl labelControl2;
        private DevExpress.XtraEditors.TextEdit txtDescripcion;
        private DevExpress.XtraEditors.LabelControl labelControl1;
        private DevExpress.XtraEditors.TextEdit txtCodProducto;
        private DevExpress.XtraGrid.GridControl gvCategorias;
        private DevExpress.XtraGrid.Views.Grid.GridView gridView1;
        private DevExpress.XtraGrid.Columns.GridColumn n_categoria;
        private DevExpress.XtraGrid.Columns.GridColumn c_descripcion;
        private DevExpress.XtraGrid.Columns.GridColumn c_usuarioregistro;
        private DevExpress.XtraGrid.Columns.GridColumn c_ultimafechamod;
        private DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit repositoryItemCheckEdit1;
        private DevExpress.XtraEditors.LabelControl labelControl6;
        private System.Windows.Forms.ComboBox comboBox1;
        private DevExpress.XtraEditors.LabelControl labelControl5;
        private System.Windows.Forms.ComboBox cboCat;
    }
}
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
            this.labelControl6 = new DevExpress.XtraEditors.LabelControl();
            this.chkEstadoSubCat = new DevExpress.XtraEditors.CheckEdit();
            this.btn_Cancel = new DevExpress.XtraEditors.SimpleButton();
            this.btnGuardar = new DevExpress.XtraEditors.SimpleButton();
            this.labelControl5 = new DevExpress.XtraEditors.LabelControl();
            this.labelControl4 = new DevExpress.XtraEditors.LabelControl();
            this.labelControl3 = new DevExpress.XtraEditors.LabelControl();
            this.txtUltFecha = new DevExpress.XtraEditors.TextEdit();
            this.txtUltUsuario = new DevExpress.XtraEditors.TextEdit();
            this.txtDescripcionSub = new DevExpress.XtraEditors.TextEdit();
            this.txtCodSubcategoria = new System.Windows.Forms.TextBox();
            this.labelControl2 = new DevExpress.XtraEditors.LabelControl();
            this.labelControl1 = new DevExpress.XtraEditors.LabelControl();
            this.cboCat = new System.Windows.Forms.ComboBox();
            this.gvSubCategorias = new DevExpress.XtraGrid.GridControl();
            this.gridView1 = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.n_subcategoria = new DevExpress.XtraGrid.Columns.GridColumn();
            this.c_descripcion = new DevExpress.XtraGrid.Columns.GridColumn();
            this.col_Categoria = new DevExpress.XtraGrid.Columns.GridColumn();
            this.col_DescripCat = new DevExpress.XtraGrid.Columns.GridColumn();
            this.c_usuarioregistro = new DevExpress.XtraGrid.Columns.GridColumn();
            this.c_ultimafechamod = new DevExpress.XtraGrid.Columns.GridColumn();
            this.c_estado = new DevExpress.XtraGrid.Columns.GridColumn();
            this.repositoryItemCheckEdit1 = new DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit();
            this.btnModificar = new DevExpress.XtraEditors.SimpleButton();
            this.btnNuevo = new DevExpress.XtraEditors.SimpleButton();
            ((System.ComponentModel.ISupportInitialize)(this.panelSub)).BeginInit();
            this.panelSub.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.chkEstadoSubCat.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtUltFecha.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtUltUsuario.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtDescripcionSub.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gvSubCategorias)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemCheckEdit1)).BeginInit();
            this.SuspendLayout();
            // 
            // panelSub
            // 
            this.panelSub.Controls.Add(this.labelControl6);
            this.panelSub.Controls.Add(this.chkEstadoSubCat);
            this.panelSub.Controls.Add(this.btn_Cancel);
            this.panelSub.Controls.Add(this.btnGuardar);
            this.panelSub.Controls.Add(this.labelControl5);
            this.panelSub.Controls.Add(this.labelControl4);
            this.panelSub.Controls.Add(this.labelControl3);
            this.panelSub.Controls.Add(this.txtUltFecha);
            this.panelSub.Controls.Add(this.txtUltUsuario);
            this.panelSub.Controls.Add(this.txtDescripcionSub);
            this.panelSub.Controls.Add(this.txtCodSubcategoria);
            this.panelSub.Controls.Add(this.labelControl2);
            this.panelSub.Controls.Add(this.labelControl1);
            this.panelSub.Controls.Add(this.cboCat);
            this.panelSub.Location = new System.Drawing.Point(14, 15);
            this.panelSub.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.panelSub.Name = "panelSub";
            this.panelSub.Size = new System.Drawing.Size(407, 335);
            this.panelSub.TabIndex = 0;
            // 
            // labelControl6
            // 
            this.labelControl6.Appearance.Font = new System.Drawing.Font("Tahoma", 9F, System.Drawing.FontStyle.Bold);
            this.labelControl6.Appearance.ForeColor = System.Drawing.Color.MidnightBlue;
            this.labelControl6.Appearance.Options.UseFont = true;
            this.labelControl6.Appearance.Options.UseForeColor = true;
            this.labelControl6.Location = new System.Drawing.Point(34, 217);
            this.labelControl6.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.labelControl6.Name = "labelControl6";
            this.labelControl6.Size = new System.Drawing.Size(50, 18);
            this.labelControl6.TabIndex = 14;
            this.labelControl6.Text = "Estado";
            // 
            // chkEstadoSubCat
            // 
            this.chkEstadoSubCat.Location = new System.Drawing.Point(125, 213);
            this.chkEstadoSubCat.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.chkEstadoSubCat.Name = "chkEstadoSubCat";
            this.chkEstadoSubCat.Properties.Caption = "Activo";
            this.chkEstadoSubCat.Size = new System.Drawing.Size(87, 20);
            this.chkEstadoSubCat.TabIndex = 13;
            // 
            // btn_Cancel
            // 
            this.btn_Cancel.ImageOptions.Image = global::AppFarma.Properties.Resources.icn_cancel;
            this.btn_Cancel.Location = new System.Drawing.Point(230, 252);
            this.btn_Cancel.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.btn_Cancel.Name = "btn_Cancel";
            this.btn_Cancel.Size = new System.Drawing.Size(98, 39);
            this.btn_Cancel.TabIndex = 11;
            this.btn_Cancel.Text = "Cancelar";
            // 
            // btnGuardar
            // 
            this.btnGuardar.Enabled = false;
            this.btnGuardar.ImageOptions.Image = global::AppFarma.Properties.Resources.icn_guardar;
            this.btnGuardar.Location = new System.Drawing.Point(124, 252);
            this.btnGuardar.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.btnGuardar.Name = "btnGuardar";
            this.btnGuardar.Size = new System.Drawing.Size(98, 39);
            this.btnGuardar.TabIndex = 12;
            this.btnGuardar.Text = "Guardar";
            this.btnGuardar.Click += new System.EventHandler(this.btnGuardar_Click);
            // 
            // labelControl5
            // 
            this.labelControl5.Appearance.Font = new System.Drawing.Font("Tahoma", 9F, System.Drawing.FontStyle.Bold);
            this.labelControl5.Appearance.ForeColor = System.Drawing.Color.MidnightBlue;
            this.labelControl5.Appearance.Options.UseFont = true;
            this.labelControl5.Appearance.Options.UseForeColor = true;
            this.labelControl5.Location = new System.Drawing.Point(22, 176);
            this.labelControl5.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.labelControl5.Name = "labelControl5";
            this.labelControl5.Size = new System.Drawing.Size(71, 18);
            this.labelControl5.TabIndex = 10;
            this.labelControl5.Text = "Ult.Fecha";
            // 
            // labelControl4
            // 
            this.labelControl4.Appearance.Font = new System.Drawing.Font("Tahoma", 9F, System.Drawing.FontStyle.Bold);
            this.labelControl4.Appearance.ForeColor = System.Drawing.Color.MidnightBlue;
            this.labelControl4.Appearance.Options.UseFont = true;
            this.labelControl4.Appearance.Options.UseForeColor = true;
            this.labelControl4.Location = new System.Drawing.Point(21, 137);
            this.labelControl4.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.labelControl4.Name = "labelControl4";
            this.labelControl4.Size = new System.Drawing.Size(85, 18);
            this.labelControl4.TabIndex = 9;
            this.labelControl4.Text = "Ult.Usuario";
            // 
            // labelControl3
            // 
            this.labelControl3.Appearance.Font = new System.Drawing.Font("Tahoma", 9F, System.Drawing.FontStyle.Bold);
            this.labelControl3.Appearance.ForeColor = System.Drawing.Color.MidnightBlue;
            this.labelControl3.Appearance.Options.UseFont = true;
            this.labelControl3.Appearance.Options.UseForeColor = true;
            this.labelControl3.Location = new System.Drawing.Point(17, 98);
            this.labelControl3.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.labelControl3.Name = "labelControl3";
            this.labelControl3.Size = new System.Drawing.Size(88, 18);
            this.labelControl3.TabIndex = 8;
            this.labelControl3.Text = "Descripcion";
            // 
            // txtUltFecha
            // 
            this.txtUltFecha.Location = new System.Drawing.Point(125, 171);
            this.txtUltFecha.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.txtUltFecha.Name = "txtUltFecha";
            this.txtUltFecha.Properties.Appearance.Font = new System.Drawing.Font("Tahoma", 10F);
            this.txtUltFecha.Properties.Appearance.Options.UseFont = true;
            this.txtUltFecha.Size = new System.Drawing.Size(262, 28);
            this.txtUltFecha.TabIndex = 7;
            // 
            // txtUltUsuario
            // 
            this.txtUltUsuario.Location = new System.Drawing.Point(125, 127);
            this.txtUltUsuario.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.txtUltUsuario.Name = "txtUltUsuario";
            this.txtUltUsuario.Properties.Appearance.Font = new System.Drawing.Font("Tahoma", 10F);
            this.txtUltUsuario.Properties.Appearance.Options.UseFont = true;
            this.txtUltUsuario.Size = new System.Drawing.Size(262, 28);
            this.txtUltUsuario.TabIndex = 6;
            // 
            // txtDescripcionSub
            // 
            this.txtDescripcionSub.Location = new System.Drawing.Point(126, 89);
            this.txtDescripcionSub.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.txtDescripcionSub.Name = "txtDescripcionSub";
            this.txtDescripcionSub.Properties.Appearance.Font = new System.Drawing.Font("Tahoma", 10F);
            this.txtDescripcionSub.Properties.Appearance.Options.UseFont = true;
            this.txtDescripcionSub.Size = new System.Drawing.Size(262, 28);
            this.txtDescripcionSub.TabIndex = 5;
            // 
            // txtCodSubcategoria
            // 
            this.txtCodSubcategoria.Location = new System.Drawing.Point(125, 12);
            this.txtCodSubcategoria.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.txtCodSubcategoria.Name = "txtCodSubcategoria";
            this.txtCodSubcategoria.ReadOnly = true;
            this.txtCodSubcategoria.Size = new System.Drawing.Size(262, 23);
            this.txtCodSubcategoria.TabIndex = 4;
            // 
            // labelControl2
            // 
            this.labelControl2.Appearance.Font = new System.Drawing.Font("Tahoma", 9F, System.Drawing.FontStyle.Bold);
            this.labelControl2.Appearance.ForeColor = System.Drawing.Color.MidnightBlue;
            this.labelControl2.Appearance.Options.UseFont = true;
            this.labelControl2.Appearance.Options.UseForeColor = true;
            this.labelControl2.Location = new System.Drawing.Point(3, 15);
            this.labelControl2.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.labelControl2.Name = "labelControl2";
            this.labelControl2.Size = new System.Drawing.Size(105, 18);
            this.labelControl2.TabIndex = 3;
            this.labelControl2.Text = "Sub Catgeoria";
            // 
            // labelControl1
            // 
            this.labelControl1.Appearance.Font = new System.Drawing.Font("Tahoma", 9F, System.Drawing.FontStyle.Bold);
            this.labelControl1.Appearance.ForeColor = System.Drawing.Color.MidnightBlue;
            this.labelControl1.Appearance.Options.UseFont = true;
            this.labelControl1.Appearance.Options.UseForeColor = true;
            this.labelControl1.Location = new System.Drawing.Point(29, 60);
            this.labelControl1.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.labelControl1.Name = "labelControl1";
            this.labelControl1.Size = new System.Drawing.Size(73, 18);
            this.labelControl1.TabIndex = 2;
            this.labelControl1.Text = "Categoria";
            // 
            // cboCat
            // 
            this.cboCat.FormattingEnabled = true;
            this.cboCat.Location = new System.Drawing.Point(125, 52);
            this.cboCat.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.cboCat.Name = "cboCat";
            this.cboCat.Size = new System.Drawing.Size(262, 24);
            this.cboCat.TabIndex = 0;
            // 
            // gvSubCategorias
            // 
            this.gvSubCategorias.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.gvSubCategorias.EmbeddedNavigator.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.gvSubCategorias.Location = new System.Drawing.Point(428, 62);
            this.gvSubCategorias.MainView = this.gridView1;
            this.gvSubCategorias.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.gvSubCategorias.Name = "gvSubCategorias";
            this.gvSubCategorias.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.repositoryItemCheckEdit1});
            this.gvSubCategorias.Size = new System.Drawing.Size(707, 572);
            this.gvSubCategorias.TabIndex = 1;
            this.gvSubCategorias.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gridView1});
            this.gvSubCategorias.Click += new System.EventHandler(this.gvSubCategorias_Click);
            // 
            // gridView1
            // 
            this.gridView1.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.n_subcategoria,
            this.c_descripcion,
            this.col_Categoria,
            this.col_DescripCat,
            this.c_usuarioregistro,
            this.c_ultimafechamod,
            this.c_estado});
            this.gridView1.GridControl = this.gvSubCategorias;
            this.gridView1.Name = "gridView1";
            // 
            // n_subcategoria
            // 
            this.n_subcategoria.Caption = "Sub Categoria";
            this.n_subcategoria.FieldName = "n_subcategoria";
            this.n_subcategoria.Name = "n_subcategoria";
            this.n_subcategoria.OptionsColumn.AllowEdit = false;
            this.n_subcategoria.Visible = true;
            this.n_subcategoria.VisibleIndex = 0;
            // 
            // c_descripcion
            // 
            this.c_descripcion.Caption = "Descripción Sub C.";
            this.c_descripcion.FieldName = "c_descripcion";
            this.c_descripcion.Name = "c_descripcion";
            this.c_descripcion.OptionsColumn.AllowEdit = false;
            this.c_descripcion.Visible = true;
            this.c_descripcion.VisibleIndex = 1;
            this.c_descripcion.Width = 127;
            // 
            // col_Categoria
            // 
            this.col_Categoria.Caption = "Categoria";
            this.col_Categoria.FieldName = "n_categoria";
            this.col_Categoria.Name = "col_Categoria";
            this.col_Categoria.Visible = true;
            this.col_Categoria.VisibleIndex = 2;
            // 
            // col_DescripCat
            // 
            this.col_DescripCat.Caption = "Descrip. Categoria";
            this.col_DescripCat.FieldName = "c_DescripCategoria";
            this.col_DescripCat.Name = "col_DescripCat";
            this.col_DescripCat.Visible = true;
            this.col_DescripCat.VisibleIndex = 3;
            // 
            // c_usuarioregistro
            // 
            this.c_usuarioregistro.Caption = "Usuario Registro";
            this.c_usuarioregistro.FieldName = "c_usuarioregistro";
            this.c_usuarioregistro.Name = "c_usuarioregistro";
            this.c_usuarioregistro.OptionsColumn.AllowEdit = false;
            this.c_usuarioregistro.Visible = true;
            this.c_usuarioregistro.VisibleIndex = 4;
            // 
            // c_ultimafechamod
            // 
            this.c_ultimafechamod.Caption = "Ult.Fecha Mod.";
            this.c_ultimafechamod.FieldName = "c_ultimafechamod";
            this.c_ultimafechamod.Name = "c_ultimafechamod";
            this.c_ultimafechamod.Visible = true;
            this.c_ultimafechamod.VisibleIndex = 5;
            // 
            // c_estado
            // 
            this.c_estado.Caption = "Estado";
            this.c_estado.ColumnEdit = this.repositoryItemCheckEdit1;
            this.c_estado.FieldName = "c_estado";
            this.c_estado.Name = "c_estado";
            this.c_estado.Visible = true;
            this.c_estado.VisibleIndex = 6;
            this.c_estado.Width = 94;
            // 
            // repositoryItemCheckEdit1
            // 
            this.repositoryItemCheckEdit1.AutoHeight = false;
            this.repositoryItemCheckEdit1.Name = "repositoryItemCheckEdit1";
            // 
            // btnModificar
            // 
            this.btnModificar.ImageOptions.Image = global::AppFarma.Properties.Resources.icn_modificar;
            this.btnModificar.Location = new System.Drawing.Point(534, 15);
            this.btnModificar.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.btnModificar.Name = "btnModificar";
            this.btnModificar.Size = new System.Drawing.Size(98, 39);
            this.btnModificar.TabIndex = 6;
            this.btnModificar.Text = "Modificar";
            // 
            // btnNuevo
            // 
            this.btnNuevo.ImageOptions.Image = global::AppFarma.Properties.Resources.icn_agregar;
            this.btnNuevo.Location = new System.Drawing.Point(429, 15);
            this.btnNuevo.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.btnNuevo.Name = "btnNuevo";
            this.btnNuevo.Size = new System.Drawing.Size(98, 39);
            this.btnNuevo.TabIndex = 5;
            this.btnNuevo.Text = "Nuevo";
            this.btnNuevo.Click += new System.EventHandler(this.btnNuevo_Click);
            // 
            // WFSubCategorias
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1149, 649);
            this.Controls.Add(this.btnModificar);
            this.Controls.Add(this.btnNuevo);
            this.Controls.Add(this.gvSubCategorias);
            this.Controls.Add(this.panelSub);
            this.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.Name = "WFSubCategorias";
            this.Text = "Sub Categorias";
            this.Load += new System.EventHandler(this.WFSubCategorias_Load);
            ((System.ComponentModel.ISupportInitialize)(this.panelSub)).EndInit();
            this.panelSub.ResumeLayout(false);
            this.panelSub.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.chkEstadoSubCat.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtUltFecha.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtUltUsuario.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtDescripcionSub.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gvSubCategorias)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemCheckEdit1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private Telerik.WinControls.UI.RadPanel panelSub;
        private DevExpress.XtraGrid.GridControl gvSubCategorias;
        private DevExpress.XtraGrid.Views.Grid.GridView gridView1;
        private DevExpress.XtraGrid.Columns.GridColumn n_subcategoria;
        private DevExpress.XtraGrid.Columns.GridColumn c_descripcion;
        private DevExpress.XtraGrid.Columns.GridColumn c_usuarioregistro;
        private DevExpress.XtraGrid.Columns.GridColumn c_ultimafechamod;
        private System.Windows.Forms.ComboBox cboCat;
        private System.Windows.Forms.TextBox txtCodSubcategoria;
        private DevExpress.XtraEditors.LabelControl labelControl2;
        private DevExpress.XtraEditors.LabelControl labelControl1;
        private DevExpress.XtraEditors.TextEdit txtDescripcionSub;
        private DevExpress.XtraEditors.LabelControl labelControl5;
        private DevExpress.XtraEditors.LabelControl labelControl4;
        private DevExpress.XtraEditors.LabelControl labelControl3;
        private DevExpress.XtraEditors.TextEdit txtUltFecha;
        private DevExpress.XtraEditors.TextEdit txtUltUsuario;
        private DevExpress.XtraEditors.SimpleButton btn_Cancel;
        private DevExpress.XtraEditors.SimpleButton btnGuardar;
        private DevExpress.XtraEditors.LabelControl labelControl6;
        private DevExpress.XtraEditors.CheckEdit chkEstadoSubCat;
        private DevExpress.XtraEditors.SimpleButton btnModificar;
        private DevExpress.XtraEditors.SimpleButton btnNuevo;
        private DevExpress.XtraGrid.Columns.GridColumn c_estado;
        private DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit repositoryItemCheckEdit1;
        private DevExpress.XtraGrid.Columns.GridColumn col_Categoria;
        private DevExpress.XtraGrid.Columns.GridColumn col_DescripCat;
    }
}
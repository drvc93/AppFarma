using DevExpress.XtraBars;

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
            this.components = new System.ComponentModel.Container();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(WFProducto));
            this.radPanel1 = new Telerik.WinControls.UI.RadPanel();
            this.labelControl7 = new DevExpress.XtraEditors.LabelControl();
            this.chkEstadoProd = new DevExpress.XtraEditors.CheckEdit();
            this.labelControl6 = new DevExpress.XtraEditors.LabelControl();
            this.cboSubCat = new System.Windows.Forms.ComboBox();
            this.labelControl5 = new DevExpress.XtraEditors.LabelControl();
            this.cboCat = new System.Windows.Forms.ComboBox();
            this.btn_Cancel = new DevExpress.XtraEditors.SimpleButton();
            this.btnGuardar = new DevExpress.XtraEditors.SimpleButton();
            this.labelControl4 = new DevExpress.XtraEditors.LabelControl();
            this.txtUltimaFecha = new DevExpress.XtraEditors.TextEdit();
            this.labelControl3 = new DevExpress.XtraEditors.LabelControl();
            this.txtUltimoUsuario = new DevExpress.XtraEditors.TextEdit();
            this.labelControl2 = new DevExpress.XtraEditors.LabelControl();
            this.txtDescripcion = new DevExpress.XtraEditors.TextEdit();
            this.labelControl1 = new DevExpress.XtraEditors.LabelControl();
            this.txtCodProducto = new DevExpress.XtraEditors.TextEdit();
            this.gvProductos = new DevExpress.XtraGrid.GridControl();
            this.gridView1 = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.gridColumn1 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn6 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn2 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn3 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn4 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn5 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn8 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn7 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.repositoryItemCheckEdit1 = new DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit();
            this.btnModificar = new DevExpress.XtraEditors.SimpleButton();
            this.btnNuevo = new DevExpress.XtraEditors.SimpleButton();
            this.btnPrincipAct = new DevExpress.XtraEditors.SimpleButton();
            this.popupMenu1 = new DevExpress.XtraBars.PopupMenu(this.components);
            this.barStaticItem1 = new DevExpress.XtraBars.BarStaticItem();
            this.barStaticItem2 = new DevExpress.XtraBars.BarStaticItem();
            this.barManager1 = new DevExpress.XtraBars.BarManager(this.components);
            this.barDockControlTop = new DevExpress.XtraBars.BarDockControl();
            this.barDockControlBottom = new DevExpress.XtraBars.BarDockControl();
            this.barDockControlLeft = new DevExpress.XtraBars.BarDockControl();
            this.barDockControlRight = new DevExpress.XtraBars.BarDockControl();
            this.btnExportarGV = new DevExpress.XtraEditors.SimpleButton();
            this.labelControl8 = new DevExpress.XtraEditors.LabelControl();
            this.txtCodBarra = new DevExpress.XtraEditors.TextEdit();
            ((System.ComponentModel.ISupportInitialize)(this.radPanel1)).BeginInit();
            this.radPanel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.chkEstadoProd.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtUltimaFecha.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtUltimoUsuario.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtDescripcion.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtCodProducto.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gvProductos)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemCheckEdit1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.popupMenu1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.barManager1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtCodBarra.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // radPanel1
            // 
            this.radPanel1.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left)));
            this.radPanel1.Controls.Add(this.labelControl8);
            this.radPanel1.Controls.Add(this.txtCodBarra);
            this.radPanel1.Controls.Add(this.labelControl7);
            this.radPanel1.Controls.Add(this.chkEstadoProd);
            this.radPanel1.Controls.Add(this.labelControl6);
            this.radPanel1.Controls.Add(this.cboSubCat);
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
            this.radPanel1.Size = new System.Drawing.Size(405, 586);
            this.radPanel1.TabIndex = 6;
            // 
            // labelControl7
            // 
            this.labelControl7.Appearance.Font = new System.Drawing.Font("Tahoma", 9F, System.Drawing.FontStyle.Bold);
            this.labelControl7.Appearance.ForeColor = System.Drawing.Color.MidnightBlue;
            this.labelControl7.Appearance.Options.UseFont = true;
            this.labelControl7.Appearance.Options.UseForeColor = true;
            this.labelControl7.Location = new System.Drawing.Point(55, 286);
            this.labelControl7.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.labelControl7.Name = "labelControl7";
            this.labelControl7.Size = new System.Drawing.Size(50, 18);
            this.labelControl7.TabIndex = 16;
            this.labelControl7.Text = "Estado";
            // 
            // chkEstadoProd
            // 
            this.chkEstadoProd.Location = new System.Drawing.Point(122, 287);
            this.chkEstadoProd.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.chkEstadoProd.Name = "chkEstadoProd";
            this.chkEstadoProd.Properties.Caption = "Activo";
            this.chkEstadoProd.Size = new System.Drawing.Size(87, 20);
            this.chkEstadoProd.TabIndex = 15;
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
            // cboSubCat
            // 
            this.cboSubCat.Enabled = false;
            this.cboSubCat.FormattingEnabled = true;
            this.cboSubCat.Location = new System.Drawing.Point(122, 135);
            this.cboSubCat.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.cboSubCat.Name = "cboSubCat";
            this.cboSubCat.Size = new System.Drawing.Size(248, 24);
            this.cboSubCat.TabIndex = 11;
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
            // cboCat
            // 
            this.cboCat.Enabled = false;
            this.cboCat.FormattingEnabled = true;
            this.cboCat.Location = new System.Drawing.Point(122, 100);
            this.cboCat.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.cboCat.Name = "cboCat";
            this.cboCat.Size = new System.Drawing.Size(248, 24);
            this.cboCat.TabIndex = 9;
            this.cboCat.SelectedIndexChanged += new System.EventHandler(this.cboCat_SelectedIndexChanged);
            // 
            // btn_Cancel
            // 
            this.btn_Cancel.ImageOptions.Image = global::AppFarma.Properties.Resources.icn_cancel;
            this.btn_Cancel.Location = new System.Drawing.Point(226, 326);
            this.btn_Cancel.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.btn_Cancel.Name = "btn_Cancel";
            this.btn_Cancel.Size = new System.Drawing.Size(111, 39);
            this.btn_Cancel.TabIndex = 4;
            this.btn_Cancel.Text = "Cancelar";
            // 
            // btnGuardar
            // 
            this.btnGuardar.Enabled = false;
            this.btnGuardar.ImageOptions.Image = global::AppFarma.Properties.Resources.icn_guardar;
            this.btnGuardar.Location = new System.Drawing.Point(122, 327);
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
            this.labelControl4.Location = new System.Drawing.Point(37, 258);
            this.labelControl4.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.labelControl4.Name = "labelControl4";
            this.labelControl4.Size = new System.Drawing.Size(71, 18);
            this.labelControl4.TabIndex = 7;
            this.labelControl4.Text = "Ult.Fecha";
            // 
            // txtUltimaFecha
            // 
            this.txtUltimaFecha.Enabled = false;
            this.txtUltimaFecha.Location = new System.Drawing.Point(122, 246);
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
            this.labelControl3.Location = new System.Drawing.Point(23, 216);
            this.labelControl3.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.labelControl3.Name = "labelControl3";
            this.labelControl3.Size = new System.Drawing.Size(85, 18);
            this.labelControl3.TabIndex = 5;
            this.labelControl3.Text = "Ult.Usuario";
            // 
            // txtUltimoUsuario
            // 
            this.txtUltimoUsuario.Enabled = false;
            this.txtUltimoUsuario.Location = new System.Drawing.Point(122, 204);
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
            this.txtCodProducto.Size = new System.Drawing.Size(141, 30);
            this.txtCodProducto.TabIndex = 0;
            // 
            // gvProductos
            // 
            this.gvProductos.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.gvProductos.EmbeddedNavigator.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.gvProductos.Location = new System.Drawing.Point(440, 60);
            this.gvProductos.MainView = this.gridView1;
            this.gvProductos.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.gvProductos.Name = "gvProductos";
            this.gvProductos.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.repositoryItemCheckEdit1});
            this.gvProductos.Size = new System.Drawing.Size(819, 539);
            this.gvProductos.TabIndex = 5;
            this.gvProductos.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gridView1});
            this.gvProductos.Click += new System.EventHandler(this.gvProductos_Click);
            // 
            // gridView1
            // 
            this.gridView1.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.gridColumn1,
            this.gridColumn6,
            this.gridColumn2,
            this.gridColumn3,
            this.gridColumn4,
            this.gridColumn5,
            this.gridColumn8,
            this.gridColumn7});
            this.gridView1.CustomizationFormBounds = new System.Drawing.Rectangle(1128, 566, 212, 212);
            this.gridView1.GridControl = this.gvProductos;
            this.gridView1.Name = "gridView1";
            this.gridView1.OptionsBehavior.Editable = false;
            this.gridView1.OptionsFind.AlwaysVisible = true;
            this.gridView1.Click += new System.EventHandler(this.gridView1_Click);
            // 
            // gridColumn1
            // 
            this.gridColumn1.Caption = "Cod Producto";
            this.gridColumn1.FieldName = "c_codproducto";
            this.gridColumn1.Name = "gridColumn1";
            this.gridColumn1.Visible = true;
            this.gridColumn1.VisibleIndex = 0;
            // 
            // gridColumn6
            // 
            this.gridColumn6.Caption = "Descripción";
            this.gridColumn6.FieldName = "c_descripcionprod";
            this.gridColumn6.Name = "gridColumn6";
            this.gridColumn6.Visible = true;
            this.gridColumn6.VisibleIndex = 1;
            // 
            // gridColumn2
            // 
            this.gridColumn2.Caption = "Categoria";
            this.gridColumn2.FieldName = "n_categoria";
            this.gridColumn2.Name = "gridColumn2";
            // 
            // gridColumn3
            // 
            this.gridColumn3.Caption = "Categoria";
            this.gridColumn3.FieldName = "c_DescripCategoria";
            this.gridColumn3.Name = "gridColumn3";
            this.gridColumn3.Visible = true;
            this.gridColumn3.VisibleIndex = 2;
            // 
            // gridColumn4
            // 
            this.gridColumn4.Caption = "SubCat";
            this.gridColumn4.FieldName = "n_subcategoria";
            this.gridColumn4.Name = "gridColumn4";
            // 
            // gridColumn5
            // 
            this.gridColumn5.Caption = "Sub Categoria";
            this.gridColumn5.FieldName = "c_DescripSubCateg";
            this.gridColumn5.Name = "gridColumn5";
            this.gridColumn5.Visible = true;
            this.gridColumn5.VisibleIndex = 3;
            // 
            // gridColumn8
            // 
            this.gridColumn8.Caption = "Princ.Activos";
            this.gridColumn8.FieldName = "c_princp_act";
            this.gridColumn8.Name = "gridColumn8";
            this.gridColumn8.Visible = true;
            this.gridColumn8.VisibleIndex = 5;
            // 
            // gridColumn7
            // 
            this.gridColumn7.Caption = "Estado";
            this.gridColumn7.FieldName = "c_estado";
            this.gridColumn7.Name = "gridColumn7";
            this.gridColumn7.Visible = true;
            this.gridColumn7.VisibleIndex = 4;
            // 
            // repositoryItemCheckEdit1
            // 
            this.repositoryItemCheckEdit1.AutoHeight = false;
            this.repositoryItemCheckEdit1.Name = "repositoryItemCheckEdit1";
            // 
            // btnModificar
            // 
            this.btnModificar.ImageOptions.Image = global::AppFarma.Properties.Resources.icn_modificar;
            this.btnModificar.Location = new System.Drawing.Point(545, 13);
            this.btnModificar.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.btnModificar.Name = "btnModificar";
            this.btnModificar.Size = new System.Drawing.Size(98, 39);
            this.btnModificar.TabIndex = 8;
            this.btnModificar.Text = "Modificar";
            this.btnModificar.Click += new System.EventHandler(this.btnModificar_Click);
            // 
            // btnNuevo
            // 
            this.btnNuevo.ImageOptions.Image = global::AppFarma.Properties.Resources.icn_agregar;
            this.btnNuevo.Location = new System.Drawing.Point(440, 13);
            this.btnNuevo.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.btnNuevo.Name = "btnNuevo";
            this.btnNuevo.Size = new System.Drawing.Size(98, 39);
            this.btnNuevo.TabIndex = 7;
            this.btnNuevo.Text = "Nuevo";
            this.btnNuevo.Click += new System.EventHandler(this.btnNuevo_Click);
            // 
            // btnPrincipAct
            // 
            this.btnPrincipAct.ImageOptions.Image = global::AppFarma.Properties.Resources.icn_princp_Act;
            this.btnPrincipAct.Location = new System.Drawing.Point(649, 13);
            this.btnPrincipAct.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.btnPrincipAct.Name = "btnPrincipAct";
            this.btnPrincipAct.Size = new System.Drawing.Size(134, 39);
            this.btnPrincipAct.TabIndex = 9;
            this.btnPrincipAct.Text = "Princip. Act.";
            this.btnPrincipAct.Click += new System.EventHandler(this.btnPrincipAct_Click);
            // 
            // popupMenu1
            // 
            this.popupMenu1.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.barStaticItem1),
            new DevExpress.XtraBars.LinkPersistInfo(this.barStaticItem2)});
            this.popupMenu1.Manager = this.barManager1;
            this.popupMenu1.Name = "popupMenu1";
            // 
            // barStaticItem1
            // 
            this.barStaticItem1.Caption = "EXCEL";
            this.barStaticItem1.Id = 0;
            this.barStaticItem1.Name = "barStaticItem1";
            // 
            // barStaticItem2
            // 
            this.barStaticItem2.Caption = "PDF";
            this.barStaticItem2.Id = 1;
            this.barStaticItem2.Name = "barStaticItem2";
            // 
            // barManager1
            // 
            this.barManager1.DockControls.Add(this.barDockControlTop);
            this.barManager1.DockControls.Add(this.barDockControlBottom);
            this.barManager1.DockControls.Add(this.barDockControlLeft);
            this.barManager1.DockControls.Add(this.barDockControlRight);
            this.barManager1.Form = this;
            this.barManager1.Items.AddRange(new DevExpress.XtraBars.BarItem[] {
            this.barStaticItem1,
            this.barStaticItem2});
            this.barManager1.MaxItemId = 2;
            // 
            // barDockControlTop
            // 
            this.barDockControlTop.CausesValidation = false;
            this.barDockControlTop.Dock = System.Windows.Forms.DockStyle.Top;
            this.barDockControlTop.Location = new System.Drawing.Point(0, 0);
            this.barDockControlTop.Manager = this.barManager1;
            this.barDockControlTop.Size = new System.Drawing.Size(1271, 0);
            // 
            // barDockControlBottom
            // 
            this.barDockControlBottom.CausesValidation = false;
            this.barDockControlBottom.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.barDockControlBottom.Location = new System.Drawing.Point(0, 612);
            this.barDockControlBottom.Manager = this.barManager1;
            this.barDockControlBottom.Size = new System.Drawing.Size(1271, 0);
            // 
            // barDockControlLeft
            // 
            this.barDockControlLeft.CausesValidation = false;
            this.barDockControlLeft.Dock = System.Windows.Forms.DockStyle.Left;
            this.barDockControlLeft.Location = new System.Drawing.Point(0, 0);
            this.barDockControlLeft.Manager = this.barManager1;
            this.barDockControlLeft.Size = new System.Drawing.Size(0, 612);
            // 
            // barDockControlRight
            // 
            this.barDockControlRight.CausesValidation = false;
            this.barDockControlRight.Dock = System.Windows.Forms.DockStyle.Right;
            this.barDockControlRight.Location = new System.Drawing.Point(1271, 0);
            this.barDockControlRight.Manager = this.barManager1;
            this.barDockControlRight.Size = new System.Drawing.Size(0, 612);
            // 
            // btnExportarGV
            // 
            this.btnExportarGV.ImageOptions.Image = ((System.Drawing.Image)(resources.GetObject("btnExportarGV.ImageOptions.Image")));
            this.btnExportarGV.Location = new System.Drawing.Point(789, 13);
            this.btnExportarGV.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.btnExportarGV.Name = "btnExportarGV";
            this.btnExportarGV.Size = new System.Drawing.Size(116, 39);
            this.btnExportarGV.TabIndex = 18;
            this.btnExportarGV.Text = "Exportar";
            this.btnExportarGV.Click += new System.EventHandler(this.btnExportarGV_Click);
            // 
            // labelControl8
            // 
            this.labelControl8.Appearance.Font = new System.Drawing.Font("Tahoma", 9F, System.Drawing.FontStyle.Bold);
            this.labelControl8.Appearance.ForeColor = System.Drawing.Color.MidnightBlue;
            this.labelControl8.Appearance.Options.UseFont = true;
            this.labelControl8.Appearance.Options.UseForeColor = true;
            this.labelControl8.Location = new System.Drawing.Point(27, 178);
            this.labelControl8.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.labelControl8.Name = "labelControl8";
            this.labelControl8.Size = new System.Drawing.Size(79, 18);
            this.labelControl8.TabIndex = 18;
            this.labelControl8.Text = "Cod. Barra";
            // 
            // txtCodBarra
            // 
            this.txtCodBarra.Enabled = false;
            this.txtCodBarra.Location = new System.Drawing.Point(122, 166);
            this.txtCodBarra.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.txtCodBarra.Name = "txtCodBarra";
            this.txtCodBarra.Properties.Appearance.Font = new System.Drawing.Font("Tahoma", 12F);
            this.txtCodBarra.Properties.Appearance.Options.UseFont = true;
            this.txtCodBarra.Size = new System.Drawing.Size(248, 30);
            this.txtCodBarra.TabIndex = 17;
            // 
            // WFProducto
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1271, 612);
            this.Controls.Add(this.btnExportarGV);
            this.Controls.Add(this.btnPrincipAct);
            this.Controls.Add(this.btnModificar);
            this.Controls.Add(this.btnNuevo);
            this.Controls.Add(this.radPanel1);
            this.Controls.Add(this.gvProductos);
            this.Controls.Add(this.barDockControlLeft);
            this.Controls.Add(this.barDockControlRight);
            this.Controls.Add(this.barDockControlBottom);
            this.Controls.Add(this.barDockControlTop);
            this.Name = "WFProducto";
            this.Text = "Productos";
            ((System.ComponentModel.ISupportInitialize)(this.radPanel1)).EndInit();
            this.radPanel1.ResumeLayout(false);
            this.radPanel1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.chkEstadoProd.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtUltimaFecha.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtUltimoUsuario.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtDescripcion.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtCodProducto.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gvProductos)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemCheckEdit1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.popupMenu1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.barManager1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtCodBarra.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

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
        private DevExpress.XtraGrid.GridControl gvProductos;
        private DevExpress.XtraGrid.Views.Grid.GridView gridView1;
        private DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit repositoryItemCheckEdit1;
        private DevExpress.XtraEditors.LabelControl labelControl6;
        private System.Windows.Forms.ComboBox cboSubCat;
        private DevExpress.XtraEditors.LabelControl labelControl5;
        private System.Windows.Forms.ComboBox cboCat;
        private DevExpress.XtraEditors.LabelControl labelControl7;
        private DevExpress.XtraEditors.CheckEdit chkEstadoProd;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn1;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn6;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn2;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn3;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn4;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn5;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn7;
        private DevExpress.XtraEditors.SimpleButton btnPrincipAct;
        private PopupMenu popupMenu1;
        private BarStaticItem barStaticItem1;
        private BarStaticItem barStaticItem2;
        private BarManager barManager1;
        private BarDockControl barDockControlTop;
        private BarDockControl barDockControlBottom;
        private BarDockControl barDockControlLeft;
        private BarDockControl barDockControlRight;
        private DevExpress.XtraEditors.SimpleButton btnExportarGV;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn8;
        private DevExpress.XtraEditors.LabelControl labelControl8;
        private DevExpress.XtraEditors.TextEdit txtCodBarra;
    }
}
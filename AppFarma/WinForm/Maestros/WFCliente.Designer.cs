using DevExpress.Utils.Behaviors;
using DevExpress.XtraBars.Navigation;
using DevExpress.XtraEditors;
using DevExpress.XtraEditors.Repository;
using DevExpress.XtraGrid;
using DevExpress.XtraGrid.Columns;
using DevExpress.XtraGrid.Views.Grid;

namespace AppFarma.WinForm.Maestros
{
    partial class WFCliente
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(WFCliente));
            DevExpress.XtraEditors.Controls.EditorButtonImageOptions editorButtonImageOptions9 = new DevExpress.XtraEditors.Controls.EditorButtonImageOptions();
            DevExpress.Utils.SerializableAppearanceObject serializableAppearanceObject33 = new DevExpress.Utils.SerializableAppearanceObject();
            DevExpress.Utils.SerializableAppearanceObject serializableAppearanceObject34 = new DevExpress.Utils.SerializableAppearanceObject();
            DevExpress.Utils.SerializableAppearanceObject serializableAppearanceObject35 = new DevExpress.Utils.SerializableAppearanceObject();
            DevExpress.Utils.SerializableAppearanceObject serializableAppearanceObject36 = new DevExpress.Utils.SerializableAppearanceObject();
            DevExpress.XtraEditors.Controls.EditorButtonImageOptions editorButtonImageOptions10 = new DevExpress.XtraEditors.Controls.EditorButtonImageOptions();
            DevExpress.Utils.SerializableAppearanceObject serializableAppearanceObject37 = new DevExpress.Utils.SerializableAppearanceObject();
            DevExpress.Utils.SerializableAppearanceObject serializableAppearanceObject38 = new DevExpress.Utils.SerializableAppearanceObject();
            DevExpress.Utils.SerializableAppearanceObject serializableAppearanceObject39 = new DevExpress.Utils.SerializableAppearanceObject();
            DevExpress.Utils.SerializableAppearanceObject serializableAppearanceObject40 = new DevExpress.Utils.SerializableAppearanceObject();
            this.gvCliente = new DevExpress.XtraGrid.GridControl();
            this.gridView1 = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.gridColumn1 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn2 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn3 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn4 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn5 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn6 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.repositoryItemCheckEdit1 = new DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit();
            this.radPanel1 = new Telerik.WinControls.UI.RadPanel();
            this.labelControl9 = new DevExpress.XtraEditors.LabelControl();
            this.chkActivo = new DevExpress.XtraEditors.CheckEdit();
            this.labelControl8 = new DevExpress.XtraEditors.LabelControl();
            this.txtFechaReg = new System.Windows.Forms.TextBox();
            this.labelControl7 = new DevExpress.XtraEditors.LabelControl();
            this.txtUserReg = new System.Windows.Forms.TextBox();
            this.labelControl6 = new DevExpress.XtraEditors.LabelControl();
            this.txtFechaNac = new System.Windows.Forms.DateTimePicker();
            this.labelControl5 = new DevExpress.XtraEditors.LabelControl();
            this.txtApeMat = new System.Windows.Forms.TextBox();
            this.labelControl4 = new DevExpress.XtraEditors.LabelControl();
            this.txtApePat = new System.Windows.Forms.TextBox();
            this.lblRazonNombre = new DevExpress.XtraEditors.LabelControl();
            this.txtRazonNom = new System.Windows.Forms.TextBox();
            this.txtNumeroDoc = new Telerik.WinControls.UI.RadMaskedEditBox();
            this.cboTipoCliente = new System.Windows.Forms.ComboBox();
            this.btn_Cancel = new DevExpress.XtraEditors.SimpleButton();
            this.btnGuardar = new DevExpress.XtraEditors.SimpleButton();
            this.labelControl2 = new DevExpress.XtraEditors.LabelControl();
            this.labelControl1 = new DevExpress.XtraEditors.LabelControl();
            this.btnNvDireccion = new DevExpress.XtraEditors.SimpleButton();
            this.btnNvTelef = new DevExpress.XtraEditors.SimpleButton();
            this.btnModificar = new DevExpress.XtraEditors.SimpleButton();
            this.btnNuevo = new DevExpress.XtraEditors.SimpleButton();
            this.splitter1 = new System.Windows.Forms.Splitter();
            this.xtraTabControl1 = new DevExpress.XtraTab.XtraTabControl();
            this.xtraTabPage1 = new DevExpress.XtraTab.XtraTabPage();
            this.gvDirecciones = new DevExpress.XtraGrid.GridControl();
            this.gridDirecciones = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.gridColumn14 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn16 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.repositoryItemLookUpEdit1 = new DevExpress.XtraEditors.Repository.RepositoryItemLookUpEdit();
            this.gridColumn17 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.repositoryItemCheckEdit3 = new DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit();
            this.gridColumn18 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.repositoryItemButtonEdit2 = new DevExpress.XtraEditors.Repository.RepositoryItemButtonEdit();
            this.gridColumn19 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn20 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn15 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.xtraTabPage2 = new DevExpress.XtraTab.XtraTabPage();
            this.gvTelefonos = new DevExpress.XtraGrid.GridControl();
            this.gridView2 = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.gridColumn8 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn9 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn10 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn13 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.repositoryItemCheckEdit2 = new DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit();
            this.gridColumn7 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.repositoryItemButtonEdit1 = new DevExpress.XtraEditors.Repository.RepositoryItemButtonEdit();
            this.gridColumn11 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn12 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.contextMenuStrip1 = new System.Windows.Forms.ContextMenuStrip(this.components);
            this.gridColumn21 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn22 = new DevExpress.XtraGrid.Columns.GridColumn();
            ((System.ComponentModel.ISupportInitialize)(this.gvCliente)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemCheckEdit1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.radPanel1)).BeginInit();
            this.radPanel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.chkActivo.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtNumeroDoc)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.xtraTabControl1)).BeginInit();
            this.xtraTabControl1.SuspendLayout();
            this.xtraTabPage1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.gvDirecciones)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridDirecciones)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemLookUpEdit1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemCheckEdit3)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemButtonEdit2)).BeginInit();
            this.xtraTabPage2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.gvTelefonos)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView2)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemCheckEdit2)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemButtonEdit1)).BeginInit();
            this.SuspendLayout();
            // 
            // gvCliente
            // 
            this.gvCliente.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.gvCliente.EmbeddedNavigator.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.gvCliente.Location = new System.Drawing.Point(370, 72);
            this.gvCliente.MainView = this.gridView1;
            this.gvCliente.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.gvCliente.Name = "gvCliente";
            this.gvCliente.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.repositoryItemCheckEdit1});
            this.gvCliente.Size = new System.Drawing.Size(1002, 427);
            this.gvCliente.TabIndex = 6;
            this.gvCliente.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gridView1});
            // 
            // gridView1
            // 
            this.gridView1.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.gridColumn1,
            this.gridColumn2,
            this.gridColumn3,
            this.gridColumn4,
            this.gridColumn5,
            this.gridColumn6});
            this.gridView1.CustomizationFormBounds = new System.Drawing.Rectangle(1128, 566, 212, 212);
            this.gridView1.GridControl = this.gvCliente;
            this.gridView1.Name = "gridView1";
            this.gridView1.OptionsBehavior.Editable = false;
            this.gridView1.OptionsFind.AlwaysVisible = true;
            this.gridView1.Click += new System.EventHandler(this.gridView1_Click);
            // 
            // gridColumn1
            // 
            this.gridColumn1.Caption = "Tipo Cliente";
            this.gridColumn1.FieldName = "c_tipocliente";
            this.gridColumn1.MinWidth = 25;
            this.gridColumn1.Name = "gridColumn1";
            this.gridColumn1.Visible = true;
            this.gridColumn1.VisibleIndex = 0;
            this.gridColumn1.Width = 94;
            // 
            // gridColumn2
            // 
            this.gridColumn2.Caption = "Nro. Documento";
            this.gridColumn2.FieldName = "c_documento";
            this.gridColumn2.MinWidth = 25;
            this.gridColumn2.Name = "gridColumn2";
            this.gridColumn2.Visible = true;
            this.gridColumn2.VisibleIndex = 1;
            this.gridColumn2.Width = 94;
            // 
            // gridColumn3
            // 
            this.gridColumn3.Caption = "Razon Social";
            this.gridColumn3.FieldName = "c_razonsocial";
            this.gridColumn3.MinWidth = 25;
            this.gridColumn3.Name = "gridColumn3";
            this.gridColumn3.Visible = true;
            this.gridColumn3.VisibleIndex = 2;
            this.gridColumn3.Width = 94;
            // 
            // gridColumn4
            // 
            this.gridColumn4.Caption = "Fecha Nac.";
            this.gridColumn4.FieldName = "d_fechanacimiento";
            this.gridColumn4.MinWidth = 25;
            this.gridColumn4.Name = "gridColumn4";
            this.gridColumn4.Visible = true;
            this.gridColumn4.VisibleIndex = 3;
            this.gridColumn4.Width = 94;
            // 
            // gridColumn5
            // 
            this.gridColumn5.Caption = "Fecha Registro";
            this.gridColumn5.FieldName = "d_Fecharegistro";
            this.gridColumn5.MinWidth = 25;
            this.gridColumn5.Name = "gridColumn5";
            this.gridColumn5.Visible = true;
            this.gridColumn5.VisibleIndex = 4;
            this.gridColumn5.Width = 94;
            // 
            // gridColumn6
            // 
            this.gridColumn6.Caption = "Usuario Reg.";
            this.gridColumn6.FieldName = "c_usuarioregistro";
            this.gridColumn6.MinWidth = 25;
            this.gridColumn6.Name = "gridColumn6";
            this.gridColumn6.Visible = true;
            this.gridColumn6.VisibleIndex = 5;
            this.gridColumn6.Width = 94;
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
            this.radPanel1.BackColor = System.Drawing.Color.WhiteSmoke;
            this.radPanel1.Controls.Add(this.labelControl9);
            this.radPanel1.Controls.Add(this.chkActivo);
            this.radPanel1.Controls.Add(this.labelControl8);
            this.radPanel1.Controls.Add(this.txtFechaReg);
            this.radPanel1.Controls.Add(this.labelControl7);
            this.radPanel1.Controls.Add(this.txtUserReg);
            this.radPanel1.Controls.Add(this.labelControl6);
            this.radPanel1.Controls.Add(this.txtFechaNac);
            this.radPanel1.Controls.Add(this.labelControl5);
            this.radPanel1.Controls.Add(this.txtApeMat);
            this.radPanel1.Controls.Add(this.labelControl4);
            this.radPanel1.Controls.Add(this.txtApePat);
            this.radPanel1.Controls.Add(this.lblRazonNombre);
            this.radPanel1.Controls.Add(this.txtRazonNom);
            this.radPanel1.Controls.Add(this.txtNumeroDoc);
            this.radPanel1.Controls.Add(this.cboTipoCliente);
            this.radPanel1.Controls.Add(this.btn_Cancel);
            this.radPanel1.Controls.Add(this.btnGuardar);
            this.radPanel1.Controls.Add(this.labelControl2);
            this.radPanel1.Controls.Add(this.labelControl1);
            this.radPanel1.Location = new System.Drawing.Point(10, 25);
            this.radPanel1.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.radPanel1.Name = "radPanel1";
            this.radPanel1.Size = new System.Drawing.Size(354, 799);
            this.radPanel1.TabIndex = 9;
            // 
            // labelControl9
            // 
            this.labelControl9.Appearance.Font = new System.Drawing.Font("Tahoma", 9F, System.Drawing.FontStyle.Bold);
            this.labelControl9.Appearance.ForeColor = System.Drawing.Color.MidnightBlue;
            this.labelControl9.Appearance.Options.UseFont = true;
            this.labelControl9.Appearance.Options.UseForeColor = true;
            this.labelControl9.LineStyle = System.Drawing.Drawing2D.DashStyle.Dash;
            this.labelControl9.LineVisible = true;
            this.labelControl9.Location = new System.Drawing.Point(50, 320);
            this.labelControl9.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.labelControl9.Name = "labelControl9";
            this.labelControl9.Size = new System.Drawing.Size(47, 18);
            this.labelControl9.TabIndex = 32;
            this.labelControl9.Text = "Activo";
            // 
            // chkActivo
            // 
            this.chkActivo.Enabled = false;
            this.chkActivo.Location = new System.Drawing.Point(107, 321);
            this.chkActivo.Name = "chkActivo";
            this.chkActivo.Properties.Caption = "";
            this.chkActivo.Size = new System.Drawing.Size(66, 19);
            this.chkActivo.TabIndex = 31;
            // 
            // labelControl8
            // 
            this.labelControl8.Appearance.Font = new System.Drawing.Font("Tahoma", 9F, System.Drawing.FontStyle.Bold);
            this.labelControl8.Appearance.ForeColor = System.Drawing.Color.MidnightBlue;
            this.labelControl8.Appearance.Options.UseFont = true;
            this.labelControl8.Appearance.Options.UseForeColor = true;
            this.labelControl8.LineStyle = System.Drawing.Drawing2D.DashStyle.Dash;
            this.labelControl8.LineVisible = true;
            this.labelControl8.Location = new System.Drawing.Point(20, 283);
            this.labelControl8.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.labelControl8.Name = "labelControl8";
            this.labelControl8.Size = new System.Drawing.Size(82, 18);
            this.labelControl8.TabIndex = 30;
            this.labelControl8.Text = "Fecha Reg.";
            // 
            // txtFechaReg
            // 
            this.txtFechaReg.Enabled = false;
            this.txtFechaReg.Font = new System.Drawing.Font("Arial Narrow", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtFechaReg.Location = new System.Drawing.Point(107, 276);
            this.txtFechaReg.Name = "txtFechaReg";
            this.txtFechaReg.Size = new System.Drawing.Size(218, 27);
            this.txtFechaReg.TabIndex = 29;
            // 
            // labelControl7
            // 
            this.labelControl7.Appearance.Font = new System.Drawing.Font("Tahoma", 9F, System.Drawing.FontStyle.Bold);
            this.labelControl7.Appearance.ForeColor = System.Drawing.Color.MidnightBlue;
            this.labelControl7.Appearance.Options.UseFont = true;
            this.labelControl7.Appearance.Options.UseForeColor = true;
            this.labelControl7.LineStyle = System.Drawing.Drawing2D.DashStyle.Dash;
            this.labelControl7.LineVisible = true;
            this.labelControl7.Location = new System.Drawing.Point(8, 249);
            this.labelControl7.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.labelControl7.Name = "labelControl7";
            this.labelControl7.Size = new System.Drawing.Size(96, 18);
            this.labelControl7.TabIndex = 28;
            this.labelControl7.Text = "Usuario Reg.";
            // 
            // txtUserReg
            // 
            this.txtUserReg.Enabled = false;
            this.txtUserReg.Font = new System.Drawing.Font("Arial Narrow", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtUserReg.Location = new System.Drawing.Point(107, 245);
            this.txtUserReg.Name = "txtUserReg";
            this.txtUserReg.Size = new System.Drawing.Size(218, 27);
            this.txtUserReg.TabIndex = 27;
            // 
            // labelControl6
            // 
            this.labelControl6.Appearance.Font = new System.Drawing.Font("Tahoma", 9F, System.Drawing.FontStyle.Bold);
            this.labelControl6.Appearance.ForeColor = System.Drawing.Color.MidnightBlue;
            this.labelControl6.Appearance.Options.UseFont = true;
            this.labelControl6.Appearance.Options.UseForeColor = true;
            this.labelControl6.LineStyle = System.Drawing.Drawing2D.DashStyle.Dash;
            this.labelControl6.LineVisible = true;
            this.labelControl6.Location = new System.Drawing.Point(8, 205);
            this.labelControl6.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.labelControl6.Name = "labelControl6";
            this.labelControl6.Size = new System.Drawing.Size(82, 18);
            this.labelControl6.TabIndex = 26;
            this.labelControl6.Text = "Fecha Nac.";
            // 
            // txtFechaNac
            // 
            this.txtFechaNac.CalendarFont = new System.Drawing.Font("Segoe UI", 8.25F);
            this.txtFechaNac.Enabled = false;
            this.txtFechaNac.Font = new System.Drawing.Font("Arial Narrow", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtFechaNac.Format = System.Windows.Forms.DateTimePickerFormat.Short;
            this.txtFechaNac.Location = new System.Drawing.Point(107, 205);
            this.txtFechaNac.Name = "txtFechaNac";
            this.txtFechaNac.Size = new System.Drawing.Size(218, 27);
            this.txtFechaNac.TabIndex = 25;
            // 
            // labelControl5
            // 
            this.labelControl5.Appearance.Font = new System.Drawing.Font("Tahoma", 9F, System.Drawing.FontStyle.Bold);
            this.labelControl5.Appearance.ForeColor = System.Drawing.Color.MidnightBlue;
            this.labelControl5.Appearance.Options.UseFont = true;
            this.labelControl5.Appearance.Options.UseForeColor = true;
            this.labelControl5.LineStyle = System.Drawing.Drawing2D.DashStyle.Dash;
            this.labelControl5.LineVisible = true;
            this.labelControl5.Location = new System.Drawing.Point(8, 169);
            this.labelControl5.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.labelControl5.Name = "labelControl5";
            this.labelControl5.Size = new System.Drawing.Size(95, 18);
            this.labelControl5.TabIndex = 24;
            this.labelControl5.Text = "Ape.Materno";
            // 
            // txtApeMat
            // 
            this.txtApeMat.Enabled = false;
            this.txtApeMat.Font = new System.Drawing.Font("Arial", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtApeMat.Location = new System.Drawing.Point(107, 165);
            this.txtApeMat.Name = "txtApeMat";
            this.txtApeMat.Size = new System.Drawing.Size(218, 27);
            this.txtApeMat.TabIndex = 23;
            // 
            // labelControl4
            // 
            this.labelControl4.Appearance.Font = new System.Drawing.Font("Tahoma", 9F, System.Drawing.FontStyle.Bold);
            this.labelControl4.Appearance.ForeColor = System.Drawing.Color.MidnightBlue;
            this.labelControl4.Appearance.Options.UseFont = true;
            this.labelControl4.Appearance.Options.UseForeColor = true;
            this.labelControl4.LineStyle = System.Drawing.Drawing2D.DashStyle.Dash;
            this.labelControl4.LineVisible = true;
            this.labelControl4.Location = new System.Drawing.Point(8, 135);
            this.labelControl4.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.labelControl4.Name = "labelControl4";
            this.labelControl4.Size = new System.Drawing.Size(96, 18);
            this.labelControl4.TabIndex = 22;
            this.labelControl4.Text = "Ape. Paterno";
            // 
            // txtApePat
            // 
            this.txtApePat.Enabled = false;
            this.txtApePat.Font = new System.Drawing.Font("Arial", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtApePat.Location = new System.Drawing.Point(107, 131);
            this.txtApePat.Name = "txtApePat";
            this.txtApePat.Size = new System.Drawing.Size(218, 27);
            this.txtApePat.TabIndex = 21;
            // 
            // lblRazonNombre
            // 
            this.lblRazonNombre.Appearance.Font = new System.Drawing.Font("Tahoma", 9F, System.Drawing.FontStyle.Bold);
            this.lblRazonNombre.Appearance.ForeColor = System.Drawing.Color.MidnightBlue;
            this.lblRazonNombre.Appearance.Options.UseFont = true;
            this.lblRazonNombre.Appearance.Options.UseForeColor = true;
            this.lblRazonNombre.LineStyle = System.Drawing.Drawing2D.DashStyle.Dash;
            this.lblRazonNombre.LineVisible = true;
            this.lblRazonNombre.Location = new System.Drawing.Point(8, 101);
            this.lblRazonNombre.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.lblRazonNombre.Name = "lblRazonNombre";
            this.lblRazonNombre.Size = new System.Drawing.Size(67, 18);
            this.lblRazonNombre.TabIndex = 20;
            this.lblRazonNombre.Text = "Nombres";
            // 
            // txtRazonNom
            // 
            this.txtRazonNom.Enabled = false;
            this.txtRazonNom.Font = new System.Drawing.Font("Arial", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtRazonNom.Location = new System.Drawing.Point(107, 94);
            this.txtRazonNom.Name = "txtRazonNom";
            this.txtRazonNom.Size = new System.Drawing.Size(218, 27);
            this.txtRazonNom.TabIndex = 19;
            // 
            // txtNumeroDoc
            // 
            this.txtNumeroDoc.Enabled = false;
            this.txtNumeroDoc.Font = new System.Drawing.Font("Arial", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtNumeroDoc.Location = new System.Drawing.Point(107, 59);
            this.txtNumeroDoc.Mask = "9999999";
            this.txtNumeroDoc.MaskType = Telerik.WinControls.UI.MaskType.Standard;
            this.txtNumeroDoc.Name = "txtNumeroDoc";
            this.txtNumeroDoc.PromptChar = ' ';
            this.txtNumeroDoc.Size = new System.Drawing.Size(217, 25);
            this.txtNumeroDoc.TabIndex = 18;
            this.txtNumeroDoc.TabStop = false;
            this.txtNumeroDoc.Text = "_______";
            // 
            // cboTipoCliente
            // 
            this.cboTipoCliente.Enabled = false;
            this.cboTipoCliente.Font = new System.Drawing.Font("Arial", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cboTipoCliente.FormattingEnabled = true;
            this.cboTipoCliente.Items.AddRange(new object[] {
            "Juridico",
            "Natural"});
            this.cboTipoCliente.Location = new System.Drawing.Point(107, 19);
            this.cboTipoCliente.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.cboTipoCliente.Name = "cboTipoCliente";
            this.cboTipoCliente.Size = new System.Drawing.Size(218, 27);
            this.cboTipoCliente.TabIndex = 17;
            this.cboTipoCliente.SelectedIndexChanged += new System.EventHandler(this.cboTipoCliente_SelectedIndexChanged);
            // 
            // btn_Cancel
            // 
            this.btn_Cancel.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.btn_Cancel.ImageOptions.Image = global::AppFarma.Properties.Resources.icn_cancel;
            this.btn_Cancel.Location = new System.Drawing.Point(179, 745);
            this.btn_Cancel.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.btn_Cancel.Name = "btn_Cancel";
            this.btn_Cancel.Size = new System.Drawing.Size(97, 39);
            this.btn_Cancel.TabIndex = 4;
            this.btn_Cancel.Text = "Cancelar";
            // 
            // btnGuardar
            // 
            this.btnGuardar.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.btnGuardar.Enabled = false;
            this.btnGuardar.ImageOptions.Image = global::AppFarma.Properties.Resources.icn_guardar;
            this.btnGuardar.Location = new System.Drawing.Point(87, 745);
            this.btnGuardar.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.btnGuardar.Name = "btnGuardar";
            this.btnGuardar.Size = new System.Drawing.Size(86, 39);
            this.btnGuardar.TabIndex = 8;
            this.btnGuardar.Text = "Guardar";
            this.btnGuardar.Click += new System.EventHandler(this.btnGuardar_Click);
            // 
            // labelControl2
            // 
            this.labelControl2.Appearance.Font = new System.Drawing.Font("Tahoma", 9F, System.Drawing.FontStyle.Bold);
            this.labelControl2.Appearance.ForeColor = System.Drawing.Color.MidnightBlue;
            this.labelControl2.Appearance.Options.UseFont = true;
            this.labelControl2.Appearance.Options.UseForeColor = true;
            this.labelControl2.LineStyle = System.Drawing.Drawing2D.DashStyle.Dash;
            this.labelControl2.LineVisible = true;
            this.labelControl2.Location = new System.Drawing.Point(18, 64);
            this.labelControl2.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.labelControl2.Name = "labelControl2";
            this.labelControl2.Size = new System.Drawing.Size(74, 18);
            this.labelControl2.TabIndex = 3;
            this.labelControl2.Text = "Documeto";
            // 
            // labelControl1
            // 
            this.labelControl1.Appearance.Font = new System.Drawing.Font("Tahoma", 9F, System.Drawing.FontStyle.Bold);
            this.labelControl1.Appearance.ForeColor = System.Drawing.Color.MidnightBlue;
            this.labelControl1.Appearance.Options.UseFont = true;
            this.labelControl1.Appearance.Options.UseForeColor = true;
            this.labelControl1.Location = new System.Drawing.Point(14, 25);
            this.labelControl1.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.labelControl1.Name = "labelControl1";
            this.labelControl1.Size = new System.Drawing.Size(89, 18);
            this.labelControl1.TabIndex = 1;
            this.labelControl1.Text = "Tipo Cliente";
            // 
            // btnNvDireccion
            // 
            this.btnNvDireccion.ImageOptions.Image = ((System.Drawing.Image)(resources.GetObject("btnNvDireccion.ImageOptions.Image")));
            this.btnNvDireccion.Location = new System.Drawing.Point(721, 25);
            this.btnNvDireccion.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.btnNvDireccion.Name = "btnNvDireccion";
            this.btnNvDireccion.Size = new System.Drawing.Size(150, 39);
            this.btnNvDireccion.TabIndex = 22;
            this.btnNvDireccion.Text = "Nueva Direcc.";
            this.btnNvDireccion.Click += new System.EventHandler(this.btnNvDireccion_Click);
            // 
            // btnNvTelef
            // 
            this.btnNvTelef.ImageOptions.Image = ((System.Drawing.Image)(resources.GetObject("btnNvTelef.ImageOptions.Image")));
            this.btnNvTelef.Location = new System.Drawing.Point(568, 25);
            this.btnNvTelef.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.btnNvTelef.Name = "btnNvTelef";
            this.btnNvTelef.Size = new System.Drawing.Size(148, 39);
            this.btnNvTelef.TabIndex = 21;
            this.btnNvTelef.Text = "Nuevo Telef.";
            this.btnNvTelef.Click += new System.EventHandler(this.btnPrincipAct_Click);
            // 
            // btnModificar
            // 
            this.btnModificar.ImageOptions.Image = global::AppFarma.Properties.Resources.icn_modificar;
            this.btnModificar.Location = new System.Drawing.Point(462, 25);
            this.btnModificar.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.btnModificar.Name = "btnModificar";
            this.btnModificar.Size = new System.Drawing.Size(100, 39);
            this.btnModificar.TabIndex = 20;
            this.btnModificar.Text = "Modificar";
            // 
            // btnNuevo
            // 
            this.btnNuevo.ImageOptions.Image = global::AppFarma.Properties.Resources.icn_agregar;
            this.btnNuevo.Location = new System.Drawing.Point(370, 25);
            this.btnNuevo.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.btnNuevo.Name = "btnNuevo";
            this.btnNuevo.Size = new System.Drawing.Size(86, 39);
            this.btnNuevo.TabIndex = 19;
            this.btnNuevo.Text = "Nuevo";
            this.btnNuevo.Click += new System.EventHandler(this.btnNuevo_Click);
            // 
            // splitter1
            // 
            this.splitter1.Location = new System.Drawing.Point(0, 0);
            this.splitter1.Name = "splitter1";
            this.splitter1.Size = new System.Drawing.Size(3, 846);
            this.splitter1.TabIndex = 23;
            this.splitter1.TabStop = false;
            // 
            // xtraTabControl1
            // 
            this.xtraTabControl1.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.xtraTabControl1.Location = new System.Drawing.Point(370, 506);
            this.xtraTabControl1.Name = "xtraTabControl1";
            this.xtraTabControl1.SelectedTabPage = this.xtraTabPage1;
            this.xtraTabControl1.Size = new System.Drawing.Size(1002, 318);
            this.xtraTabControl1.TabIndex = 24;
            this.xtraTabControl1.TabPages.AddRange(new DevExpress.XtraTab.XtraTabPage[] {
            this.xtraTabPage1,
            this.xtraTabPage2});
            // 
            // xtraTabPage1
            // 
            this.xtraTabPage1.Controls.Add(this.gvDirecciones);
            this.xtraTabPage1.Name = "xtraTabPage1";
            this.xtraTabPage1.Size = new System.Drawing.Size(995, 284);
            this.xtraTabPage1.Text = "Direcciones";
            // 
            // gvDirecciones
            // 
            this.gvDirecciones.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.gvDirecciones.Location = new System.Drawing.Point(1, 0);
            this.gvDirecciones.MainView = this.gridDirecciones;
            this.gvDirecciones.Name = "gvDirecciones";
            this.gvDirecciones.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.repositoryItemButtonEdit2,
            this.repositoryItemCheckEdit3,
            this.repositoryItemLookUpEdit1});
            this.gvDirecciones.Size = new System.Drawing.Size(992, 284);
            this.gvDirecciones.TabIndex = 1;
            this.gvDirecciones.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gridDirecciones});
            // 
            // gridDirecciones
            // 
            this.gridDirecciones.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.gridColumn14,
            this.gridColumn16,
            this.gridColumn17,
            this.gridColumn18,
            this.gridColumn19,
            this.gridColumn20,
            this.gridColumn15,
            this.gridColumn21,
            this.gridColumn22});
            this.gridDirecciones.GridControl = this.gvDirecciones;
            this.gridDirecciones.Name = "gridDirecciones";
            this.gridDirecciones.OptionsView.ShowGroupPanel = false;
            // 
            // gridColumn14
            // 
            this.gridColumn14.Caption = "Direccion";
            this.gridColumn14.FieldName = "c_descripciondir";
            this.gridColumn14.MinWidth = 25;
            this.gridColumn14.Name = "gridColumn14";
            this.gridColumn14.OptionsColumn.ReadOnly = true;
            this.gridColumn14.Visible = true;
            this.gridColumn14.VisibleIndex = 0;
            this.gridColumn14.Width = 451;
            // 
            // gridColumn16
            // 
            this.gridColumn16.Caption = "Ubigeo";
            this.gridColumn16.ColumnEdit = this.repositoryItemLookUpEdit1;
            this.gridColumn16.FieldName = "c_ubigeo";
            this.gridColumn16.MinWidth = 25;
            this.gridColumn16.Name = "gridColumn16";
            this.gridColumn16.OptionsColumn.ReadOnly = true;
            this.gridColumn16.Visible = true;
            this.gridColumn16.VisibleIndex = 1;
            this.gridColumn16.Width = 94;
            // 
            // repositoryItemLookUpEdit1
            // 
            this.repositoryItemLookUpEdit1.AutoHeight = false;
            this.repositoryItemLookUpEdit1.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.repositoryItemLookUpEdit1.Name = "repositoryItemLookUpEdit1";
            // 
            // gridColumn17
            // 
            this.gridColumn17.Caption = "Estado";
            this.gridColumn17.ColumnEdit = this.repositoryItemCheckEdit3;
            this.gridColumn17.FieldName = "c_estado";
            this.gridColumn17.MinWidth = 25;
            this.gridColumn17.Name = "gridColumn17";
            this.gridColumn17.OptionsColumn.ReadOnly = true;
            this.gridColumn17.Visible = true;
            this.gridColumn17.VisibleIndex = 2;
            this.gridColumn17.Width = 50;
            // 
            // repositoryItemCheckEdit3
            // 
            this.repositoryItemCheckEdit3.AutoHeight = false;
            this.repositoryItemCheckEdit3.Name = "repositoryItemCheckEdit3";
            this.repositoryItemCheckEdit3.ReadOnly = true;
            // 
            // gridColumn18
            // 
            this.gridColumn18.Caption = "Editar";
            this.gridColumn18.ColumnEdit = this.repositoryItemButtonEdit2;
            this.gridColumn18.MinWidth = 25;
            this.gridColumn18.Name = "gridColumn18";
            this.gridColumn18.Visible = true;
            this.gridColumn18.VisibleIndex = 3;
            this.gridColumn18.Width = 60;
            // 
            // repositoryItemButtonEdit2
            // 
            this.repositoryItemButtonEdit2.AutoHeight = false;
            editorButtonImageOptions9.Image = global::AppFarma.Properties.Resources.icn_modificar;
            serializableAppearanceObject33.Image = ((System.Drawing.Image)(resources.GetObject("serializableAppearanceObject33.Image")));
            serializableAppearanceObject33.Options.UseImage = true;
            this.repositoryItemButtonEdit2.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Glyph, "", -1, true, true, false, editorButtonImageOptions9, new DevExpress.Utils.KeyShortcut(System.Windows.Forms.Keys.None), serializableAppearanceObject33, serializableAppearanceObject34, serializableAppearanceObject35, serializableAppearanceObject36, "", null, null, DevExpress.Utils.ToolTipAnchor.Default)});
            this.repositoryItemButtonEdit2.Name = "repositoryItemButtonEdit2";
            this.repositoryItemButtonEdit2.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.HideTextEditor;
            this.repositoryItemButtonEdit2.ButtonClick += new DevExpress.XtraEditors.Controls.ButtonPressedEventHandler(this.repositoryItemButtonEdit2_ButtonClick);
            // 
            // gridColumn19
            // 
            this.gridColumn19.Caption = "Tipo Cli.";
            this.gridColumn19.FieldName = "c_tipocliente";
            this.gridColumn19.MinWidth = 25;
            this.gridColumn19.Name = "gridColumn19";
            this.gridColumn19.OptionsColumn.ReadOnly = true;
            this.gridColumn19.Width = 94;
            // 
            // gridColumn20
            // 
            this.gridColumn20.Caption = "Secuencia";
            this.gridColumn20.FieldName = "n_secuenciadireccion";
            this.gridColumn20.MinWidth = 25;
            this.gridColumn20.Name = "gridColumn20";
            this.gridColumn20.Width = 94;
            // 
            // gridColumn15
            // 
            this.gridColumn15.Caption = "gridColumn15";
            this.gridColumn15.FieldName = "c_documento";
            this.gridColumn15.MinWidth = 25;
            this.gridColumn15.Name = "gridColumn15";
            this.gridColumn15.Width = 94;
            // 
            // xtraTabPage2
            // 
            this.xtraTabPage2.Controls.Add(this.gvTelefonos);
            this.xtraTabPage2.Name = "xtraTabPage2";
            this.xtraTabPage2.Size = new System.Drawing.Size(995, 284);
            this.xtraTabPage2.Text = "Telefonos";
            // 
            // gvTelefonos
            // 
            this.gvTelefonos.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.gvTelefonos.Location = new System.Drawing.Point(3, 0);
            this.gvTelefonos.MainView = this.gridView2;
            this.gvTelefonos.Name = "gvTelefonos";
            this.gvTelefonos.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.repositoryItemButtonEdit1,
            this.repositoryItemCheckEdit2});
            this.gvTelefonos.Size = new System.Drawing.Size(992, 284);
            this.gvTelefonos.TabIndex = 0;
            this.gvTelefonos.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gridView2});
            // 
            // gridView2
            // 
            this.gridView2.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.gridColumn8,
            this.gridColumn9,
            this.gridColumn10,
            this.gridColumn13,
            this.gridColumn7,
            this.gridColumn11,
            this.gridColumn12});
            this.gridView2.GridControl = this.gvTelefonos;
            this.gridView2.Name = "gridView2";
            this.gridView2.OptionsView.ShowGroupPanel = false;
            // 
            // gridColumn8
            // 
            this.gridColumn8.Caption = "DNI/RUC";
            this.gridColumn8.FieldName = "c_codcliente";
            this.gridColumn8.MinWidth = 25;
            this.gridColumn8.Name = "gridColumn8";
            this.gridColumn8.Visible = true;
            this.gridColumn8.VisibleIndex = 0;
            this.gridColumn8.Width = 233;
            // 
            // gridColumn9
            // 
            this.gridColumn9.Caption = "Numero";
            this.gridColumn9.FieldName = "c_numero";
            this.gridColumn9.MinWidth = 25;
            this.gridColumn9.Name = "gridColumn9";
            this.gridColumn9.OptionsColumn.ReadOnly = true;
            this.gridColumn9.Visible = true;
            this.gridColumn9.VisibleIndex = 1;
            this.gridColumn9.Width = 233;
            // 
            // gridColumn10
            // 
            this.gridColumn10.Caption = "Nombre Contacto";
            this.gridColumn10.FieldName = "c_nombrecontacto";
            this.gridColumn10.MinWidth = 25;
            this.gridColumn10.Name = "gridColumn10";
            this.gridColumn10.OptionsColumn.ReadOnly = true;
            this.gridColumn10.Visible = true;
            this.gridColumn10.VisibleIndex = 2;
            this.gridColumn10.Width = 233;
            // 
            // gridColumn13
            // 
            this.gridColumn13.Caption = "Estado";
            this.gridColumn13.ColumnEdit = this.repositoryItemCheckEdit2;
            this.gridColumn13.FieldName = "c_estado";
            this.gridColumn13.MinWidth = 25;
            this.gridColumn13.Name = "gridColumn13";
            this.gridColumn13.Visible = true;
            this.gridColumn13.VisibleIndex = 3;
            this.gridColumn13.Width = 233;
            // 
            // repositoryItemCheckEdit2
            // 
            this.repositoryItemCheckEdit2.AutoHeight = false;
            this.repositoryItemCheckEdit2.Name = "repositoryItemCheckEdit2";
            this.repositoryItemCheckEdit2.ReadOnly = true;
            // 
            // gridColumn7
            // 
            this.gridColumn7.Caption = "Editar";
            this.gridColumn7.ColumnEdit = this.repositoryItemButtonEdit1;
            this.gridColumn7.MinWidth = 25;
            this.gridColumn7.Name = "gridColumn7";
            this.gridColumn7.Visible = true;
            this.gridColumn7.VisibleIndex = 4;
            this.gridColumn7.Width = 36;
            // 
            // repositoryItemButtonEdit1
            // 
            this.repositoryItemButtonEdit1.AutoHeight = false;
            editorButtonImageOptions10.Image = global::AppFarma.Properties.Resources.icn_modificar;
            serializableAppearanceObject37.Image = ((System.Drawing.Image)(resources.GetObject("serializableAppearanceObject37.Image")));
            serializableAppearanceObject37.Options.UseImage = true;
            this.repositoryItemButtonEdit1.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Glyph, "", -1, true, true, false, editorButtonImageOptions10, new DevExpress.Utils.KeyShortcut(System.Windows.Forms.Keys.None), serializableAppearanceObject37, serializableAppearanceObject38, serializableAppearanceObject39, serializableAppearanceObject40, "", null, null, DevExpress.Utils.ToolTipAnchor.Default)});
            this.repositoryItemButtonEdit1.Name = "repositoryItemButtonEdit1";
            this.repositoryItemButtonEdit1.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.HideTextEditor;
            this.repositoryItemButtonEdit1.ButtonClick += new DevExpress.XtraEditors.Controls.ButtonPressedEventHandler(this.repositoryItemButtonEdit1_ButtonClick);
            // 
            // gridColumn11
            // 
            this.gridColumn11.Caption = "Tipo Cli.";
            this.gridColumn11.FieldName = "c_tipocliente";
            this.gridColumn11.MinWidth = 25;
            this.gridColumn11.Name = "gridColumn11";
            this.gridColumn11.OptionsColumn.ReadOnly = true;
            this.gridColumn11.Width = 94;
            // 
            // gridColumn12
            // 
            this.gridColumn12.Caption = "linea";
            this.gridColumn12.FieldName = "n_linea";
            this.gridColumn12.MinWidth = 25;
            this.gridColumn12.Name = "gridColumn12";
            this.gridColumn12.Width = 94;
            // 
            // contextMenuStrip1
            // 
            this.contextMenuStrip1.ImageScalingSize = new System.Drawing.Size(20, 20);
            this.contextMenuStrip1.Name = "contextMenuStrip1";
            this.contextMenuStrip1.Size = new System.Drawing.Size(67, 4);
            // 
            // gridColumn21
            // 
            this.gridColumn21.Caption = "gridColumn21";
            this.gridColumn21.FieldName = "c_latitud";
            this.gridColumn21.MinWidth = 25;
            this.gridColumn21.Name = "gridColumn21";
            this.gridColumn21.Width = 94;
            // 
            // gridColumn22
            // 
            this.gridColumn22.Caption = "gridColumn22";
            this.gridColumn22.FieldName = "c_longitud";
            this.gridColumn22.MinWidth = 25;
            this.gridColumn22.Name = "gridColumn22";
            this.gridColumn22.Width = 94;
            // 
            // WFCliente
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1373, 846);
            this.Controls.Add(this.xtraTabControl1);
            this.Controls.Add(this.splitter1);
            this.Controls.Add(this.btnNvDireccion);
            this.Controls.Add(this.btnNvTelef);
            this.Controls.Add(this.btnModificar);
            this.Controls.Add(this.btnNuevo);
            this.Controls.Add(this.radPanel1);
            this.Controls.Add(this.gvCliente);
            this.Name = "WFCliente";
            this.Text = "Clientes";
            this.Load += new System.EventHandler(this.WFCliente_Load);
            ((System.ComponentModel.ISupportInitialize)(this.gvCliente)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemCheckEdit1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.radPanel1)).EndInit();
            this.radPanel1.ResumeLayout(false);
            this.radPanel1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.chkActivo.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtNumeroDoc)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.xtraTabControl1)).EndInit();
            this.xtraTabControl1.ResumeLayout(false);
            this.xtraTabPage1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.gvDirecciones)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridDirecciones)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemLookUpEdit1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemCheckEdit3)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemButtonEdit2)).EndInit();
            this.xtraTabPage2.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.gvTelefonos)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView2)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemCheckEdit2)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemButtonEdit1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.GridControl gvCliente;
        private DevExpress.XtraGrid.Views.Grid.GridView gridView1;
        private DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit repositoryItemCheckEdit1;
        private Telerik.WinControls.UI.RadPanel radPanel1;
        private System.Windows.Forms.ComboBox cboTipoCliente;
        private SimpleButton btn_Cancel;
        private SimpleButton btnGuardar;
        private LabelControl labelControl2;
        private LabelControl labelControl1;
        private SimpleButton btnNvDireccion;
        private SimpleButton btnNvTelef;
        private SimpleButton btnModificar;
        private SimpleButton btnNuevo;
        private Telerik.WinControls.UI.RadMaskedEditBox txtNumeroDoc;
        private System.Windows.Forms.DateTimePicker txtFechaNac;
        private LabelControl labelControl5;
        private System.Windows.Forms.TextBox txtApeMat;
        private LabelControl labelControl4;
        private System.Windows.Forms.TextBox txtApePat;
        private LabelControl lblRazonNombre;
        private System.Windows.Forms.TextBox txtRazonNom;
        private LabelControl labelControl6;
        private LabelControl labelControl8;
        private System.Windows.Forms.TextBox txtFechaReg;
        private LabelControl labelControl7;
        private System.Windows.Forms.TextBox txtUserReg;
        private LabelControl labelControl9;
        private CheckEdit chkActivo;
        private System.Windows.Forms.Splitter splitter1;
        private DevExpress.XtraTab.XtraTabControl xtraTabControl1;
        private DevExpress.XtraTab.XtraTabPage xtraTabPage1;
        private DevExpress.XtraTab.XtraTabPage xtraTabPage2;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn1;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn2;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn3;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn4;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn5;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn6;
        private GridControl gvTelefonos;
        private GridView gridView2;
        private GridColumn gridColumn7;
        private RepositoryItemButtonEdit repositoryItemButtonEdit1;
        private GridColumn gridColumn8;
        private GridColumn gridColumn9;
        private GridColumn gridColumn10;
        private GridColumn gridColumn13;
        private RepositoryItemCheckEdit repositoryItemCheckEdit2;
        private GridColumn gridColumn11;
        private GridColumn gridColumn12;
        private System.Windows.Forms.ContextMenuStrip contextMenuStrip1;
        private GridControl gvDirecciones;
        private GridView gridDirecciones;
        private GridColumn gridColumn14;
        private GridColumn gridColumn17;
        private RepositoryItemCheckEdit repositoryItemCheckEdit3;
        private GridColumn gridColumn18;
        private RepositoryItemButtonEdit repositoryItemButtonEdit2;
        private GridColumn gridColumn19;
        private GridColumn gridColumn20;
        private GridColumn gridColumn15;
        private GridColumn gridColumn16;
        private RepositoryItemLookUpEdit repositoryItemLookUpEdit1;
        private GridColumn gridColumn21;
        private GridColumn gridColumn22;
    }
}
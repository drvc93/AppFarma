using DevExpress.XtraBars;
using DevExpress.XtraBars.Ribbon;

namespace AppFarma
{
    partial class Form1
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Form1));
            this.ribbonControl1 = new DevExpress.XtraBars.Ribbon.RibbonControl();
            this.applicationMenu1 = new DevExpress.XtraBars.Ribbon.ApplicationMenu(this.components);
            this.bbtnCategoria = new DevExpress.XtraBars.BarButtonItem();
            this.barbtnSubCategorias = new DevExpress.XtraBars.BarButtonItem();
            this.barlblUser = new DevExpress.XtraBars.BarStaticItem();
            this.barButtonItem1 = new DevExpress.XtraBars.BarButtonItem();
            this.barbtnPrincpAct = new DevExpress.XtraBars.BarButtonItem();
            this.barbtnCliente = new DevExpress.XtraBars.BarButtonItem();
            this.barbtnVentas = new DevExpress.XtraBars.BarButtonItem();
            this.barbtnPresentacion = new DevExpress.XtraBars.BarButtonItem();
            this.barbtnPresProdc = new DevExpress.XtraBars.BarButtonItem();
            this.ribbonPage1 = new DevExpress.XtraBars.Ribbon.RibbonPage();
            this.ribbonPageGroup1 = new DevExpress.XtraBars.Ribbon.RibbonPageGroup();
            this.ribbonPage3 = new DevExpress.XtraBars.Ribbon.RibbonPage();
            this.ribbonPageGroup3 = new DevExpress.XtraBars.Ribbon.RibbonPageGroup();
            this.ribbonPage2 = new DevExpress.XtraBars.Ribbon.RibbonPage();
            this.ribbonPageGroup2 = new DevExpress.XtraBars.Ribbon.RibbonPageGroup();
            this.ribbonStatusBar1 = new DevExpress.XtraBars.Ribbon.RibbonStatusBar();
            this.xtraTabbedMdiManager1 = new DevExpress.XtraTabbedMdi.XtraTabbedMdiManager(this.components);
            ((System.ComponentModel.ISupportInitialize)(this.ribbonControl1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.applicationMenu1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.xtraTabbedMdiManager1)).BeginInit();
            this.SuspendLayout();
            // 
            // ribbonControl1
            // 
            this.ribbonControl1.ApplicationButtonDropDownControl = this.applicationMenu1;
            this.ribbonControl1.ExpandCollapseItem.Id = 0;
            this.ribbonControl1.Items.AddRange(new DevExpress.XtraBars.BarItem[] {
            this.ribbonControl1.ExpandCollapseItem,
            this.bbtnCategoria,
            this.barbtnSubCategorias,
            this.barlblUser,
            this.barButtonItem1,
            this.barbtnPrincpAct,
            this.barbtnCliente,
            this.barbtnVentas,
            this.barbtnPresentacion,
            this.barbtnPresProdc});
            this.ribbonControl1.Location = new System.Drawing.Point(0, 0);
            this.ribbonControl1.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.ribbonControl1.MaxItemId = 11;
            this.ribbonControl1.Name = "ribbonControl1";
            this.ribbonControl1.Pages.AddRange(new DevExpress.XtraBars.Ribbon.RibbonPage[] {
            this.ribbonPage1,
            this.ribbonPage3,
            this.ribbonPage2});
            this.ribbonControl1.RibbonStyle = DevExpress.XtraBars.Ribbon.RibbonControlStyle.Office2010;
            this.ribbonControl1.Size = new System.Drawing.Size(884, 193);
            this.ribbonControl1.StatusBar = this.ribbonStatusBar1;
            // 
            // applicationMenu1
            // 
            this.applicationMenu1.Name = "applicationMenu1";
            this.applicationMenu1.Ribbon = this.ribbonControl1;
            // 
            // bbtnCategoria
            // 
            this.bbtnCategoria.Caption = "Categorias";
            this.bbtnCategoria.Id = 1;
            this.bbtnCategoria.ImageOptions.Image = ((System.Drawing.Image)(resources.GetObject("bbtnCategoria.ImageOptions.Image")));
            this.bbtnCategoria.Name = "bbtnCategoria";
            this.bbtnCategoria.RibbonStyle = ((DevExpress.XtraBars.Ribbon.RibbonItemStyles)((DevExpress.XtraBars.Ribbon.RibbonItemStyles.Large | DevExpress.XtraBars.Ribbon.RibbonItemStyles.SmallWithoutText)));
            this.bbtnCategoria.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.bbtnCategoria_ItemClick);
            // 
            // barbtnSubCategorias
            // 
            this.barbtnSubCategorias.Caption = "Sub Categorias";
            this.barbtnSubCategorias.Id = 3;
            this.barbtnSubCategorias.ImageOptions.AllowGlyphSkinning = DevExpress.Utils.DefaultBoolean.True;
            this.barbtnSubCategorias.ImageOptions.Image = ((System.Drawing.Image)(resources.GetObject("barbtnSubCategorias.ImageOptions.Image")));
            this.barbtnSubCategorias.Name = "barbtnSubCategorias";
            this.barbtnSubCategorias.RibbonStyle = ((DevExpress.XtraBars.Ribbon.RibbonItemStyles)(((DevExpress.XtraBars.Ribbon.RibbonItemStyles.Large | DevExpress.XtraBars.Ribbon.RibbonItemStyles.SmallWithText) 
            | DevExpress.XtraBars.Ribbon.RibbonItemStyles.SmallWithoutText)));
            this.barbtnSubCategorias.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barbtnSubCategorias_ItemClick);
            // 
            // barlblUser
            // 
            this.barlblUser.Caption = "barStaticItem1";
            this.barlblUser.Id = 4;
            this.barlblUser.Name = "barlblUser";
            // 
            // barButtonItem1
            // 
            this.barButtonItem1.Caption = "Producto";
            this.barButtonItem1.Id = 5;
            this.barButtonItem1.ImageOptions.Image = global::AppFarma.Properties.Resources.icn_produc32;
            this.barButtonItem1.Name = "barButtonItem1";
            this.barButtonItem1.RibbonStyle = ((DevExpress.XtraBars.Ribbon.RibbonItemStyles)(((DevExpress.XtraBars.Ribbon.RibbonItemStyles.Large | DevExpress.XtraBars.Ribbon.RibbonItemStyles.SmallWithText) 
            | DevExpress.XtraBars.Ribbon.RibbonItemStyles.SmallWithoutText)));
            this.barButtonItem1.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barButtonItem1_ItemClick);
            // 
            // barbtnPrincpAct
            // 
            this.barbtnPrincpAct.Caption = "Principio Activos";
            this.barbtnPrincpAct.Id = 6;
            this.barbtnPrincpAct.ImageOptions.Image = global::AppFarma.Properties.Resources.icn_princp_Act;
            this.barbtnPrincpAct.Name = "barbtnPrincpAct";
            this.barbtnPrincpAct.RibbonStyle = ((DevExpress.XtraBars.Ribbon.RibbonItemStyles)(((DevExpress.XtraBars.Ribbon.RibbonItemStyles.Large | DevExpress.XtraBars.Ribbon.RibbonItemStyles.SmallWithText) 
            | DevExpress.XtraBars.Ribbon.RibbonItemStyles.SmallWithoutText)));
            this.barbtnPrincpAct.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barbtnPrincpAct_ItemClick);
            // 
            // barbtnCliente
            // 
            this.barbtnCliente.Caption = "Clientes";
            this.barbtnCliente.Id = 7;
            this.barbtnCliente.ImageOptions.Image = ((System.Drawing.Image)(resources.GetObject("barbtnCliente.ImageOptions.Image")));
            this.barbtnCliente.Name = "barbtnCliente";
            this.barbtnCliente.RibbonStyle = ((DevExpress.XtraBars.Ribbon.RibbonItemStyles)(((DevExpress.XtraBars.Ribbon.RibbonItemStyles.Large | DevExpress.XtraBars.Ribbon.RibbonItemStyles.SmallWithText) 
            | DevExpress.XtraBars.Ribbon.RibbonItemStyles.SmallWithoutText)));
            this.barbtnCliente.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barbtnCliente_ItemClick);
            // 
            // barbtnVentas
            // 
            this.barbtnVentas.Caption = "Ventas";
            this.barbtnVentas.Id = 8;
            this.barbtnVentas.ImageOptions.Image = ((System.Drawing.Image)(resources.GetObject("barbtnVentas.ImageOptions.Image")));
            this.barbtnVentas.Name = "barbtnVentas";
            this.barbtnVentas.RibbonStyle = ((DevExpress.XtraBars.Ribbon.RibbonItemStyles)(((DevExpress.XtraBars.Ribbon.RibbonItemStyles.Large | DevExpress.XtraBars.Ribbon.RibbonItemStyles.SmallWithText) 
            | DevExpress.XtraBars.Ribbon.RibbonItemStyles.SmallWithoutText)));
            // 
            // barbtnPresentacion
            // 
            this.barbtnPresentacion.Caption = "Presentaciones";
            this.barbtnPresentacion.Id = 9;
            this.barbtnPresentacion.ImageOptions.Image = ((System.Drawing.Image)(resources.GetObject("barbtnPresentacion.ImageOptions.Image")));
            this.barbtnPresentacion.Name = "barbtnPresentacion";
            this.barbtnPresentacion.RibbonStyle = ((DevExpress.XtraBars.Ribbon.RibbonItemStyles)(((DevExpress.XtraBars.Ribbon.RibbonItemStyles.Large | DevExpress.XtraBars.Ribbon.RibbonItemStyles.SmallWithText) 
            | DevExpress.XtraBars.Ribbon.RibbonItemStyles.SmallWithoutText)));
            this.barbtnPresentacion.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barbtnPresentacion_ItemClick);
            // 
            // barbtnPresProdc
            // 
            this.barbtnPresProdc.Caption = "Presentacion por Producto";
            this.barbtnPresProdc.Id = 10;
            this.barbtnPresProdc.ImageOptions.Image = ((System.Drawing.Image)(resources.GetObject("barbtnPresProdc.ImageOptions.Image")));
            this.barbtnPresProdc.Name = "barbtnPresProdc";
            this.barbtnPresProdc.RibbonStyle = ((DevExpress.XtraBars.Ribbon.RibbonItemStyles)(((DevExpress.XtraBars.Ribbon.RibbonItemStyles.Large | DevExpress.XtraBars.Ribbon.RibbonItemStyles.SmallWithText) 
            | DevExpress.XtraBars.Ribbon.RibbonItemStyles.SmallWithoutText)));
            this.barbtnPresProdc.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barbtnPresProdc_ItemClick);
            // 
            // ribbonPage1
            // 
            this.ribbonPage1.Groups.AddRange(new DevExpress.XtraBars.Ribbon.RibbonPageGroup[] {
            this.ribbonPageGroup1});
            this.ribbonPage1.ImageOptions.Image = ((System.Drawing.Image)(resources.GetObject("ribbonPage1.ImageOptions.Image")));
            this.ribbonPage1.Name = "ribbonPage1";
            this.ribbonPage1.Text = "Maestros";
            // 
            // ribbonPageGroup1
            // 
            this.ribbonPageGroup1.ItemLinks.Add(this.bbtnCategoria);
            this.ribbonPageGroup1.ItemLinks.Add(this.barbtnSubCategorias);
            this.ribbonPageGroup1.ItemLinks.Add(this.barButtonItem1);
            this.ribbonPageGroup1.ItemLinks.Add(this.barbtnPrincpAct);
            this.ribbonPageGroup1.ItemLinks.Add(this.barbtnCliente);
            this.ribbonPageGroup1.Name = "ribbonPageGroup1";
            // 
            // ribbonPage3
            // 
            this.ribbonPage3.Groups.AddRange(new DevExpress.XtraBars.Ribbon.RibbonPageGroup[] {
            this.ribbonPageGroup3});
            this.ribbonPage3.ImageOptions.Image = ((System.Drawing.Image)(resources.GetObject("ribbonPage3.ImageOptions.Image")));
            this.ribbonPage3.Name = "ribbonPage3";
            this.ribbonPage3.Text = "Producto";
            // 
            // ribbonPageGroup3
            // 
            this.ribbonPageGroup3.ItemLinks.Add(this.barbtnPresentacion);
            this.ribbonPageGroup3.ItemLinks.Add(this.barbtnPresProdc);
            this.ribbonPageGroup3.Name = "ribbonPageGroup3";
            this.ribbonPageGroup3.Text = "Presentacion";
            // 
            // ribbonPage2
            // 
            this.ribbonPage2.Groups.AddRange(new DevExpress.XtraBars.Ribbon.RibbonPageGroup[] {
            this.ribbonPageGroup2});
            this.ribbonPage2.ImageOptions.Image = ((System.Drawing.Image)(resources.GetObject("ribbonPage2.ImageOptions.Image")));
            this.ribbonPage2.Name = "ribbonPage2";
            this.ribbonPage2.Text = "Ventas";
            // 
            // ribbonPageGroup2
            // 
            this.ribbonPageGroup2.ItemLinks.Add(this.barbtnVentas);
            this.ribbonPageGroup2.Name = "ribbonPageGroup2";
            this.ribbonPageGroup2.Text = "Ventas";
            // 
            // ribbonStatusBar1
            // 
            this.ribbonStatusBar1.ItemLinks.Add(this.barlblUser);
            this.ribbonStatusBar1.Location = new System.Drawing.Point(0, 406);
            this.ribbonStatusBar1.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.ribbonStatusBar1.Name = "ribbonStatusBar1";
            this.ribbonStatusBar1.Ribbon = this.ribbonControl1;
            this.ribbonStatusBar1.Size = new System.Drawing.Size(884, 37);
            // 
            // xtraTabbedMdiManager1
            // 
            this.xtraTabbedMdiManager1.MdiParent = this;
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(884, 443);
            this.Controls.Add(this.ribbonStatusBar1);
            this.Controls.Add(this.ribbonControl1);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.IsMdiContainer = true;
            this.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.Name = "Form1";
            this.Ribbon = this.ribbonControl1;
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.StatusBar = this.ribbonStatusBar1;
            this.Text = "Aplicacion";
            this.WindowState = System.Windows.Forms.FormWindowState.Maximized;
            ((System.ComponentModel.ISupportInitialize)(this.ribbonControl1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.applicationMenu1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.xtraTabbedMdiManager1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraBars.Ribbon.RibbonControl ribbonControl1;
        private DevExpress.XtraBars.Ribbon.RibbonPage ribbonPage1;
        private DevExpress.XtraBars.Ribbon.RibbonPageGroup ribbonPageGroup1;
        private DevExpress.XtraBars.BarButtonItem bbtnCategoria;
        private DevExpress.XtraTabbedMdi.XtraTabbedMdiManager xtraTabbedMdiManager1;
        private DevExpress.XtraBars.BarButtonItem barbtnSubCategorias;
        private BarStaticItem barlblUser;
        private RibbonStatusBar ribbonStatusBar1;
        private BarButtonItem barButtonItem1;
        private BarButtonItem barbtnPrincpAct;
        private BarButtonItem barbtnCliente;
        private BarButtonItem barbtnVentas;
        private RibbonPage ribbonPage2;
        private RibbonPageGroup ribbonPageGroup2;
        private BarButtonItem barbtnPresentacion;
        private RibbonPage ribbonPage3;
        private RibbonPageGroup ribbonPageGroup3;
        private ApplicationMenu applicationMenu1;
        private BarButtonItem barbtnPresProdc;
    }
}


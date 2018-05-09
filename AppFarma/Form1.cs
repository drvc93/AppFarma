using AppFarma.WinForm.Maestros;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace AppFarma
{
    public partial class Form1 : DevExpress.XtraBars.Ribbon.RibbonForm
    {   
        
        public Form1()
        {
            InitializeComponent();
            Program.sUsuario = "DVILLANUEV";   
        }

        private void bbtnCategoria_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            WFCategorias wfcat = new WFCategorias();
            wfcat.MdiParent = this;
            wfcat.Show();
        }

        private void barbtnSubCategorias_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            WFSubCategorias wfcat = new WFSubCategorias();
            wfcat.MdiParent = this;
            wfcat.Show();
        }

        private void barButtonItem1_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            WFProducto wfprod = new WFProducto();
            wfprod.MdiParent = this;
            wfprod.Show();
        }

        private void barbtnPrincpAct_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {

            WPrincipActiv wpact = new WPrincipActiv();
            wpact.MdiParent = this;
            wpact.Show();
        }
    }
}

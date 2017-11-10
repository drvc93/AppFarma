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
        }

        private void bbtnCategoria_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            WFCategorias wfcat = new WFCategorias();
            wfcat.MdiParent = this;
            wfcat.Show();
        }
    }
}

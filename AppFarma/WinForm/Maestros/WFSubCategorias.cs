using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using CapaData;

namespace AppFarma.WinForm.Maestros
{
    public partial class WFSubCategorias : DevExpress.XtraEditors.XtraForm
    {
        public WFSubCategorias()
        {   
            InitializeComponent();
            LoadComboCategoria();
        }


        public void LoadComboCategoria() {

            DataCategoria d = new DataCategoria();
            cboCat.DataSource = d.ListaCategori(0);
            cboCat.DisplayMember = "c_descripcion";
            cboCat.ValueMember = "n_categoria";

        }

        private void labelControl1_Click(object sender, EventArgs e)
        {

        }

        private void btnGuardar_Click(object sender, EventArgs e)
        {

        }
    }
}

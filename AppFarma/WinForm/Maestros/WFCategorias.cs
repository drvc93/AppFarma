using DevExpress.XtraEditors;
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
    public partial class WFCategorias : DevExpress.XtraEditors.XtraForm
    {
        public WFCategorias()
        {
            InitializeComponent();
            CargarGridCategoria();
        }

        private void labelControl1_Click(object sender, EventArgs e)
        {

        }

        private void labelControl2_Click(object sender, EventArgs e)
        {

        }

        private void btnGuardar_Click(object sender, EventArgs e)
        {
            string tipoOpe = "";
            int CodCategoria;
            if (String.IsNullOrEmpty(txtCodCategoria.Text) == true)
            {
                tipoOpe = "registrar";
                CodCategoria = 0;
            }
            else {
                tipoOpe = "actualizar";
                CodCategoria = Convert.ToInt32( txtCodCategoria.Text);
            }

            DialogResult resultdialg  = XtraMessageBox.Show("¿Desea "+tipoOpe + " la categoria ?", "Aviso", MessageBoxButtons.YesNo);

            if (resultdialg == DialogResult.Yes)
            {
                DataCategoria dc = new DataCategoria();
                string rspta = dc.InsertCategoria(CodCategoria, txtDescripcion.Text.ToUpper().Trim(), txtUltimoUsuario.Text.ToUpper());
                if (rspta == "OK")
                {

                    XtraMessageBox.Show("Se guardo la información correctamente.", "Exito", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    txtDescripcion.Text = "";
                    txtUltimoUsuario.Text = "";
                    txtCodCategoria.Text = "";
                    ActivarControles(false);
                    CargarGridCategoria();
                }
                else {

                    XtraMessageBox.Show(rspta, "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            } 
        }

        private void btnNuevo_Click(object sender, EventArgs e)
        {
            ActivarControles(true);
            txtCodCategoria.Text = "";
            txtDescripcion.Text = "";


        }

        public void ActivarControles(bool  isActived)
        {
            if (isActived == true) { 
            txtUltimaFecha.Text = DateTime.Now.ToString("dd/MM/yyyy HH:mm:ss");
            }
            else
            {
                txtUltimaFecha.Text = "";
            }
            txtUltimaFecha.Enabled = isActived;
            txtDescripcion.Enabled = isActived;
            txtUltimoUsuario.Enabled = isActived;
            btnGuardar.Enabled = isActived;
        }

        private void btnModificar_Click(object sender, EventArgs e)
        {
            ActivarControles(true);
        }

        private void btn_Cancel_Click(object sender, EventArgs e)
        {
            ActivarControles(false);
        }

        public  void CargarGridCategoria ()
        {
            DataCategoria dtcat = new DataCategoria();
            gvCategorias.DataSource = dtcat.ListaCategori(0, "%");
        }

        private void gvCategorias_Click(object sender, EventArgs e)
        {
            int index = gridView1.FocusedRowHandle;
            if (index >= 0) {

              txtCodCategoria.Text =   gridView1.GetRowCellValue(index, "n_categoria").ToString();
              txtDescripcion.Text = gridView1.GetRowCellValue(index, "c_descripcion").ToString();
              txtUltimaFecha.Text = gridView1.GetRowCellValue(index, "c_ultimafechamod").ToString();
              txtUltimoUsuario.Text = gridView1.GetRowCellValue(index, "c_usuarioregistro").ToString();

            }
        }

        private void WFCategorias_Load(object sender, EventArgs e)
        {

        }
    }
}

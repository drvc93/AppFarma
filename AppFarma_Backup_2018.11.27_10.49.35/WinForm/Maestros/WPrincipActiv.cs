using CapaData;
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

namespace AppFarma.WinForm.Maestros
{
    public partial class WPrincipActiv : Form
    {
        public WPrincipActiv()
        {
            InitializeComponent();
            RefreshGridView();
        }

        private void btnGuardar_Click(object sender, EventArgs e)
        {
            int codPrincipio = String.IsNullOrEmpty(txtCodPrincipio.Text) ? 0 : Convert.ToInt32(txtCodPrincipio.Text);
            string sDescrip = txtDescripcion.Text.ToUpper();
            string sEstado = chkEstadoPrincipio.Checked ? "A" : "I";
            String sUsuario = "DVILLANUEV";

            DataPrincipioActv pr = new DataPrincipioActv();

            string result = pr.InsertarPrincipioActivo(codPrincipio, sDescrip, sEstado, sUsuario, DateTime.Now);

            if (result == "OK")
            {
                XtraMessageBox.Show("Se registró correctamente", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Information);
                RefreshGridView();
            }
            else
            {
                XtraMessageBox.Show(result, "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }

            if (String.IsNullOrEmpty(sDescrip))
            XtraMessageBox.Show("Ingrese descripción", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            return;
        }

        private void btnNuevo_Click(object sender, EventArgs e)
        {
            txtCodPrincipio.Text = "";
            txtDescripcion.Enabled = true;
            chkEstadoPrincipio.Enabled = false;
            chkEstadoPrincipio.Checked = true;
            btnGuardar.Enabled = true;
            txtUltimoUsuario.Text = Program.sUsuario;
            txtUltimaFecha.Text = DateTime.Now.ToString();

        }

        public  void RefreshGridView()
        {
            DataPrincipioActv pr = new DataPrincipioActv();
            DataTable dt = pr.ListaPrincipiosActv(0, "%", "%");
            gvPrincipActiv.DataSource = dt;

        }

        private void gridView1_Click(object sender, EventArgs e)
        {
            int index = gridView1.FocusedRowHandle;
            if (index >= 0)
            {

                txtCodPrincipio.Text = gridView1.GetRowCellValue(index, "n_codigoprincipoact").ToString();
                txtDescripcion.Text = gridView1.GetRowCellValue(index, "c_descripcion").ToString();
                txtUltimaFecha.Text = gridView1.GetRowCellValue(index, "d_fecharegistro").ToString();
                txtUltimoUsuario.Text = gridView1.GetRowCellValue(index, "c_usuarioreg").ToString();
                chkEstadoPrincipio.Checked = Convert.ToBoolean(gridView1.GetRowCellValue(index, "c_estado")) == true ? true : false;

            }
        }

        private void btnModificar_Click(object sender, EventArgs e)
        {
            txtDescripcion.Enabled = true;
            chkEstadoPrincipio.Enabled = true;
            
            btnGuardar.Enabled = true;
        }
    }
}

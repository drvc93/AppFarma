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
    public partial class WFPresentacion : DevExpress.XtraEditors.XtraForm
    {
        public WFPresentacion()
        {
            InitializeComponent();
            LoadGV();
        }

        private void btnNuevo_Click(object sender, EventArgs e)
        {
            txtCodigo.Text = "";
            txtDescripcion.Text = "";
            chkActivo.Checked = true;
            txtUltimaFecha.Text = DateTime.Now.ToString();
            txtUltimoUsuario.Text = Program.sUsuario;
            txtCodigo.Enabled = false;
            txtDescripcion.Enabled = true;
            btnGuardar.Enabled = true;
            chkActivo.Enabled = true;
        }

        private void btnGuardar_Click(object sender, EventArgs e)
        {
            DataPresentacion present;
            string sEstado, sPresentacion, sDescripcionn, sResult;
            sEstado = chkActivo.Checked ? "A" : "I";
            sDescripcionn = txtDescripcion.Text;
            sPresentacion = txtCodigo.Text;

            if (String.IsNullOrEmpty(sDescripcionn))
            {
                XtraMessageBox.Show(text: "Debe ingresar una descripción para la presentacióm", caption: "Aviso", buttons: MessageBoxButtons.OK, icon: MessageBoxIcon.Warning);
                return;
            }

            present = new DataPresentacion();
            sResult = present.InsertPresentacion(sPresentacion, sDescripcionn, Program.sUsuario, sEstado);

            if (sResult == "OK")
            {
                XtraMessageBox.Show(text: "Se registro correctamente la presentacion " + sDescripcionn, caption: "Aviso", buttons: MessageBoxButtons.OK, icon: MessageBoxIcon.Information);
                LimpiarControles();
                btnGuardar.Enabled = false;
                LoadGV();
            }
            else
            {
                XtraMessageBox.Show(text: "Error : " + sResult, caption: "Aviso", buttons: MessageBoxButtons.OK, icon: MessageBoxIcon.Warning);
            }
        }

        public void LimpiarControles()
        {
            txtCodigo.Text = "";
            txtCodigo.Enabled = false;
            txtDescripcion.Text = "";
            txtDescripcion.Enabled = false;
            txtUltimaFecha.Text = "";
            txtUltimoUsuario.Text = "";
            chkActivo.Checked = false;
            chkActivo.Enabled = false;
        }

        public void LoadGV()
        {
            DataPresentacion datapres = new DataPresentacion();
            gvPresentaciom.DataSource = datapres.ListaPresentaciones("%", "%");
        }

        private void btnModificar_Click(object sender, EventArgs e)
        {
            int row = gridView1.FocusedRowHandle;
            if (row >= 0)
            {
                txtCodigo.Text = gridView1.GetRowCellValue(row, "c_presentacion").ToString();
                txtDescripcion.Text = gridView1.GetRowCellValue(row, "c_descripcion").ToString();
                chkActivo.Checked  =  Convert.ToBoolean( gridView1.GetRowCellValue(row, "c_estado"));
                txtUltimoUsuario.Text = Program.sUsuario;
                txtUltimaFecha.Text = DateTime.Now.ToString();
                btnGuardar.Enabled = true;
                txtDescripcion.Enabled = true;
                chkActivo.Enabled = true;
            }
        }
    }
}

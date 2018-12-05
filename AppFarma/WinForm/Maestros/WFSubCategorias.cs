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
using DevExpress.XtraEditors;

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
            cboCat.DataSource = d.ListaCategori(0,"%");
            cboCat.DisplayMember = "c_descripcion";
            cboCat.ValueMember = "n_categoria";

        }

        private void labelControl1_Click(object sender, EventArgs e)
        {

        }

        private void btnGuardar_Click(object sender, EventArgs e)
        {
            string tipoOpe = "", sEstado = ""; 
            int CodSubCategoria;
            if (String.IsNullOrEmpty(txtCodSubcategoria.Text) == true)
            {
                tipoOpe = "registrar";
                CodSubCategoria = 0;
            }
            else
            {
                tipoOpe = "actualizar";
                CodSubCategoria = Convert.ToInt32(txtCodSubcategoria.Text);
            }
            if (chkEstadoSubCat.Checked) {
                sEstado = "A";
            }
            else {
                sEstado = "I";
            }

            DialogResult resultdialg = XtraMessageBox.Show("¿Desea " + tipoOpe + " la sub categoria ?", "Aviso", MessageBoxButtons.YesNo);

            if (resultdialg == DialogResult.Yes)
            {
                DataSubCategoria dsc = new DataSubCategoria();
                string rspta = dsc.InsertSubCategoria(CodSubCategoria,  Convert.ToInt32 (cboCat.SelectedValue), txtDescripcionSub.Text.ToUpper(),"DVILLANUEV",sEstado);
                if (rspta == "OK")
                {

                    XtraMessageBox.Show("Se guardo la información correctamente.", "Exito", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    /* txtDescripcion.Text = "";
                    txtUltimoUsuario.Text = "";
                    txtCodCategoria.Text = "";
                    ActivarControles(false);
                    CargarGridCategoria();*/
                    LoadGridSubCategorias();
                }

                else
                {

                    XtraMessageBox.Show(rspta, "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            } 
        }

        private void btnNuevo_Click(object sender, EventArgs e)
        {
            ActivarControles(true);
        }

        public void ActivarControles(bool isActived)
        {
            if (isActived == true)
            {
                txtUltFecha.Text = DateTime.Now.ToString("dd/MM/yyyy HH:mm:ss");
            }
            else
            {
                txtUltFecha.Text = "";
            }
            txtUltFecha.Enabled = isActived;
            txtDescripcionSub.Enabled = isActived;
            txtDescripcionSub.Enabled = isActived;
            btnGuardar.Enabled = isActived;
        }

        private void WFSubCategorias_Load(object sender, EventArgs e)
        {

            LoadGridSubCategorias();
        }

        public void LoadGridSubCategorias (){
            DataSubCategoria dsc = new DataSubCategoria();
            gvSubCategorias.DataSource = dsc.ListaSubCategoria(0,0);
        }

        private void gvSubCategorias_Click(object sender, EventArgs e)
        {
            int index = gridView1.FocusedRowHandle;
            if (index >= 0)
            {
                txtCodSubcategoria.Text = gridView1.GetRowCellValue(index, "n_subcategoria").ToString();
                cboCat.SelectedValue = gridView1.GetRowCellValue(index, "n_categoria").ToString();
                txtDescripcionSub.Text = gridView1.GetRowCellValue(index, "c_descripcion").ToString();
                txtUltFecha.Text = gridView1.GetRowCellValue(index, "d_ultimafechamod").ToString();
                chkEstadoSubCat.Checked = Convert.ToBoolean(gridView1.GetRowCellValue(index, "c_estado")) == true ? true : false; 
                txtUltUsuario.Text = gridView1.GetRowCellValue(index, "c_usuarioregistro").ToString();

            }
        }
    }
}

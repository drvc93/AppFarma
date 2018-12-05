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
using AppFarma.WinForm.Dialogs;
using DevExpress.XtraPrinting;
using DevExpress.XtraGrid;

namespace AppFarma.WinForm.Maestros
{
    public partial class WFProducto : Form
    {
        DataProducto prod = new DataProducto();
        public WFProducto()
        {
            InitializeComponent();
            LoadComboCategoria();
            LoadComboSubCateg();
            CargarAutocompletePrinc();
            DataTable dt  = prod.ListaProductos("%", 0, 0, "%", "%", "%");
            CargarAutoCompletoProduc(dt);
            gvProductos.DataSource =dt;
            //txtFiltroDescrip.Properties.NullText = "Descripcion Producto";
            //txtPrincipAct.Properties.NullText = "Principio Activo";
        }

        public void LoadComboCategoria()
        {
            DataCategoria d = new DataCategoria();
            
            cboCat.DisplayMember = "c_descripcion";
            cboCat.ValueMember = "n_categoria";
            cboCat.DataSource = d.ListaCategori(0, "%");
        }

        public void LoadComboSubCateg()
        {
            if (cboCat.SelectedIndex >= 0)
            {
                DataTable dt = null;
                DataSubCategoria dsc = new DataSubCategoria();
                
                dt = dsc.ListaSubCategoria(0, Convert.ToInt32(cboCat.SelectedValue.ToString()));

                if (dt.Rows.Count > 0)
                {
                    cboSubCat.DataSource = dt;
                    cboSubCat.DisplayMember = "c_descripcion";
                    cboSubCat.ValueMember = "n_subcategoria";
                }
                else
                {
                    XtraMessageBox.Show( "La categoria no tiene sub categorias.", "Aviso",MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    cboSubCat.DataSource = null;
                    return;
                }
               
            }

            else
            {
                XtraMessageBox.Show( "Categoria Incorrecta", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }

            
        }

        private void cboCat_SelectedIndexChanged(object sender, EventArgs e)
        {
            LoadComboSubCateg();
        }

        private void btnGuardar_Click(object sender, EventArgs e)
        {
            string  sDescrip ,sUsuario, sEstado , sProducto;
            int nSubCateg;
            sProducto = String.IsNullOrEmpty(txtCodProducto.Text) ? "N" : txtCodProducto.Text;
            nSubCateg = cboSubCat.SelectedIndex >= 0 ?  Convert.ToInt32( cboSubCat.SelectedValue ): -1;
            sUsuario = "";
            sDescrip = txtDescripcion.Text;
            sEstado = sProducto == "N" ? "A" : chkEstadoProd.Checked?"A":"I";
            
          

            if (nSubCateg == -1)
            {
                XtraMessageBox.Show(text: "Seleccione Sub Categoria", caption: "Aviso", buttons: MessageBoxButtons.OK, icon: MessageBoxIcon.Warning);
                return;
            }
            if (String.IsNullOrEmpty(sDescrip))
            {
                XtraMessageBox.Show(text: "Ingrese una descripcion para el producto.", caption: "Aviso", buttons: MessageBoxButtons.OK, icon: MessageBoxIcon.Warning);
                return;
            }

            String result = prod.InsertModProducto(sProducto, sDescrip, nSubCateg, sEstado, sUsuario, DateTime.Now);

            if (result == "OK")
            {
                XtraMessageBox.Show(text: "Se registro correctamente la información.", caption: "Aviso", buttons: MessageBoxButtons.OK, icon: MessageBoxIcon.Information);
                gvProductos.DataSource = prod.ListaProductos("%", 0, 0, "%", "%", "%");
                return;

            }
            else
            {
                XtraMessageBox.Show(text:result , caption: "Aviso", buttons: MessageBoxButtons.OK, icon: MessageBoxIcon.Information);
                return;

            }
      
        }

        private void btnNuevo_Click(object sender, EventArgs e)
        {
            txtCodProducto.Text = "";
            txtDescripcion.Enabled = true;
            txtUltimaFecha.Text = DateTime.Now.ToString();
            cboCat.Enabled = true;
            cboSubCat.Enabled = true;
            chkEstadoProd.Checked = true;
            chkEstadoProd.Enabled = false;
            btnGuardar.Enabled = true;
        }

        private void gvProductos_Click(object sender, EventArgs e)
        {
            int index = gridView1.FocusedRowHandle;
            if (index >= 0)
            {

                txtCodProducto.Text = gridView1.GetRowCellValue(index, "c_codproducto").ToString();
                cboCat.SelectedValue = gridView1.GetRowCellValue(index, "n_categoria").ToString();
                cboSubCat.SelectedValue = gridView1.GetRowCellValue(index, "n_subcategoria").ToString();
                txtDescripcion.Text = gridView1.GetRowCellValue(index, "c_descripcionprod").ToString();
                chkEstadoProd.Checked = Convert.ToBoolean( gridView1.GetRowCellValue(index, "c_estado"));

            }
        }

        private void btnModificar_Click(object sender, EventArgs e)
        {
            int index = gridView1.FocusedRowHandle;
             if ( index <= 0)
            {
                XtraMessageBox.Show(text: "Seleccione un registro primero para realizar esta acción.", caption: "Aviso", buttons: MessageBoxButtons.OK, icon: MessageBoxIcon.Information);
                return;
            }

            //txtCodProducto.Text = "";
            //txtDescripcion.Text = "";
            txtDescripcion.Enabled = true;
            txtUltimaFecha.Text = DateTime.Now.ToString();
            cboCat.Enabled = true;
            cboSubCat.Enabled = true;
            chkEstadoProd.Checked = true;
            chkEstadoProd.Enabled = true;
            btnGuardar.Enabled = true;
        }

        private void btnPrincipAct_Click(object sender, EventArgs e)
        {
            int index = gridView1.FocusedRowHandle;
            if (index < 0)
            {
                XtraMessageBox.Show(text: "Seleccione un registro primero para realizar esta acción.", caption: "Aviso", buttons: MessageBoxButtons.OK, icon: MessageBoxIcon.Information);
                return;
            }

            
            DialogPrincpActv  wp = new DialogPrincpActv();
            wp.lblProdc.Text = gridView1.GetRowCellValue(index, "c_codproducto").ToString();
            wp.LoadGVPrincp(gridView1.GetRowCellValue(index, "c_codproducto").ToString());
            wp.lblNombreProd.Text = gridView1.GetRowCellValue(index, "c_descripcionprod").ToString();
            wp.ShowDialog();
        }

        public void CargarAutocompletePrinc()
        {
          /*  DataPrincipioActv prod = new  DataPrincipioActv();
            DataTable dt = prod.ListaPrincipiosActv(0, "%", "%");
            string[] str = new string[dt.Rows.Count];

            for (int i = 0; i< dt.Rows.Count; i++)
            {
                str[i] = dt.Rows[i]["c_descripcion"].ToString();
            }
            AutoCompleteStringCollection collection = new AutoCompleteStringCollection();
            collection.AddRange(str);
            txtPrincipAct.MaskBox.AutoCompleteCustomSource = collection;
            txtPrincipAct.MaskBox.AutoCompleteSource = AutoCompleteSource.CustomSource;
            txtPrincipAct.MaskBox.AutoCompleteMode = AutoCompleteMode.SuggestAppend;*/
        }

        public void CargarAutoCompletoProduc(DataTable   dt)
        {
           /* string[] str = new string[dt.Rows.Count];

            for (int i = 0; i < dt.Rows.Count; i++)
            {
                str[i] = dt.Rows[i]["c_descripcionprod"].ToString();
            }
            AutoCompleteStringCollection collection = new AutoCompleteStringCollection();
            collection.AddRange(str);
            txtFiltroDescrip.MaskBox.AutoCompleteCustomSource = collection;
            txtFiltroDescrip.MaskBox.AutoCompleteSource = AutoCompleteSource.CustomSource;
            txtFiltroDescrip.MaskBox.AutoCompleteMode = AutoCompleteMode.SuggestAppend;*/
        }



        private void btnBuscar_Click(object sender, EventArgs e)
        {
          //  DataProducto prod = new DataProducto();
            //gvProductos.DataSource = prod.ListaProductos("%", 0, 0, txtFiltroDescrip.Text, "%", txtPrincipAct.Text);
        }

        private void radExport_Click(object sender, EventArgs e)
        {

        }

        private void radExport_MouseDoubleClick(object sender, MouseEventArgs e)
        {

        }

        private void radbtnExpor_DefaultItemChanged(object sender, EventArgs e)
        {
            
        }
        
        private void radbtnExpor_DoubleClick(object sender, EventArgs e)
        {
         
        }

        private void btnExportarGV_Click(object sender, EventArgs e)
        {
            if (!gvProductos.IsPrintingAvailable)
            {
                MessageBox.Show("The 'DevExpress.XtraPrinting' library is not found", "Error");
                return;
            }

            // Open the Preview window.
            gvProductos.ShowPrintPreview();
        }

        private void gridView1_Click(object sender, EventArgs e)
        {

        }
    }
}

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
    public partial class WFProductoPresentacion : Form
    {
        public WFProductoPresentacion()
        {
            InitializeComponent();
            LoadProducto();
            LoadPresentacion();
            LoadGV();
            
        }

         public void LoadGV()
        {
            DataProducto prod = new DataProducto();
            gvProducPres.DataSource = prod.ListaProductoPresentacion("%", "%", 0, "%");
        }
        public  void LoadProducto()
        {
            DataTable dataprod;
            DataProducto prod = new DataProducto();
            ddwProducto.Properties.ValueMember = "c_codproducto";
            ddwProducto.Properties.DisplayMember = "c_descripcionprod";
            dataprod = prod.ListaProductos("%", 0, 0, "%", "%", "%");
            ddwProducto.Properties.DataSource = dataprod;
            repositoryItemLookUpEdit1.DataSource = dataprod;

        }

        public void LoadPresentacion()
        {
            DataTable data;
            DataPresentacion datapres = new DataPresentacion();
            ddw_Presentaciones.Properties.ValueMember = "c_presentacion";
            ddw_Presentaciones.Properties.DisplayMember = "c_descripcion";
            data  = datapres.ListaPresentaciones("%", "%");
            ddw_Presentaciones.Properties.DataSource = data;
            repositoryItemLookUpEdit2.DataSource = data;
        }

        private void numeripUpCantidad_ValueChanged(object sender, EventArgs e)
        {
           if (Convert.ToInt32(numeripUpCantidad.Value.ToString())<= 0)
            {
                XtraMessageBox.Show(text: "El valor no puede ser menor o gual que cero ", caption: "Aviso", buttons: MessageBoxButtons.OK, icon: MessageBoxIcon.Warning);
                return;
            }
        }

        private void btnNuevo_Click(object sender, EventArgs e)
        {
            DataProducto prod = new DataProducto();
            int nCantidad;
            string sProducto, sPresentacion, sUsuario, sResult , sEstado;

            nCantidad = Convert.ToInt32( numeripUpCantidad.Value);
            sEstado = "A";
            sPresentacion = ddw_Presentaciones.EditValue.ToString();
            sProducto = ddwProducto.EditValue.ToString();
            sUsuario = Program.sUsuario;


            if (nCantidad <= 0)
            {
                XtraMessageBox.Show(text: "El valor no puede ser menor o gual que cero ", caption: "Aviso", buttons: MessageBoxButtons.OK, icon: MessageBoxIcon.Warning);
                return;
            }
            if (String.IsNullOrEmpty(sProducto))
            {
                XtraMessageBox.Show(text: "Por favor seleccione un producto valido. ", caption: "Aviso", buttons: MessageBoxButtons.OK, icon: MessageBoxIcon.Warning);
                return;
            }
            if (String.IsNullOrEmpty(sPresentacion))
            {
                XtraMessageBox.Show(text: "Por favor seleccione una presentacion valida. ", caption: "Aviso", buttons: MessageBoxButtons.OK, icon: MessageBoxIcon.Warning);
                return;
            }

            sResult = prod.InsertProductoPresentacion(sProducto, sPresentacion, 0, sUsuario, nCantidad, sEstado);
            if (sResult == "OK")
            {
                XtraMessageBox.Show(text: "Se registro correctamente la informacion. ", caption: "Aviso", buttons: MessageBoxButtons.OK, icon: MessageBoxIcon.Information);
                LoadGV();
                return;
            }
            else
            {
                XtraMessageBox.Show(text: sResult, caption: "Aviso", buttons: MessageBoxButtons.OK, icon: MessageBoxIcon.Warning);
                return;
            }


        }

        private void rowbtnGuardar_ButtonClick(object sender, DevExpress.XtraEditors.Controls.ButtonPressedEventArgs e)
        {
            int row = gridProductPres.FocusedRowHandle;

            if ( row < 0)
            {
                XtraMessageBox.Show(text: "Seleccione una fila primero.", caption: "Aviso", buttons: MessageBoxButtons.OK, icon: MessageBoxIcon.Warning);
                return;
            }
            DataProducto prod = new DataProducto();
            string sProducto  = gridProductPres.GetRowCellValue(row, "c_codproducto").ToString();
            string sPresentacion = gridProductPres.GetRowCellValue(row, "c_presentacion").ToString();
            int nCorrelativo = Convert.ToInt32(gridProductPres.GetRowCellValue(row, "n_correlativo").ToString());
            int nCantidad = Convert.ToInt32(gridProductPres.GetRowCellValue(row, "n_cantidad").ToString());
            string sEstado = Convert.ToBoolean(gridProductPres.GetRowCellValue(row, "c_estado")) == true ? "A" : "I";

            string sResult = prod.InsertProductoPresentacion(sProducto, sPresentacion, nCorrelativo, Program.SUsuario, nCantidad, sEstado);
            if (sResult == "OK")
            {
                XtraMessageBox.Show(text: "Se registro correctamente la informacion. ", caption: "Aviso", buttons: MessageBoxButtons.OK, icon: MessageBoxIcon.Information);
                LoadGV();
                return;
            }
            else
            {
                XtraMessageBox.Show(text: sResult, caption: "Aviso", buttons: MessageBoxButtons.OK, icon: MessageBoxIcon.Warning);
                return;
            }


        }
    }
}

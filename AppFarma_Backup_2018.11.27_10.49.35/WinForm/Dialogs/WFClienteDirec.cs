using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Linq;
using System.Threading.Tasks;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using CapaData;
using AppFarma.WinForm.Maestros;
using DevExpress.XtraEditors.Repository;

namespace AppFarma.WinForm.Dialogs
{
    public partial class WFClienteDirec : DevExpress.XtraEditors.XtraForm
    {
        public int nSecuencia;
        public string sTipoCli;
        public WFCliente wfcli;
        DataUbigeo ub;
        public WFClienteDirec()
        {
            InitializeComponent();
            LoadComboUbigeo();
            //ConfigGVDirecciones();
        }

       
        public void LoadComboUbigeo()
        {
            ub = new DataUbigeo();
            ddwDepartamento.Properties.ValueMember = "c_ubigeo";
            ddwDepartamento.Properties.DisplayMember = "c_descripcion";
            ddwDepartamento.Properties.DataSource = ub.ListaUbigeo("%", "DEPT");
        }

        private void ddwDepartamento_EditValueChanged(object sender, EventArgs e)
        {
            ddwProv.Properties.ValueMember = "c_ubigeo";
            ddwProv.Properties.DisplayMember = "c_descripcion";
            ddwProv.Properties.DataSource = ub.ListaUbigeo(ddwDepartamento.EditValue.ToString(), "PROV");
        }

        private void ddwProv_EditValueChanged(object sender, EventArgs e)
        {
            ddwDist.Properties.ValueMember = "c_ubigeo";
            ddwDist.Properties.DisplayMember = "c_descripcion";
            ddwDist.Properties.DataSource = ub.ListaUbigeo(ddwProv.EditValue.ToString(), "DIST");
        }

        private void btnGuardar_Click(object sender, EventArgs e)
        {
            GuardarDireccion();
        }

        public void GuardarDireccion()
        {
            DataCliente cl = new DataCliente();
            string sDireccion = txtDireccion.Text.Trim();
           
            string sLong = txtLongitud.Text;
            string sLatitud = txtLatitud.Text;
            string sEstado = chkActivo.Checked ? "A" : "I";

            if (String.IsNullOrEmpty(sDireccion))
            {
                XtraMessageBox.Show(text: "Ingrese la direccion.", caption: "Aviso", buttons: MessageBoxButtons.OK, icon: MessageBoxIcon.Exclamation);
                return;
            }

            if (String.IsNullOrEmpty(ddwDepartamento.EditValue.ToString()) || ddwDepartamento.EditValue == "Seleccionar")
            {
                XtraMessageBox.Show(text: "Seleccione un departamento.", caption: "Aviso", buttons: MessageBoxButtons.OK, icon: MessageBoxIcon.Exclamation);
                return;
            }


            if (String.IsNullOrEmpty(ddwProv.EditValue.ToString()) ||  ddwProv.EditValue == "Seleccionar")
            {
                XtraMessageBox.Show(text: "Seleccione una provincia.", caption: "Aviso", buttons: MessageBoxButtons.OK, icon: MessageBoxIcon.Exclamation);
                return;
            }

            if (String.IsNullOrEmpty(ddwDist.EditValue.ToString()) || ddwDist.EditValue == "Seleccionar")
            {
                XtraMessageBox.Show(text: "Seleccione un distrito.", caption: "Aviso", buttons: MessageBoxButtons.OK, icon: MessageBoxIcon.Exclamation);
                return;
            }
            string sUbigeo = ddwDist.EditValue.ToString();
            string sResult = cl.InsertDireccion(sTipoCli.Trim(), txtClienteDoc.Text, nSecuencia, sDireccion.Trim(), sLong, sLatitud, sUbigeo, sEstado, Program.sUsuario, DateTime.Now);
            if (sResult == "OK")
            {
                XtraMessageBox.Show(text: "Se registro correctamente  la direccion " + sDireccion + " del cliente " + txtClienteNomb.Text + " .", caption: "Aviso", buttons: MessageBoxButtons.OK, icon: MessageBoxIcon.Information);
                wfcli.LoadDetalleDirecciones();
                this.Close();
                return;
            }
        }
    }
}
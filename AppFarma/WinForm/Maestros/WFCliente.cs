using AppFarma.WinForm.Dialogs;
using CapaData;
using DevExpress.XtraEditors;
using DevExpress.XtraEditors.Repository;
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
    public partial class WFCliente : DevExpress.XtraEditors.XtraForm
    {
        DataCliente cli;
        DataUbigeo ub;
        public WFCliente()
        {
            InitializeComponent();
        }
        private void WFCliente_Load(object sender, EventArgs e)
        {
            txtApeMat.CharacterCasing = CharacterCasing.Upper;
            txtApePat.CharacterCasing = CharacterCasing.Upper;
            txtRazonNom.CharacterCasing = CharacterCasing.Upper;
             cli = new DataCliente();
            LoadGVClientes();
            ConfigGVDirecciones();
            
        }

        public void ConfigGVDirecciones()
        {
            ub = new DataUbigeo();
            RepositoryItemLookUpEdit myLookup = new RepositoryItemLookUpEdit();
            myLookup.DisplayMember = "c_descripcion";
            myLookup.ValueMember = "c_ubigeo";
            myLookup.DataSource = ub.ListaUbigeo("%", "GRID");
            gridDirecciones.Columns["c_ubigeo"].ColumnEdit = myLookup;
        }

        public void LoadGVClientes()
        {
            gvCliente.DataSource = cli.ListaClientes("%", "%");
        }
        private void btnNuevo_Click(object sender, EventArgs e)
        {
            cboTipoCliente.Enabled = true;
            cboTipoCliente.SelectedIndex = 1;
            txtFechaReg.Text = DateTime.Now.ToShortDateString();
            txtUserReg.Text = Program.sUsuario;
            txtNumeroDoc.Mask = "########";
            txtRazonNom.Enabled = true;
            txtFechaNac.Enabled = true;
            txtNumeroDoc.Enabled = true;
            chkActivo.Checked = true;
            btnGuardar.Enabled = true;

        }

        private void btnGuardar_Click(object sender, EventArgs e)
        {
            GuardarRegistro();
        }

        public void GuardarRegistro()
        {
          
            string sTipoCli, sNumeroDoc, sNombre, sApePat, sApeMat, sUsuario, sEstado, sResult ;
            DateTime dFechaNac;
            sNumeroDoc = txtNumeroDoc.Text.Trim();
            if (String.IsNullOrEmpty(sNumeroDoc))
            {
                XtraMessageBox.Show(text: "Debe ingresar el número de documento.", caption: "Aviso", buttons: MessageBoxButtons.OK, icon: MessageBoxIcon.Warning);
                return;
            }
            if(cboTipoCliente.SelectedIndex == 0  && sNumeroDoc.Length < 11)
            {
                XtraMessageBox.Show(text: "El número de documento debe tener 11 digitos.", caption: "Aviso", buttons: MessageBoxButtons.OK, icon: MessageBoxIcon.Warning);
                return;
            }
            if (cboTipoCliente.SelectedIndex == 1 && sNumeroDoc.Length < 8)
            {
                XtraMessageBox.Show(text: "El número de documento debe tener 11 digitos", caption: "Aviso", buttons: MessageBoxButtons.OK, icon: MessageBoxIcon.Warning);
                return;
            }

            if (String.IsNullOrEmpty(txtRazonNom.Text))
            {
                XtraMessageBox.Show(text: "Debe ingresar el nombre o razón social del cliente .", caption: "Aviso", buttons: MessageBoxButtons.OK, icon: MessageBoxIcon.Warning);
                return;
            }

           
            sTipoCli = cboTipoCliente.Text.Substring(0, 2);
            
            sNombre = txtRazonNom.Text.ToUpper();
            sApeMat = txtApeMat.Text;
            sApePat = txtApePat.Text;
            sEstado = chkActivo.Checked ? "A" : "I";
            dFechaNac = Convert.ToDateTime(txtFechaNac.Text);
            sUsuario = Program.sUsuario  ;

            sResult = cli.InsertCliente(sTipoCli, sNumeroDoc, sNombre, sApePat, sApeMat, dFechaNac, sUsuario, sEstado);

            if(sResult == "OK") { 
                XtraMessageBox.Show(text: "Se registro correctamente el cliente.", caption: "Aviso", buttons: MessageBoxButtons.OK, icon: MessageBoxIcon.Information);
                LoadGVClientes();
                Limpiar();
                BloquearControles();
            }
            else
            {
                XtraMessageBox.Show(text: "ERROR: " + sResult, caption: "Aviso", buttons: MessageBoxButtons.OK, icon: MessageBoxIcon.Warning);
            }


        }

        private void cboTipoCliente_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (cboTipoCliente.SelectedIndex == 0)
            {
                lblRazonNombre.Text = "Razon Social";
                txtApeMat.Enabled = false;
                txtApePat.Enabled = false;
                txtNumeroDoc.Mask = "###########";
               
            }
            else
            {
                lblRazonNombre.Text = "Nombre";
                txtApeMat.Enabled = true;
                txtApePat.Enabled = true;
                txtNumeroDoc.Mask = "########";
            }
        }

        public void Limpiar()
        {
            txtRazonNom.Text = "";
            txtApePat.Text = "";
            txtApeMat.Text = "";
            txtUserReg.Text = "";
            txtFechaReg.Text = "";
            txtNumeroDoc.Text = "";
        }

        public void BloquearControles()
        {
            
            cboTipoCliente.Enabled = false;
            txtRazonNom.Enabled = false;
            txtFechaNac.Enabled = false;
            txtNumeroDoc.Enabled = false;
            chkActivo.Checked = false;
            btnGuardar.Enabled = false;
            txtApeMat.Enabled = false;
            txtApePat.Enabled = false;
        }

        private void btnPrincipAct_Click(object sender, EventArgs e)
        {
            string sRaz, sDoc;
            xtraTabControl1.SelectedTabPageIndex = 1;
            int index = gridView1.FocusedRowHandle;
            if (index >= 0)
            {
                WFClienteTelf wft = new WFClienteTelf();
                wft.sTipoCli = gridView1.GetRowCellValue(index, "c_tipocliente").ToString();
                sRaz  = gridView1.GetRowCellValue(index, "c_razonsocial").ToString();
                sDoc = gridView1.GetRowCellValue(index, "c_documento").ToString();
                wft.nLinea = 0;
                wft.wfcli = this;
                wft.SetCliente(sDoc, sRaz);
                wft.ShowDialog();
               

            }
           
            
        }

        private void gridView1_Click(object sender, EventArgs e)
        {
        
            int index = gridView1.FocusedRowHandle;
            if (index >= 0)
            {
                LoadDetalleTelf();
                LoadDetalleDirecciones();
                
            }
        }

        public void LoadDetalleTelf() {
            string  sDoc, sTipoCli;
            int index = gridView1.FocusedRowHandle;
            DataCliente c;
            if (index >= 0)
            {
                c = new DataCliente();
                sTipoCli = gridView1.GetRowCellValue(index, "c_tipocliente").ToString();
                sDoc = gridView1.GetRowCellValue(index, "c_documento").ToString();
                gvTelefonos.DataSource = c.ListaTelefonosCli(sTipoCli, sDoc);
            }
        }

        public void LoadDetalleDirecciones()
        {
            string  sDoc, sTipoCli;
            int index = gridView1.FocusedRowHandle;
            DataCliente c;
            if (index >= 0)
            {
                c = new DataCliente();
                sTipoCli = gridView1.GetRowCellValue(index, "c_tipocliente").ToString().Substring(0,2);
                sDoc = gridView1.GetRowCellValue(index, "c_documento").ToString();
                gvDirecciones.DataSource = c.ListaDirecciones(sTipoCli, sDoc);
            }
        }

        private void repositoryItemButtonEdit1_ButtonClick(object sender, DevExpress.XtraEditors.Controls.ButtonPressedEventArgs e)
        {
            int index = gridView2.FocusedRowHandle;
             string sRaz, sDoc;
            bool bEstado = false;
            WFClienteTelf wft = new WFClienteTelf();
            wft.sTipoCli = gridView2.GetRowCellValue(index, "c_tipocliente").ToString();
            sRaz = gridView1.GetRowCellValue(gridView1.FocusedRowHandle, "c_razonsocial").ToString();
            sDoc = gridView2.GetRowCellValue(index, "c_codcliente").ToString();
            wft.nLinea =  Convert.ToInt32(gridView2.GetRowCellValue(index, "n_linea").ToString());
            wft.txtContacto.Text = gridView2.GetRowCellValue(index, "c_nombrecontacto").ToString();
            wft.txtNumeroTelf.Text = gridView2.GetRowCellValue(index, "c_numero").ToString();
            bEstado = Convert.ToBoolean(gridView2.GetRowCellValue(index, "c_estado"));
            wft.chkActivo.Checked = bEstado;
            wft.chkActivo.Enabled = true;
            wft.wfcli = this;
            wft.SetCliente(sDoc, sRaz);
            wft.ShowDialog();
        }

        private void repositoryItemButtonEdit2_ButtonClick(object sender, DevExpress.XtraEditors.Controls.ButtonPressedEventArgs e)
        {
            int index = gridDirecciones.FocusedRowHandle;
            string sDoc;
            string sUbigeo;
            bool bEstado = false;
            WFClienteDirec wft = new WFClienteDirec();
            wft.sTipoCli = gridDirecciones.GetRowCellValue(index, "c_tipocliente").ToString();
            sDoc  = gridView1.GetRowCellValue(gridView1.FocusedRowHandle, "c_documento").ToString();
            sUbigeo = gridDirecciones.GetRowCellValue(index, "c_ubigeo").ToString();
            wft.nSecuencia = Convert.ToInt32(gridDirecciones.GetRowCellValue(index, "n_secuenciadireccion").ToString());
            wft.txtDireccion.Text = gridDirecciones.GetRowCellValue(index, "c_descripciondir").ToString();
            wft.txtClienteNomb.Text = gridView1.GetRowCellValue(gridView1.FocusedRowHandle, "c_razonsocial").ToString();
            wft.txtLatitud.Text  = gridDirecciones.GetRowCellValue(gridDirecciones.FocusedRowHandle, "c_latitud").ToString();
            wft.txtLongitud.Text  = gridDirecciones.GetRowCellValue(gridDirecciones.FocusedRowHandle, "c_longitud").ToString();
            wft.txtClienteDoc.Text = sDoc;
            bEstado = Convert.ToBoolean(gridDirecciones.GetRowCellValue(index, "c_estado"));
            wft.chkActivo.Checked = bEstado;
            wft.chkActivo.Enabled = true;
            wft.wfcli = this;
            wft.LoadComboUbigeo();
            wft.ddwDepartamento.EditValue = sUbigeo.Substring(0, 2) + "0000";
            wft.ddwProv.EditValue = sUbigeo.Substring(0, 4) + "00";
            wft.ddwDist.EditValue = sUbigeo;
            wft.ShowDialog();
        }

        private void btnNvDireccion_Click(object sender, EventArgs e)
        {
            WFClienteDirec wfdir = new WFClienteDirec();
            wfdir.wfcli = this;
            int index = gridView1.FocusedRowHandle;
            wfdir.nSecuencia = 0;
            wfdir.sTipoCli = gridView1.GetRowCellValue(index, "c_tipocliente").ToString().Substring(0, 2);
            wfdir.txtClienteDoc.Text = gridView1.GetRowCellValue(index, "c_documento").ToString();
            wfdir.txtClienteNomb.Text = gridView1.GetRowCellValue(index, "c_razonsocial").ToString();
            wfdir.LoadComboUbigeo();
            wfdir.ddwDepartamento.EditValue = "150000";
            wfdir.ShowDialog();
        }
    }
}

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

namespace AppFarma.WinForm.Dialogs
{
    public partial class WFClienteTelf : DevExpress.XtraEditors.XtraForm
    {
        public int nLinea { get; set; }
        public string sTipoCli { get; set; }
        public WFCliente wfcli { get; set; }
        public WFClienteTelf()
        {
            InitializeComponent();
        }

        private void btnGuardar_Click(object sender, EventArgs e)
        {
            //comment
        }

        private void WFClienteTelf_Load(object sender, EventArgs e)
        {
            //comment
        }

        public void SetCliente(string sDoc, string sRazon)
        {

            txtClienteDoc.Text = sDoc;
            txtClienteNomb.Text = sRazon;
        }

        private void btnGuardar_Click_1(object sender, EventArgs e)
        {
            String sDoc, sTelf, sContact, sEstado, sResult;
            DataCliente c = new DataCliente();

            sDoc = txtClienteDoc.Text;
            sContact = txtContacto.Text;
            sTelf = txtNumeroTelf.Text;
            sEstado = chkActivo.Checked ? "A" : "I";

            if (String.IsNullOrEmpty(sContact))
            {
                XtraMessageBox.Show(text: "Ingrese el nombre del contacto.", caption: "Aviso", buttons: MessageBoxButtons.OK, icon: MessageBoxIcon.Exclamation);
                return;
            }

            if (String.IsNullOrEmpty(sTelf))
            {
                XtraMessageBox.Show(text: "Ingrese el numero de telefono.", caption: "Aviso", buttons: MessageBoxButtons.OK, icon: MessageBoxIcon.Exclamation);
                return;
            }

            sResult = c.InsertTelefono(sTipoCli.ToUpper(), sDoc, nLinea, sTelf.Trim(), sContact.Trim().ToUpper(), sEstado, Program.sUsuario);

            if (sResult == "OK")
            {
                XtraMessageBox.Show(text: "Se registro correctamente el número " + sTelf + " del cliente " + txtClienteNomb.Text + " .", caption: "Aviso", buttons: MessageBoxButtons.OK, icon: MessageBoxIcon.Information);
                wfcli.LoadDetalleTelf();
                this.Close();
            }
            else
            {
                XtraMessageBox.Show(text: sResult, caption: "Aviso", buttons: MessageBoxButtons.OK, icon: MessageBoxIcon.Error);
            }

        }

        private void btn_Cancel_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    }
}

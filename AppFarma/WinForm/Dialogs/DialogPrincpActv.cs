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
using DevExpress.XtraEditors.Repository;
using DevExpress.XtraGrid.Views.Grid;
using DevExpress.XtraEditors;

namespace AppFarma.WinForm.Dialogs
{
    public partial class DialogPrincpActv : DevExpress.XtraEditors.XtraForm
    {
        public string sCodProduc = "";
        public DialogPrincpActv()
        {
            InitializeComponent();
          
            LoadConfigGV();
           
        }

        public void LoadConfigGV()
        {
            DataPrincipioActv dp = new DataPrincipioActv();
            DataTable dt = dp.ListaPrincipiosActv(0, "%", "%");
            dt.Columns.Remove("c_usuarioreg");
            dt.Columns.Remove("d_fecharegistro");
            dt.Columns.Remove("c_estado");
            repositoryItemLookUpEdit1.DisplayMember = "c_descripcion";
            repositoryItemLookUpEdit1.ValueMember = "n_codigoprincipoact";
            repositoryItemLookUpEdit1.DataSource = dt;
            gridView1.Columns["n_codigoprincipoact"].ColumnEdit = repositoryItemLookUpEdit1;

        }

        private void btnAdd_Click(object sender, EventArgs e)
        {
            if ( gridView1.RowCount <= 0)
            {
                DataTable dt = new DataTable();
                dt.Clear();
                dt.Columns.Add("n_codigoprincipoact");
                DataRow _ravi = dt.NewRow();
                _ravi["n_codigoprincipoact"] = 0;
                dt.Rows.Add(_ravi);
                gvPrincProduc.DataSource = dt;
            }
            else
            {
                DataTable dt = gvPrincProduc.DataSource as DataTable;
                DataRow _ravi = dt.NewRow();
                _ravi["n_codigoprincipoact"] = 0;
                dt.Rows.Add(_ravi);
                gvPrincProduc.DataSource = dt;
            }
        }

        public void LoadGVPrincp(string CodProducto)
        {
            DataProducto prod = new DataProducto();
            gvPrincProduc.DataSource = prod.ListaPrincipAct(lblProdc.Text);
        }

        private void gridView1_InitNewRow(object sender, DevExpress.XtraGrid.Views.Grid.InitNewRowEventArgs e)
        {
           
        }

        private void btnAceptar_Click(object sender, EventArgs e)
        {
            string msj = "";
            DataProducto dat = new DataProducto();
           

            if (gridView1.RowCount<= 0)
            {
                XtraMessageBox.Show(text: "No existe información para guardar.", caption: "Aviso", buttons: MessageBoxButtons.OK, icon: MessageBoxIcon.Information);
                return;
            }
            else
            {
                DataProducto dprod = new DataProducto();
                dprod.DeletePrincipiosProudcto(lblProdc.Text);

                if (ComprobarExisteRepetidos())
                {
                    XtraMessageBox.Show(text: "Existen Items repetidos.", caption: "Aviso", buttons: MessageBoxButtons.OK, icon: MessageBoxIcon.Information);
                    return;
                }

                for (int i = 0; i<gridView1.RowCount; i++)
                {
                    int nCodPA = Convert.ToInt32( gridView1.GetRowCellValue(i, "n_codigoprincipoact"));
                    msj = dprod.InsertPrincpiosActivos(lblProdc.Text, nCodPA, Program.sUsuario);

                    if (msj != "OK")
                    {
                        XtraMessageBox.Show(text: "Error al registrar > " + msj, caption: "Aviso", buttons: MessageBoxButtons.OK, icon: MessageBoxIcon.Information);
                        return;
                    }


                }
                XtraMessageBox.Show(text: "Se registró correctamemnte la información.", caption: "Aviso", buttons: MessageBoxButtons.OK, icon: MessageBoxIcon.Information);
                LoadGVPrincp(lblProdc.Text);
                this.Close();
            }
        }

        private void btnEliminar_Click(object sender, EventArgs e)
        {
            int index = gridView1.FocusedRowHandle;
            gridView1.DeleteRow(index);
        }

        public bool ComprobarExisteRepetidos()
        {
            bool exiteRep = false;
            int codFlag = 0,  contador = 0;

            for(int i =  0; i < gridView1.RowCount; i++)
            {
                codFlag = Convert.ToInt32(gridView1.GetRowCellValue(i, "n_codigoprincipoact"));
                contador = 0;
                for(int j = 0; j < gridView1.RowCount; j++)
                {
                    if(codFlag  == Convert.ToInt32(gridView1.GetRowCellValue(j, "n_codigoprincipoact")))
                    {
                        contador = contador + 1;
                    }
                }

                if (contador > 1)
                {
                   // break;
                    return true;
                    
                }
            }

            return exiteRep;
          

        }

        private void repositoryItemLookUpEdit1_EditValueChanged(object sender, EventArgs e)
        {
           
        }

        private void gridView1_CustomUnboundColumnData(object sender, DevExpress.XtraGrid.Views.Base.CustomColumnDataEventArgs e)
        {
           
        }

        private void repositoryItemLookUpEdit1_Leave(object sender, EventArgs e)
        {
            
        }

        private void btnCancelar_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    }
}

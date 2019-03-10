using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaData
{
    public class DataUbigeo
    {
        readonly Conexion con;
        public DataUbigeo()
        {
            con = new Conexion();
        }

        public DataTable ListaUbigeo(string sUbigeo , string sTipo)
        {

            SqlConnection cn = con.conexion();
            cn.Open();
            SqlDataAdapter dap = new SqlDataAdapter("SP_UBIGEO", cn);
            DataTable dt = new DataTable();
            dap.SelectCommand.CommandType = CommandType.StoredProcedure;
            dap.SelectCommand.Parameters.AddWithValue("@Ubigeo", sUbigeo);
            dap.SelectCommand.Parameters.AddWithValue("@Tipo", sTipo);
            dap.Fill(dt);
            cn.Close();
            return dt;
        }
    }
}

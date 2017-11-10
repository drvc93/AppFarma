using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaData
{
    public class DataCategoria
    {
        Conexion con;

        public DataCategoria()
        {
            con = new Conexion();
        }

        public DataTable ListaCategori(int codigocat)
        {
            
            SqlConnection cn = con.conexion();
            cn.Open();
            SqlDataAdapter dap = new SqlDataAdapter("SPS_CATEGORIA", cn);
            DataTable dt = new DataTable();
            dap.SelectCommand.CommandType = CommandType.StoredProcedure;
            dap.SelectCommand.Parameters.AddWithValue ("@CodigoCategoria", codigocat);
            dap.Fill(dt);
            cn.Close();

            return dt;
        }
        public string  InsertCategoria(int codigocat, string descripcion, string ultimousuaruio)
        {
            SqlConnection cn = con.conexion();
            string result = "";
            SqlCommand sqlcmd = new SqlCommand();
            sqlcmd.Connection = cn;
            try
            {
                sqlcmd.CommandText = "SPI_CATEGORIA";
                sqlcmd.CommandType = CommandType.StoredProcedure;
                cn.Open();
                sqlcmd.Parameters.AddWithValue("@Categoria", codigocat);
                sqlcmd.Parameters.AddWithValue("@Descripcion", descripcion);
                sqlcmd.Parameters.AddWithValue("@UltimoUsuario", ultimousuaruio);
               
                int rowsafect = sqlcmd.ExecuteNonQuery();
                if (rowsafect > 0)
                {
                    result = "OK";
                }
            }
           catch (SqlException ex)
            {
                result = Convert.ToString(ex.ErrorCode);
            }
            finally {cn.Close();}

            return result;
        }
    }
}

using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaData
{
    public class DataSubCategoria
    {
        readonly Conexion con;

        public DataSubCategoria()
        {
            con = new Conexion();
        }

        public string InsertSubCategoria(int  subcategoria , int categoria , string descripcion , string usuarioreg  , string estado  ) {
            SqlConnection cn = con.conexion();
            string result = "";
            SqlCommand sqlcmd = new SqlCommand();
            sqlcmd.Connection = cn;
            try
            {
                sqlcmd.CommandText = "SPI_SUBCATEGORIA";
                sqlcmd.CommandType = CommandType.StoredProcedure;
                cn.Open();
                sqlcmd.Parameters.AddWithValue("@SubCategoria", subcategoria);
                sqlcmd.Parameters.AddWithValue("@Categoria", categoria);
                sqlcmd.Parameters.AddWithValue("@Descripcion", descripcion);
                sqlcmd.Parameters.AddWithValue("@UsuarioReg", usuarioreg);
                sqlcmd.Parameters.AddWithValue("@Estado", estado);

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
            finally { cn.Close(); }

            return result;
        }

        public DataTable ListaSubCategoria(int codSub, int nCategoria) {
            SqlConnection cn = con.conexion();
            cn.Open();
            SqlDataAdapter dap = new SqlDataAdapter("SPS_SUBCATGORIA", cn);
            DataTable dt = new DataTable();
            dap.SelectCommand.CommandType = CommandType.StoredProcedure;
            dap.SelectCommand.Parameters.AddWithValue("@SubCategoria", codSub);
            dap.SelectCommand.Parameters.AddWithValue("@Categoria", nCategoria);
            dap.Fill(dt);
            cn.Close();

            return dt;
        }
    }
}

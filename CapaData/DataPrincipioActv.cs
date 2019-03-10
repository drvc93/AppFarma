using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaData
{
    public class DataPrincipioActv
    {
         readonly Conexion con;

        public DataPrincipioActv()
        {
            con = new Conexion();
        }

        public string InsertarPrincipioActivo(int codPincipio , string sDescripcion , string sEstado , string sUltUsuario , DateTime dFecha)
        {

            SqlConnection cn = con.conexion();
            string result = "";
            SqlCommand sqlcmd = new SqlCommand();
            sqlcmd.Connection = cn;
            try
            {
                sqlcmd.CommandText = "SPI_PRINCIP_ACTIVO";
                sqlcmd.CommandType = CommandType.StoredProcedure;
                cn.Open();
                sqlcmd.Parameters.AddWithValue("@CodPrincipio", codPincipio);
                sqlcmd.Parameters.AddWithValue("@Descripcion", sDescripcion);
                sqlcmd.Parameters.AddWithValue("@Estado", sEstado);
                sqlcmd.Parameters.AddWithValue("@Usuario", sUltUsuario);
                sqlcmd.Parameters.AddWithValue("@Fecha", DateTime.Now);

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

        public  DataTable ListaPrincipiosActv (int codPricip  , string sDescripcion ,  string sEstado )
        {

            SqlConnection cn = con.conexion();
            cn.Open();
            SqlDataAdapter dap = new SqlDataAdapter("SPS_LISTA_PRINCIPIOSACTIVOS", cn);
            DataTable dt = new DataTable();
            dap.SelectCommand.CommandType = CommandType.StoredProcedure;
            dap.SelectCommand.Parameters.AddWithValue("@CodPrincipio", codPricip);
            dap.SelectCommand.Parameters.AddWithValue("@Descripcion", sDescripcion);
            dap.SelectCommand.Parameters.AddWithValue("@Estado", sEstado);
            dap.Fill(dt);
            cn.Close();

            return dt;
        }

    }
}

using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaData
{
    public class DataPresentacion
    {
        Conexion con;

        public DataPresentacion()
        {
            con = new Conexion();
        }

        public string InsertPresentacion(string sPresentacion , string sDescripcion , string sUltimoUs , string sEstado)
        {
            SqlConnection cn = con.conexion();
            string result = "";
            SqlCommand sqlcmd = new SqlCommand();
            sqlcmd.Connection = cn;
            try
            {
                sqlcmd.CommandText = "SPI_PRESENTACION";
                sqlcmd.CommandType = CommandType.StoredProcedure;
                cn.Open();
                sqlcmd.Parameters.AddWithValue("@Presetacion", sPresentacion);
                sqlcmd.Parameters.AddWithValue("@Descripcion", sDescripcion);
                sqlcmd.Parameters.AddWithValue("@Estado", sEstado);
                sqlcmd.Parameters.AddWithValue("@Usuario", sUltimoUs);
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

        public DataTable  ListaPresentaciones(string sPres , string sEstado )
        {
            SqlConnection cn = con.conexion();
            cn.Open();
            SqlDataAdapter dap = new SqlDataAdapter("SPS_LISTA_PRESENTACION", cn);
            DataTable dt = new DataTable();
            dap.SelectCommand.CommandType = CommandType.StoredProcedure;
            dap.SelectCommand.Parameters.AddWithValue("@Presentacion", sPres);
            dap.SelectCommand.Parameters.AddWithValue("@Estado", sEstado);
            dap.Fill(dt);
            cn.Close();

            return dt;
        }
    }
}

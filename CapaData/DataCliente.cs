using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaData
{
    public class DataCliente
    {
        readonly Conexion con;
        public DataCliente()
        {
            con = new Conexion();
        }

        public string InsertCliente(string sTipoCliente, string sDocumento, string sNombre, string sApellidoPat, string sApellidoMat,
                                    DateTime FechaNacimiento, string sUsuarioReg, string sEstado)
        {
            SqlConnection cn = con.conexion();
            string result = "";
            SqlCommand sqlcmd = new SqlCommand();
            sqlcmd.Connection = cn;
            try
            {
                sqlcmd.CommandText = "SPI_CLIENTE";
                sqlcmd.CommandType = CommandType.StoredProcedure;
                cn.Open();
                sqlcmd.Parameters.AddWithValue("@TipoCliente", sTipoCliente);
                sqlcmd.Parameters.AddWithValue("@Documento", sDocumento);
                sqlcmd.Parameters.AddWithValue("@Nombres", sNombre);
                sqlcmd.Parameters.AddWithValue("@ApellidoPat", sApellidoPat);
                sqlcmd.Parameters.AddWithValue("@ApellidoMat", sApellidoMat);
                sqlcmd.Parameters.AddWithValue("@FechaNacimiento", FechaNacimiento);
                sqlcmd.Parameters.AddWithValue("@UsuarioRegistro", sUsuarioReg);
                sqlcmd.Parameters.AddWithValue("@Estado", sEstado);

                int rowsafect = sqlcmd.ExecuteNonQuery();
                if (rowsafect > 0)
                {
                    result = "OK";
                }
            }
            catch (SqlException ex)
            {
                result = Convert.ToString(ex.ErrorCode) + " - " + ex.Message;
            }
            finally { cn.Close(); }

            return result;

        }

        public DataTable ListaClientes(string sTipoCli, string sNroDoc)
        {
            SqlConnection cn = con.conexion();
            cn.Open();
            SqlDataAdapter dap = new SqlDataAdapter("SPS_LISTACLIENTE", cn);
            DataTable dt = new DataTable();
            dap.SelectCommand.CommandType = CommandType.StoredProcedure;
            dap.SelectCommand.Parameters.AddWithValue("@TipoCliente", sTipoCli);
            dap.SelectCommand.Parameters.AddWithValue("@NroDoc", sNroDoc);
            dap.Fill(dt);
            cn.Close();
            return dt;
        }

        public DataTable ListaTelefonosCli(string sTipoCli, string sNroDoc)
        {
            SqlConnection cn = con.conexion();
            cn.Open();
            SqlDataAdapter dap = new SqlDataAdapter("SPS_LISTATELEFONO", cn);
            DataTable dt = new DataTable();
            dap.SelectCommand.CommandType = CommandType.StoredProcedure;
            dap.SelectCommand.Parameters.AddWithValue("@TipoCli", sTipoCli);
            dap.SelectCommand.Parameters.AddWithValue("@Doc", sNroDoc);
            dap.Fill(dt);
            cn.Close();
            return dt;
        }

        public string InsertTelefono(string sTipoCli, string sDoc, int nLinea, string sTelefono, string sContacto, string sEstado, string sUsuario)
        {

            SqlConnection cn = con.conexion();
            string result = "";
            SqlCommand sqlcmd = new SqlCommand();
            sqlcmd.Connection = cn;
            try
            {
                sqlcmd.CommandText = "SPI_TELEFONOCLIENTE";
                sqlcmd.CommandType = CommandType.StoredProcedure;
                cn.Open();
                sqlcmd.Parameters.AddWithValue("@TipoCli", sTipoCli);
                sqlcmd.Parameters.AddWithValue("@CodCli", sDoc);
                sqlcmd.Parameters.AddWithValue("@Linea", nLinea);
                sqlcmd.Parameters.AddWithValue("@Numero", sTelefono);
                sqlcmd.Parameters.AddWithValue("@NombContacto", sContacto);
                sqlcmd.Parameters.AddWithValue("@Estado", sEstado);
                sqlcmd.Parameters.AddWithValue("@Usuario", sUsuario);


                int rowsafect = sqlcmd.ExecuteNonQuery();
                if (rowsafect > 0)
                {
                    result = "OK";
                }
            }
            catch (SqlException ex)
            {
                result = Convert.ToString(ex.ErrorCode) + " - " + ex.Message;
            }
            finally { cn.Close(); }

            return result;

        }

        public DataTable ListaDirecciones(string sTipoCli, string sDocumento)
        {

            SqlConnection cn = con.conexion();
            cn.Open();
            SqlDataAdapter dap = new SqlDataAdapter("SP_LISTADIRECCIONCLIENTE", cn);
            DataTable dt = new DataTable();
            dap.SelectCommand.CommandType = CommandType.StoredProcedure;
            dap.SelectCommand.Parameters.AddWithValue("@TipoCli", sTipoCli);
            dap.SelectCommand.Parameters.AddWithValue("@Documento", sDocumento);
            dap.Fill(dt);
            cn.Close();
            return dt;
        }

        public string InsertDireccion(string sTipoCli , string sDoc , int nSecuencia , string sDireccion , string sLong , string sLat , string sUbigeo, string sEstado,
                                       string sUsuario , DateTime dtFecha)
        {

            SqlConnection cn = con.conexion();
            string result = "";
            SqlCommand sqlcmd = new SqlCommand();
            sqlcmd.Connection = cn;
            nSecuencia = String.IsNullOrEmpty(nSecuencia.ToString()) ? 0 : nSecuencia;
            try
            {
                sqlcmd.CommandText = "SPI_DIRECCIONCLIENTE";
                sqlcmd.CommandType = CommandType.StoredProcedure;
                cn.Open();
                sqlcmd.Parameters.AddWithValue("@TipoCliente", sTipoCli);
                sqlcmd.Parameters.AddWithValue("@Documento", sDoc);
                sqlcmd.Parameters.AddWithValue("@Secuencia", nSecuencia);
                sqlcmd.Parameters.AddWithValue("@DescDireccion", sDireccion);
                sqlcmd.Parameters.AddWithValue("@Longitud", sLong);
                sqlcmd.Parameters.AddWithValue("@Latitud", sLat);
                sqlcmd.Parameters.AddWithValue("@Ubigeo", sUbigeo);
                sqlcmd.Parameters.AddWithValue("@Estado", sEstado);
                sqlcmd.Parameters.AddWithValue("@FechaCreacion", DateTime.Now);
                sqlcmd.Parameters.AddWithValue("@UsuarioCreacion", sUsuario);
                sqlcmd.Parameters.AddWithValue("@FechaMod", DateTime.Now);
                sqlcmd.Parameters.AddWithValue("@UsuarioMod", sUsuario);


                int rowsafect = sqlcmd.ExecuteNonQuery();
                if (rowsafect > 0)
                {
                    result = "OK";
                }
            }
            catch (SqlException ex)
            {
                result = Convert.ToString(ex.ErrorCode) + " - " + ex.Message;
            }
            finally { cn.Close(); }

            return result;

        }
    }
}

using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaData
{
    public class DataProducto
    {
        Conexion con;
        public DataProducto()
        {
             con = new Conexion();
        }

        public string InsertModProducto(string codproducto, string descripcion, string sCodBarra , int  nCatg , int subcat, string estado, string usuario, DateTime fecha)
        {
            SqlConnection cn = con.conexion();
            string result = "";
            SqlCommand sqlcmd = new SqlCommand();
            sqlcmd.Connection = cn;
            try
            {
                sqlcmd.CommandText = "SPI_PRODUCTO";
                sqlcmd.CommandType = CommandType.StoredProcedure;
                cn.Open();
                sqlcmd.Parameters.AddWithValue("@CodProducto", codproducto);
                sqlcmd.Parameters.AddWithValue("@DescripcionProd", descripcion);
                sqlcmd.Parameters.AddWithValue("@Categoria", nCatg);
                sqlcmd.Parameters.AddWithValue("@SubCategoria", subcat);
                sqlcmd.Parameters.AddWithValue("@Estado", estado);
                sqlcmd.Parameters.AddWithValue("@Usuario", usuario);
                sqlcmd.Parameters.AddWithValue("@Fecha", fecha);
                sqlcmd.Parameters.AddWithValue("@CodBarra", sCodBarra);

                int rowsafect = sqlcmd.ExecuteNonQuery();
                if (rowsafect > 0)
                {
                    result = "OK";
                }
            }
            catch (SqlException ex)
            {
                result = Convert.ToString(ex.ErrorCode) + ":" + ex.Message;
            }
            finally { cn.Close(); }

            return result;


        }

        public DataTable ListaProductos (string codProd, int Categoria  , int SubCat , string Descrip , string estado , string princAct)
        {
            SqlConnection cn = con.conexion();
            cn.Open();
            SqlDataAdapter dap = new SqlDataAdapter("SP_LISTAPRODUCTOS", cn);
            DataTable dt = new DataTable();
            dap.SelectCommand.CommandType = CommandType.StoredProcedure;
            dap.SelectCommand.Parameters.AddWithValue("@CodProducto", codProd);
            dap.SelectCommand.Parameters.AddWithValue("@Categoria", Categoria);
            dap.SelectCommand.Parameters.AddWithValue("@SubCategoria", SubCat);
            dap.SelectCommand.Parameters.AddWithValue("@Descripcion", Descrip);
            dap.SelectCommand.Parameters.AddWithValue("@Estado", estado);
            dap.SelectCommand.Parameters.AddWithValue("@PrincipActivo", princAct);
            dap.Fill(dt);
            cn.Close();

            return dt;


        }

        public DataTable ListaPrincipAct( string codProd)
        {
            SqlConnection cn = con.conexion();
            cn.Open();
            SqlDataAdapter dap = new SqlDataAdapter("SPS_PRINCP_ACT_XP_PROD", cn);
            DataTable dt = new DataTable();
            dap.SelectCommand.CommandType = CommandType.StoredProcedure;
            dap.SelectCommand.Parameters.AddWithValue("@CodProducto", codProd);
            
            dap.Fill(dt);
            cn.Close();

            return dt;
        }

        public string InsertPrincpiosActivos(string sCodProducto  , int nPrincipioAct , string sUsuario)
        {
            
            SqlConnection cn = con.conexion();
            string result = "";
            SqlCommand sqlcmd = new SqlCommand();
            sqlcmd.Connection = cn;
            try
            {
                sqlcmd.CommandText = "SPI_PROD_PRINCPIOACT";
                sqlcmd.CommandType = CommandType.StoredProcedure;
                cn.Open();
                sqlcmd.Parameters.AddWithValue("@CodProducto", sCodProducto);
                sqlcmd.Parameters.AddWithValue("@Principio", nPrincipioAct);
                sqlcmd.Parameters.AddWithValue("@Usuario", sUsuario);
              

                int rowsafect = sqlcmd.ExecuteNonQuery();
                if (rowsafect > 0)
                {
                    result = "OK";
                }
            }
            catch (SqlException ex)
            {
                result = Convert.ToString(ex.ErrorCode) + ":" + ex.Message;
            }
            finally { cn.Close(); }

            return result;
        }

        public void DeletePrincipiosProudcto(string sCodProducto)
        {

            SqlConnection cn = con.conexion();
            string result = "";
            SqlCommand sqlcmd = new SqlCommand();
            sqlcmd.Connection = cn;
            try
            {
                sqlcmd.CommandText = "SPD_PRINCPACT_PROD";
                sqlcmd.CommandType = CommandType.StoredProcedure;
                cn.Open();
                sqlcmd.Parameters.AddWithValue("@Producto", sCodProducto);
              ;


                int rowsafect = sqlcmd.ExecuteNonQuery();
                if (rowsafect > 0)
                {
                    result = "OK";
                }
            }
            catch (SqlException ex)
            {
                result = Convert.ToString(ex.ErrorCode) + ":" + ex.Message;
            }
            finally { cn.Close(); }

           

        }

        public string InsertProductoPresentacion (string sProducto  , string sPresentacion , int nCorrelativo  , string sUsuario ,  int nCantidad ,string sEstado )
        {

            SqlConnection cn = con.conexion();
            string result = "";
            SqlCommand sqlcmd = new SqlCommand();
            sqlcmd.Connection = cn;
            try
            {
                sqlcmd.CommandText = "SPI_PRODUCTOPRESENTACION";
                sqlcmd.CommandType = CommandType.StoredProcedure;
                cn.Open();
                sqlcmd.Parameters.AddWithValue("@Producto", sProducto);
                sqlcmd.Parameters.AddWithValue("@Presentacion", sPresentacion);
                sqlcmd.Parameters.AddWithValue("@Correlativo", nCorrelativo);
                sqlcmd.Parameters.AddWithValue("@Usuario", sUsuario);
                sqlcmd.Parameters.AddWithValue("@Fecha", DateTime.Now);
                sqlcmd.Parameters.AddWithValue("@Cantidad", nCantidad);
                sqlcmd.Parameters.AddWithValue("@Estado", sEstado);

                int rowsafect = sqlcmd.ExecuteNonQuery();
                if (rowsafect > 0)
                {
                    result = "OK";
                }
            }
            catch (SqlException ex)
            {
                result = Convert.ToString(ex.ErrorCode) + ":" + ex.Message;
            }
            finally { cn.Close(); }

            return result;

        }

        public DataTable ListaProductoPresentacion( string sProducto   , string sPresentacion , int nCorrelativo , string sEstado )
        {
            SqlConnection cn = con.conexion();
            cn.Open();
            SqlDataAdapter dap = new SqlDataAdapter("SPS_LISTA_PRESENTACIONPRODUCTO ", cn);
            DataTable dt = new DataTable();
            dap.SelectCommand.CommandType = CommandType.StoredProcedure;
            dap.SelectCommand.Parameters.AddWithValue("@Producto", sProducto);
            dap.SelectCommand.Parameters.AddWithValue("@Presentacion", sPresentacion);
            dap.SelectCommand.Parameters.AddWithValue("@Correlativo", nCorrelativo);
            dap.SelectCommand.Parameters.AddWithValue("@Estado", sEstado);

            dap.Fill(dt);
            cn.Close();

            return dt;
        }
       
    }
}

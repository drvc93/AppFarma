using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;

namespace CapaData
{
    public  class Conexion
    {
        SqlConnection con;
        string Conn;
        public Conexion()
        {
            if (con == null)
                con = conexion();
        }

        public SqlConnection conexion()
        {
            Conn = "data source = " + GetCredenciales("Server") + "; initial catalog = " + GetCredenciales("DBase") + "; user id = " + GetCredenciales("UserDB") + "; password =" + GetCredenciales("Password");
            //Conn = Constantes.ConexionString;
            return new SqlConnection(Conn);
        }

        public string GetCredenciales(string IniName)
        {

            string pathexec = new FileInfo(Assembly.GetEntryAssembly().Location).Directory.ToString() + "\\config.ini";
            var ini = new IniFile(pathexec);

            var resultini = ini.Read(IniName, "DATOS");



            return resultini;
        }
    }
}

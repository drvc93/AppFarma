﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Windows.Forms;
using DevExpress.UserSkins;
using DevExpress.Skins;

namespace AppFarma
{
    static class Program
    {   

        public static  string sUsuario ;
        /// <summary>
        /// The main entry point for the application.
        /// </summary>
        [STAThread]
        static void Main()
        {
            Application.EnableVisualStyles();
            Application.SetCompatibleTextRenderingDefault(false);

            BonusSkins.Register();
            //SkinManager.EnableFormSkins();
            Application.Run(new Form1());
        }

        public static string SUsuario
        {
            get
            {
                return sUsuario;
            }
            set
            {
                sUsuario = value;
            }
        }
    }
}
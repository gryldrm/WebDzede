using System;
using System.Collections.Generic;
using System.Data;
using System.Data.OleDb;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;
using System.Windows.Controls;
using TextBox = System.Windows.Controls.TextBox;

namespace WebAriza3
{

    public class dataClass
    {
     
        internal static DataTable get_tbl(string srg)
        {
            OleDbConnection baglanti = new OleDbConnection("Provider=Microsoft.ACE.Oledb.12.0; Data Source=|DataDirectory|\\aydinbth1.accdb");
            OleDbDataAdapter adaptor;
            DataTable dt = new DataTable();

            adaptor = new OleDbDataAdapter(srg.ToString(), baglanti); ;

            adaptor.Fill(dt);

            return dt;

            
        }



        internal static string trh_con(string text)
        {
            DateTime dt = DateTime.Parse(text.ToString());
            string gun = dt.Day.ToString();
            string ay = dt.Month.ToString();
            string yil = dt.Year.ToString();

            text = ay.ToString() + "/" + gun.ToString() + "/" + yil.ToString();
            return text.ToString();
        }
    }
}

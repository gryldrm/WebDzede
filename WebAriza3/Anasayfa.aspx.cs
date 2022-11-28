using System;
using System.Collections.Generic;
using System.Data.OleDb;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;

namespace WebAriza3
{
    public partial class Anasayfa1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                if (Session["k_sicil"] != null)
                {

                }
                else
                {
                    Response.Redirect("login.aspx");
                }
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            int secili = GridView1.SelectedIndex;
            GridViewRow row = GridView1.Rows[secili];

            string id4 = row.Cells[4].Text;

            string id8 = row.Cells[8].Text;
            DataTable dt = new DataTable();
            if (id8.ToString() == "İşlem Tamamlandı.")
            {
                dt = dataClass.get_tbl("SELECT TOP 1 tbl_nevi.osifre FROM (tbl_ariza INNER JOIN tbl_nevi ON tbl_ariza.nevi = tbl_nevi.nevi) WHERE (tbl_ariza.durumu = 'İşlem Tamamlandı.') AND (tbl_ariza.nevi = '" + id4.ToString() + "')");
                if (dt.Rows.Count > 0)
                {
                    MessageBox.Show(dt.Rows[0][0].ToString());
                }

            }

        }
    }
}
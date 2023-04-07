using System;
using System.Collections.Generic;
using System.Data;
using System.Data.OleDb;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Controls;
using System.Windows;
using Page = System.Windows.Controls.Page;

namespace WebAriza3
{
    public partial class Sorgulama : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                if (Session["k_ad"] != null)
                {
                    
                }
                else
                {
                    Response.Redirect("login.aspx");
                }
            }
        }
       
    }
}
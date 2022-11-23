using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAriza3
{
    public partial class mp : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["k_sicil"] != null)
            {
                lblkullanici.Text = Session["k_sicil"].ToString() + "-" + Session["k_adsoyad"].ToString() + "-" + Session["k_birim"].ToString();
                if (Session["k_rol"].ToString() == "1")
                {
                    btnadmin.Visible = true;
                }

            }

        }
    }
}
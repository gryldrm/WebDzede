﻿using System;
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

            if (Session["k_ad"] != null)
            {
                lblkullanici.Text = Session["k_ad"].ToString() +"-"+Session["k_rol"].ToString();
                if (Session["k_rol"].ToString() == "Admin")
                {
                    btnadmin.Visible = true;
                }

            }

        }
    }
}
﻿using System;
using System.Collections.Generic;
using System.Data.OleDb;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;
using Org.BouncyCastle.Asn1.X509;

namespace WebAriza3
{
    public partial class Anasayfa1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            string sss= Session["k_ad"].ToString();
            string rol = Session["k_rol"].ToString();

            if (!Page.IsPostBack)
            {
                if (Session["k_ad"] == null)
                {
                    Response.Redirect("login.aspx");
                }

            }
        }

    }
}
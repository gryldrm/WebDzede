using System;
using System.Collections.Generic;
using System.Data.OleDb;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAriza3
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }
        OleDbConnection baglanti;
        private OleDbConnection db_baglanti()
        {
            baglanti = new OleDbConnection("Provider=Microsoft.ACE.Oledb.12.0; Data Source=|DataDirectory|\\aydinbth1.accdb");
            return baglanti;
        }
        protected void btnGiris_Click(object sender, EventArgs e)
        {
            string kscl, ksifre;
            kscl = txtAd.Text;
            ksifre = txtSifre.Text;

            baglanti = db_baglanti();
            OleDbCommand komut = new OleDbCommand();
            string sorgu = "SELECT        k_scl, k_adsad, k_sifre, k_rol, k_birim FROM            tbl_per WHERE        (k_scl = " + kscl.ToString() + ") AND (k_sifre = '" + kscl.ToString() + "')";
            komut = new OleDbCommand(sorgu, baglanti);

            baglanti.Open();
            OleDbDataReader oku = komut.ExecuteReader();
            if (oku.Read())
            {
                Session.Add("k_sicil", oku["k_scl"].ToString());
                Session.Add("k_adsoyad", oku["k_adsad"].ToString());
                Session.Add("k_birim", oku["k_birim"].ToString());
                Session.Add("k_rol", oku["k_rol"].ToString());

                Response.Redirect("Anasayfa.aspx");
            }
            else
            {
                lblDurum.Text = "Giriş Başarısız";
            }
            baglanti.Close();
        }
    }
}
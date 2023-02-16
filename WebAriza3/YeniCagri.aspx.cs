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
    public partial class YeniCagri : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                if (Session["k_sicil"] != null)
                {
                    //dd_nevi.Items.Insert(0, new ListItem("Seçin", String.Empty));
                    //dd_nevi.SelectedIndex = 0;

                    dd_tlpnevi.Items.Insert(0, new ListItem("Seçiniz", String.Empty));
                    dd_tlpnevi.SelectedIndex = 0;

                    dd_cozllk.Items.Insert(0, new ListItem("Seçin", String.Empty));
                    dd_cozllk.SelectedIndex = 0;

                    dd_marka.Items.Insert(0, new ListItem("Seçin", String.Empty));
                    dd_marka.SelectedIndex = 0;

                    txt_scl.Text = Session["k_sicil"].ToString();
                    txt_adsad.Text = Session["k_adsoyad"].ToString();
                    lblbirim.Text = Session["k_birim"].ToString();
                    lbl_cbirim.Text = Session["k_birim"].ToString();
                    lbl_sifrebirim0.Text= Session["k_birim"].ToString();
                }
                else
                {
                    Response.Redirect("login.aspx");
                }
            }
        }
        OleDbConnection baglanti;
        private OleDbConnection db_baglanti()
        {

            baglanti = new OleDbConnection("Provider=Microsoft.ACE.Oledb.12.0; Data Source=|DataDirectory|\\aydinbth1.accdb");

            return baglanti;
        }
        protected void btn_kaydet_Click(object sender, EventArgs e)
        {

            //if (dd_nevi.SelectedItem.Text != "Seçin")
            //{
            //    if (txt_ariza.Text == "" && txt_ebys.Text == "")
            //    {

            //        ScriptManager.RegisterStartupScript(this.Page, typeof(Page), Guid.NewGuid().ToString(),
            //                    "toastr.warning('Arıza açıklama veya ebys numarası girmelisiniz... ', 'Uyarı')", true);

            //    }
            //    else
            //    {

                    OleDbConnection con = db_baglanti();
                    OleDbCommand cmd;

                    cmd = new OleDbCommand("INSERT into tbl_ariza (birim, adisoyadi,sicil,nevi,ariza,ebys) Values('" +
                        lblbirim.Text.ToString() + "','"
                        + txt_adsad.Text.ToString() + "'," +
                        txt_scl.Text.ToString() + ",'" +
                       // dd_nevi.SelectedItem.ToString() + "','" +
                       // txt_ariza.Text.ToString() + "','" +
                        txt_ebys.Text.ToString() + "')", con);


                    con.Open();

                    if (con.State == ConnectionState.Open)
                    {

                        try
                        {
                            cmd.ExecuteNonQuery();

                            ScriptManager.RegisterStartupScript(this.Page, typeof(Page), Guid.NewGuid().ToString(),
                                                "toastr.success('Kayıt başarılı...', ' ')", true);

                        }
                        catch (OleDbException ex)
                        {

                            ScriptManager.RegisterStartupScript(this.Page, typeof(Page), Guid.NewGuid().ToString(),
                                     "toastr.error('Kayıt edilirken hata oluştu...', ' ')", true);

                        }
                    }
                    else
                    {
                        MessageBox.Show("Connection Failed");
                    }


                    con.Close();
                //}
            //}
            //else
            //{

            //    ScriptManager.RegisterStartupScript(this.Page, typeof(Page), Guid.NewGuid().ToString(),
            //                    "toastr.error('Arıza/Talep Nevi seçmelisiniz.', ' ')", true);
            //}

        }

        protected void btn_ckayit_Click(object sender, EventArgs e)
        {
            try
            {
                if (txt_cseri.Text != "")
                {
                    DataTable dt = dataClass.get_tbl("SELECT TOP 1 chz_sn, chz_hdd, chz_shdd, chz_ssd, chz_sssd, chz_ram, chz_ek, chz_islemci FROM tbl_chz WHERE (chz_sn = '" + txt_cseri.Text + "') ORDER BY id DESC");

                    string hdd = "";
                    string hdds = "";
                    string ssd = "";
                    string ssds = "";
                    string ram = "";
                    string ekarti = "";
                    string islemci = "";

                    if (dt.Rows.Count >0)
                    {
                          hdd = dt.Rows[0][1].ToString();
                          hdds = dt.Rows[0][2].ToString();
                          ssd = dt.Rows[0][3].ToString();
                          ssds = dt.Rows[0][4].ToString();
                          ram = dt.Rows[0][5].ToString();
                          ekarti = dt.Rows[0][6].ToString();
                          islemci = dt.Rows[0][7].ToString();

                    }

                    


                    OleDbConnection con = db_baglanti();
                    OleDbCommand cmd;

                    con.Open();
                    cmd = new OleDbCommand("INSERT INTO tbl_chz (chz_sn, chz_ad, chz_ip, chz_ozl, chz_mrk,chz_hdd, chz_shdd, chz_ssd, chz_sssd, chz_ram, chz_ek, chz_islemci, chz_gy, chz_gtar, chz_ack, chz_ebys, chz_tscl, chz_tadsoyad) VALUES('" +
                       txt_cseri.Text + "','" +
                       txt_cad.Text + "','" +
                       txt_cip.Text + "','" +
                       dd_cozllk.SelectedItem.Text + "','" +
                       dd_marka.SelectedItem.Text + "','" +
                       hdd.ToString() + "','" +
                       hdds.ToString() + "','" +
                       ssd.ToString() + "','" +
                       ssds.ToString() + "','" +
                       ram.ToString() + "','" +
                       ekarti.ToString() + "','" +
                       islemci.ToString() +"','"+


                       lbl_cbirim.Text + "','" +
                       dt_cgtar.Text + "','" +
                       txt_cariza.Text + "','" +
                       txt_ciebys.Text + "','" +
                       Session["k_sicil"].ToString() + "','" +
                       Session["k_adsoyad"].ToString() + "')", con);



                    cmd.ExecuteNonQuery();

                    // SqlDataSource6.Insert();
                    MessageBox.Show("Kayıt başarılı...","Cihaz Kayıt İşlemi");
                    //ScriptManager.RegisterStartupScript(this.Page, typeof(Page), Guid.NewGuid().ToString(),
                    //                                "toastr.success('Kayıt başarılı...', ' ')", true);
                }
                else
                {
                    MessageBox.Show("Cihaz seri no girmelisiniz...", "Cihaz Kayıt İşlemi");
                    //ScriptManager.RegisterStartupScript(this.Page, typeof(Page), Guid.NewGuid().ToString(),
                    //               "toastr.error('', ' ')", true);
                }



            }
            catch (Exception)
            {
                MessageBox.Show("Kayıt edilirken hata oluştu...", "Cihaz Kayıt İşlemi");
                //ScriptManager.RegisterStartupScript(this.Page, typeof(Page), Guid.NewGuid().ToString(),
                //                    "toastr.error('Kayıt edilirken hata oluştu...', ' ')", true);
            }

        }

        protected void dd_tlpnevi_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (dd_tlpnevi.SelectedItem.Text== "POLNET ŞİFRE SIFIRLAMA")
            {
                pnl_polnetsifre.Visible = true;
                pnl_polceputp.Visible = false;
                pnl_pol5.Visible= false;
                pnl_pol4.Visible= false;
                pnl_intyetki.Visible= false;
                pnl_intsifre.Visible= false;
                pnl_etmysyetki.Visible= false;
            }
            else
            {
                pnl_polnetsifre.Visible=false;
            }

            if (dd_tlpnevi.SelectedItem.Text == "POLNET4 / PTS YETKİ ŞİFRE İŞLEMLERİ")
            {

                pnl_polnetsifre.Visible = false;
                pnl_polceputp.Visible = false;
                pnl_pol5.Visible = false;
                pnl_pol4.Visible = true;
                pnl_intyetki.Visible = false;
                pnl_intsifre.Visible = false;
                pnl_etmysyetki.Visible = false;
            }
            else
            {
                pnl_pol4.Visible = false;
            }

            if (dd_tlpnevi.SelectedItem.Text == "İNTERNET YETKİ TALEBİ")
            {

                pnl_polnetsifre.Visible = false;
                pnl_polceputp.Visible = false;
                pnl_pol5.Visible = false;
                pnl_pol4.Visible = false;
                pnl_intyetki.Visible = true;
                pnl_intsifre.Visible = false;
                pnl_etmysyetki.Visible = false;
            }
            else
            {
                pnl_intyetki.Visible = false;
            }

            if (dd_tlpnevi.SelectedItem.Text== "İNTERNET ŞİFRE SIFIRLAMA")
            {

                pnl_polnetsifre.Visible = false;
                pnl_polceputp.Visible = false;
                pnl_pol5.Visible = false;
                pnl_pol4.Visible = false;
                pnl_intyetki.Visible = false;
                pnl_intsifre.Visible = true;
                pnl_etmysyetki.Visible = false;
            }
            else
            {
                pnl_intsifre.Visible = false;
            }
                     
            if (dd_tlpnevi.SelectedItem.Text == "ETMYS YETKİ TALEBİ")
            {

                pnl_polnetsifre.Visible = false;
                pnl_polceputp.Visible = false;
                pnl_pol5.Visible = false;
                pnl_pol4.Visible = false;
                pnl_intyetki.Visible = false;
                pnl_intsifre.Visible = false;
                pnl_etmysyetki.Visible = true;
            }
            else
            {
                pnl_etmysyetki.Visible = false;
            }

            if (dd_tlpnevi.SelectedItem.Text == "POLCEP / UTP MODÜLÜ")
            {

                pnl_polnetsifre.Visible = false;
                pnl_polceputp.Visible = true;
                pnl_pol5.Visible = false;
                pnl_pol4.Visible = false;
                pnl_intyetki.Visible = false;
                pnl_intsifre.Visible = false;
                pnl_etmysyetki.Visible = false;
            }
            else
            {
                pnl_polceputp.Visible = false;
            }

            if (dd_tlpnevi.SelectedItem.Text == "POLNET5 WEB NESNE TAKİP")
            {

                pnl_polnetsifre.Visible = false;
                pnl_polceputp.Visible = false;
                pnl_pol5.Visible = true;
                pnl_pol4.Visible = false;
                pnl_intyetki.Visible = false;
                pnl_intsifre.Visible = false;
                pnl_etmysyetki.Visible = false;
            }
            else
            {
                pnl_pol5.Visible = false;
            }


        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            DataTable dtt_ = dataClass.get_tbl("select * from win32");
         
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (dd_tlpnevi.SelectedItem.Text == "POLNET ŞİFRE SIFIRLAMA")
            {
               
            }
            else
            {
                
            }

            if (dd_tlpnevi.SelectedItem.Text == "POLNET4 / PTS YETKİ ŞİFRE İŞLEMLERİ")
            {

               
            }
            else
            {
                
            }

            if (dd_tlpnevi.SelectedItem.Text == "İNTERNET YETKİ TALEBİ")
            {

               
            }
            else
            {
                pnl_intyetki.Visible = false;
            }

            if (dd_tlpnevi.SelectedItem.Text == "İNTERNET ŞİFRE SIFIRLAMA")
            {

                
            }
            else
            {
                pnl_intsifre.Visible = false;
            }

            if (dd_tlpnevi.SelectedItem.Text == "ETMYS YETKİ TALEBİ")
            {

               
            }
            else
            {
                pnl_etmysyetki.Visible = false;
            }

            if (dd_tlpnevi.SelectedItem.Text == "POLCEP / UTP MODÜLÜ")
            {

                
            }
            else
            {
                pnl_polceputp.Visible = false;
            }

            if (dd_tlpnevi.SelectedItem.Text == "POLNET5 WEB NESNE TAKİP")
            {

               
            }
            else
            {
                
            }
        }
        //protected void dd_cozllk_SelectedIndexChanged(object sender, EventArgs e)
        //{
        //    if (dd_cozllk.SelectedItem.ToString() == "Yazıcı")
        //    {
        //        dd_chdd.Enabled = false;
        //        txt_chdds.Enabled = false;
        //        dd_cssd.Enabled = false;
        //        txt_ssds.Enabled = false;

        //        dd_ram.Enabled = false;
        //        dd_ekart.Enabled = false;
        //    }
        //    else
        //    {
        //        dd_chdd.Enabled = true;
        //        txt_chdds.Enabled = true;
        //        dd_cssd.Enabled = true;
        //        txt_ssds.Enabled = true;

        //        dd_ram.Enabled = true;
        //        dd_ekart.Enabled = true;
        //    }



        //}


    }
}
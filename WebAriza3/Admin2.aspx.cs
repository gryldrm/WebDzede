﻿using System;
using System.Collections.Generic;
using System.Data.OleDb;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;
using System.Runtime.CompilerServices;

namespace WebAriza3
{
    public partial class Admin2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["k_sicil"] != null)
                {
                    dd_drm0.Items.Insert(0, new ListItem("Seçiniz", String.Empty));
                    dd_drm0.SelectedIndex = 0;

                    dd_drm.Items.Insert(0, new ListItem("Seçiniz", String.Empty));
                    dd_drm.SelectedIndex = 0;

                    dd_drm1.Items.Insert(0, new ListItem("Seçiniz", String.Empty));
                    dd_drm1.SelectedIndex = 0;

                    //
                    //

                    dd_cidrm.Items.Insert(0, new ListItem("Seçiniz", String.Empty));
                    dd_cidrm.SelectedIndex = 0;

                    dd_cidrm0.Items.Insert(0, new ListItem("Seçiniz", String.Empty));
                    dd_cidrm0.SelectedIndex = 0;

                    

                    datayukle();

                   LinkButton7_Click(null,null);
                }
                else
                {
                    Response.Redirect("login.aspx");
                }
            }
        }

        OleDbConnection baglanti;
        private void datayukle()
        {
             
            DataTable dt = dataClass.get_tbl("SELECT top 20 id as ID, birim AS Birim, adisoyadi AS [Adı Soyadı], sicil AS Sicil, nevi AS Nevi, ariza AS Açıklama, ebys AS [EBYS No], tlptar AS [Talep Tarihi], durumu AS Durumu, isl_alanper AS [İşlem Yapan], isl_aciklama AS [Yapılan İşlem], isl_bitis AS [İşlem Bitiş] FROM tbl_ariza order by id desc");
                        
            GridView1.DataSource = dt;
            GridView1.DataBind();
            

        }

        private OleDbConnection db_baglanti()
        {
            baglanti = new OleDbConnection("Provider=Microsoft.ACE.Oledb.12.0; Data Source=|DataDirectory|\\aydinbth1.accdb");
            return baglanti;
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            pnlupdate.Visible = true;
            pnlarama.Visible = false;
            // pnl_kullanici.Visible = false;

            int secili;
            secili = GridView1.SelectedIndex;
            GridViewRow row = GridView1.Rows[secili];
            lbl_id.Text = row.Cells[1].Text;

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            OleDbConnection con = db_baglanti();
            OleDbCommand cmd;

            cmd = new OleDbCommand("UPDATE tbl_ariza SET durumu = '" + dd_drm.SelectedItem.ToString() + "', isl_alanper = " + Session["k_sicil"].ToString() + ", isl_aciklama = '" + txt_ack.Text.ToString() + "', isl_bitis = #" + dt_it.Text.ToString() + "# WHERE(id = " + lbl_id.Text.ToString() + ")", con);

            con.Open();

            if (con.State == ConnectionState.Open)
            {
                try
                {
                    cmd.ExecuteNonQuery();
                    MessageBox.Show("Kayıt başarılı..");

                    // GridView1.DataBind();   
                    datayukle();
                }
                catch (OleDbException ex)
                {
                    MessageBox.Show("Kayıt edilirken hata oluştu..");

                }
            }
            else
            {
                MessageBox.Show("Connection Failed");
            }
            con.Close();
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            pnlupdate.Visible = false;
            pnlarama.Visible = true;
            //pnl_kullanici.Visible = false;
            //pnl_nevi.Visible = false;
            //pnl_drm.Visible = false;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {

            string sorgu = "";
            string srg_select = "SELECT id AS ID, birim AS Birim, adisoyadi AS [Adı Soyadı], sicil AS Sicil, nevi AS Nevi, ariza AS Açıklama, ebys AS [EBYS No], tlptar AS [Talep Tarihi], durumu AS Durumu, isl_alanper AS [İşlem Yapan], isl_aciklama AS [Yapılan İşlem], isl_bitis AS [İşlem Bitiş] FROM tbl_ariza  ";

            if (dd_drm0.SelectedItem.ToString() != "Seçiniz")
            {
                sorgu += " WHERE (birim = '" + dd_drm0.SelectedItem.Text.ToString() + "')";

            }

            if (dd_drm1.SelectedItem.ToString() != "Seçiniz")
            {
                if (sorgu.ToString() == "")
                {
                    sorgu += " WHERE (durumu = '" + dd_drm1.SelectedItem.Text.ToString() + "') ";
                }
                else
                {
                    sorgu += " AND  (durumu = '" + dd_drm1.SelectedItem.Text.ToString() + "') ";
                }

            }

            if (dt_1.Text != "")
            {

                if (sorgu.ToString() == "")
                {
                    sorgu += " WHERE     ( tlptar >=#" + dataClass.trh_con(dt_1.Text) + "# )  ";
                }
                else
                {
                    sorgu += " AND     ( tlptar >=#" + dataClass.trh_con(dt_1.Text) + "# )  ";
                }
            }

            if (dt_2.Text != "")
            {

                DateTime dt2 = DateTime.Parse(dt_2.Text);
                if (sorgu.ToString() == "")
                {
                    sorgu += " WHERE      ( tlptar <=#" + dataClass.trh_con(dt_2.Text) + "# )  ";
                }
                else
                {
                    sorgu += " AND    ( tlptar <=#" + dataClass.trh_con(dt_2.Text) + "# )  ";
                }
            }

            if (dt_3.Text != "")
            {


                if (sorgu.ToString() == "")
                {
                    sorgu += " WHERE      ( isl_bitis >=#" + dataClass.trh_con(dt_3.Text) + "# )  ";
                }
                else
                {
                    sorgu += " AND     ( isl_bitis >=#" + dataClass.trh_con(dt_3.Text) + "# )  ";
                }
            }


            if (dt_4.Text != "")
            {

                if (sorgu.ToString() == "")
                {
                    sorgu += " WHERE    ( isl_bitis <=#" + dataClass.trh_con(dt_4.Text) + "# )  ";
                }
                else
                {
                    sorgu += " AND    ( isl_bitis <=#" + dataClass.trh_con(dt_4.Text) + "# )  ";
                }
            }

            srg_select += sorgu.ToString() + " ORDER BY id DESC";
            DataTable dt = dataClass.get_tbl(srg_select.ToString());



            GridView1.DataSource = dt;
            GridView1.DataBind();

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {


            DataTable dt = dataClass.get_tbl("SELECT id AS ID, birim AS Birim, adisoyadi AS [Adı Soyadı], sicil AS Sicil, nevi AS Nevi, ariza AS Açıklama, ebys AS [EBYS No], tlptar AS [Talep Tarihi], durumu AS Durumu, isl_alanper AS [İşlem Yapan], isl_aciklama AS [Yapılan İşlem], isl_bitis AS [İşlem Bitiş]FROM tbl_ariza WHERE (durumu <> 'İşlem Tamamlandı.') OR (durumu IS NULL) ORDER BY id DESC");


            GridView1.DataSource = dt;
            GridView1.DataBind();


            pnlarama.Visible = false;
            //pnl_kullanici.Visible = false;
            pnlupdate.Visible = false;
            //pnl_nevi.Visible = false;
            //pnl_drm.Visible = false;
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            //pnl_kullanici.Visible = true;
            pnlupdate.Visible = false;
            pnlarama.Visible = false;
        }

        protected void btn_kk_Click1(object sender, EventArgs e)
        {
            if (txt_scl.Text != "")
            {
                if (dd_Rol.SelectedItem.Text != "Seçiniz")
                {
                    SqlDataSource3.Insert();
                    txt_scl.Text = "";

                }
                else
                {


                }
            }

        }

        protected void LinkButton3_Click1(object sender, EventArgs e)
        {
            //pnl_kullanici.Visible = true;
            pnlupdate.Visible = false;
            pnlarama.Visible = false;
            //pnl_nevi.Visible = false;
            //pnl_drm.Visible = false;
        }

        protected void txt_scl_TextChanged(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            dt = dataClass.get_tbl("SELECT k_scl FROM tbl_per  WHERE (k_scl = " + txt_scl.Text.ToString() + ")");
            if (dt.Rows.Count > 0)
            {
                ScriptManager.RegisterStartupScript(this.Page, typeof(Page), Guid.NewGuid().ToString(),
                                    "toastr.error('Aynı sicile ait kullanıcı bulunmakta...', ' ')", true);

                txt_scl.Text = "";
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {


            SqlDataSource4.Insert();

        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            //pnl_kullanici.Visible = false;
            pnlupdate.Visible = false;
            pnlarama.Visible = false;
            //pnl_nevi.Visible = false;
            //pnl_drm.Visible = true;
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            //pnl_kullanici.Visible = false;
            pnlupdate.Visible = false;
            pnlarama.Visible = false;
            //pnl_nevi.Visible = true;
            //pnl_drm.Visible = false;
        }

        protected void Button5_Click(object sender, EventArgs e)
        {

            SqlDataSource5.Insert();

        }

        protected void btn_ckayit_Click(object sender, EventArgs e)
        {



            try
            {
                SqlDataSource6.Insert();
                lbl_ckmsj.Text = "Kayıt Başarılı...";


            }
            catch (Exception)
            {

                lbl_ckmsj.Text = "Kayıt sırasında hata oluştu...";
            }


        }

        protected void GridView5_SelectedIndexChanged(object sender, EventArgs e)
        {

            pnl_ciislem.Visible = true;
            pnl_ciara.Visible = false;
            int secili;
            secili = GridView5.SelectedIndex;

            GridViewRow row = GridView5.Rows[secili];
            lbl_cidd.Text = row.Cells[1].Text;
            DataTable dt = dataClass.get_tbl(" SELECT id, chz_sn, chz_ad, chz_ip, chz_ozl, chz_mrk, chz_hdd, chz_shdd,  chz_ssd,chz_sssd, chz_ram, chz_ek, chz_gy, chz_gtar, chz_ack, chz_yi, chz_itar, chz_drm, chz_cbrm, chz_ctar, chz_iper, chz_ibtar, chz_ebys,chz_tscl,chz_tadsoyad,chz_islemci FROM tbl_chz WHERE (id = " + row.Cells[1].Text.ToString() + ") ORDER BY id DESC ");

            txt_ciserin.Text = dt.Rows[0][1].ToString();
            txt_ciad.Text = dt.Rows[0][2].ToString();

            txt_ciipno.Text = dt.Rows[0][3].ToString();

            lbl_ciozllk.Text = dt.Rows[0][4].ToString();
            lbl_cimrk.Text = dt.Rows[0][5].ToString();

           
           
            if (dt.Rows[0][6].ToString() != "")
            {
                dd_cihdd.Text = dt.Rows[0][6].ToString();
            }

            txthdds.Text = dt.Rows[0][7].ToString();
            if (dt.Rows[0][8].ToString() != "")
            {
                dd_cissd.Text = dt.Rows[0][8].ToString();
            }
            txtssds.Text = dt.Rows[0][9].ToString();

            if (dt.Rows[0][10].ToString() != "")
            {
                dd_ciram.Text = dt.Rows[0][10].ToString();
            }


            if (dt.Rows[0][11].ToString() != "")
            {
                dd_ciekart.Text = dt.Rows[0][11].ToString();
            }



            lbl_cigyer.Text = dt.Rows[0][12].ToString();
            lbl_cigtar.Text = dt.Rows[0][13].ToString();
            txt_ciack.Text = dt.Rows[0][14].ToString();


            txt_ciyis.Text = dt.Rows[0][15].ToString();



            if (dt.Rows[0][17].ToString() != "")
            {
                try
                {
                    dd_cidrm.Text = dt.Rows[0][17].ToString();
                }
                catch (Exception)
                {


                }

            }

            txt_ciyistar.Text =dt.Rows[0][16].ToString();
            txt_ciebys0.Text = dt.Rows[0][22].ToString();

            lbl_tsicil.Text = dt.Rows[0][23].ToString();    
            lbl_tadsad.Text = dt.Rows[0][24].ToString();
            txt_cislemci.Text = dt.Rows[0][25].ToString();

            //DataTable dts = dataClass.get_tbl("SELECT   id AS TakipNo, chz_sn AS SeriNo, chz_ad AS [Cihaz Adı], chz_ip AS [Cihaz İp], chz_ozl AS Tip, chz_mrk AS Marka, chz_hdd AS HDD, chz_shdd AS [Hdd Seri], chz_ssd AS SSD, chz_sssd AS [Ssd Seri], chz_ram AS RAM, chz_ek AS [Ekran Kartı], chz_gy AS Birim, format(chz_gtar, 'dd.mm.yyyy') AS [Geldiği Tarih], chz_ack AS Açıklama, format(chz_itar, 'dd.mm.yyyy') AS [İşlem Tarihi], chz_yi AS [Yapılan İşlem], chz_iper AS Personel, chz_drm AS Durumu FROM tbl_chz   WHERE (chz_sn = '"+ txt_ciserin.Text + "') ORDER BY id DESC");
            //GridView5.DataSource= dts;  
            //GridView5.DataBind();
        }

        protected void btn_cikyt_Click(object sender, EventArgs e)
        {
            if (txt_ciyis.Text != "")
            {

                if (txt_ciyistar.Text != "")
                {
                    if (dd_cidrm.SelectedItem.Text != "Seçiniz")
                    {
                        string sb = "UPDATE tbl_chz SET chz_ad = '" + txt_ciad.Text + "'";

                        if (txt_ciipno.Text != "")
                        {
                            sb += ", chz_ip = '" + txt_ciipno.Text + "'";
                        }

                        if (dd_cihdd.SelectedItem.Text != "Seçiniz")
                        {
                            sb += ", chz_hdd = '" + dd_cihdd.SelectedItem.Text + "', chz_shdd = '" + txthdds.Text + "'";

                        }

                        if (dd_cissd.SelectedItem.Text != "Seçiniz")
                        {
                            sb += ", chz_ssd = '" + dd_cissd.SelectedItem.Text + "', chz_sssd = '" + txtssds.Text + "'";
                        }

                        if (dd_ciram.SelectedItem.Text != "Seçiniz")
                        {
                            sb += ", chz_ram = '" + dd_ciram.SelectedItem.Text + "'";
                        }

                        if (dd_ciekart.SelectedItem.Text != "Seçiniz")
                        {
                            sb += ", chz_ek = '" + dd_ciekart.SelectedItem.Text + "'";
                        }



                        sb += ", chz_yi = '"    + txt_ciyis.Text 
                            + "',chz_sn='"      + txt_ciserin.Text
                            + "',chz_islemci='" + txt_cislemci.Text
                            + "', chz_itar = #" + txt_ciyistar.Text
                            + "#, chz_drm = '"  + dd_cidrm.Text
                            + "', chz_iper = '" + Session["k_sicil"].ToString()
                            + "' WHERE (tbl_chz.id = " + lbl_cidd.Text + ") ";

                       

                        OleDbConnection con = db_baglanti();
                        OleDbCommand cmd;



                        cmd = new OleDbCommand(sb.ToString(), con);

                        con.Open();

                        if (con.State == ConnectionState.Open)
                        {
                            try
                            {
                                cmd.ExecuteNonQuery();
                                lbl_imsj0.Text = "Kayıt başarılı...";

                            }
                            catch (OleDbException ex)
                            {
                                lbl_imsj0.Text = "Kayıt sırasında hata oluştu...";

                            }
                        }
                        else
                        {
                            lbl_imsj0.Text = "Bağlantı hatası...";
                        }
                        con.Close();
                    }
                    else
                    {
                        lbl_imsj0.Text = "Cihaz durumu seçiniz.";
                    }
                }
                else
                {
                    lbl_imsj0.Text = "Yapılan işlem tarihini giriniz.";

                }
            }
            else
            {
                lbl_imsj0.Text = "Yapılan işlemleri detaylı yazınız.";
            }
            //GridView5.DataBind();
        }

        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            pnl_ciislem.Visible = false;
            pnl_ciara.Visible = true;
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            string sorgu = "";
            string srg_select = "SELECT   id AS TakipNo, chz_sn AS SeriNo, chz_ad AS [Cihaz Adı], chz_ip AS [Cihaz İp], chz_ozl AS Tip, chz_mrk AS Marka, chz_islemci as [İşlemci], chz_hdd AS HDD, chz_shdd AS [Hdd Seri], chz_ssd AS SSD, chz_sssd AS [Ssd Seri], chz_ram AS RAM, chz_ek AS [Ekran Kartı], chz_gy AS Birim, format(chz_gtar, 'dd.mm.yyyy') AS [Geldiği Tarih], chz_ack AS Açıklama, format(chz_itar, 'dd.mm.yyyy') AS [İşlem Tarihi], chz_yi AS [Yapılan İşlem], chz_iper AS Personel, chz_drm AS Durumu FROM tbl_chz  ";

            if (txt_caseri.Text != "")
            {
                sorgu += " WHERE (chz_sn = '" + txt_caseri.Text.ToString() + "')";

            }

            if (txt_caad.Text != "")

            {
                if (sorgu.ToString() == "")
                {
                    sorgu += " WHERE (chz_ad = '" + txt_caad.Text.ToString() + "') ";
                }
                else
                {
                    sorgu += " AND  (chz_ad = '" + txt_caad.Text.ToString() + "') ";
                }

            }

            if (dd_cidrm0.SelectedItem.Text != "Seçiniz")
            {
                if (sorgu.ToString() == "")
                {
                    sorgu += " WHERE (chz_drm = '" + dd_cidrm0.SelectedItem.Text.ToString() + "') ";
                }
                else
                {
                    sorgu += " AND  (chz_drm = '" + dd_cidrm0.SelectedItem.Text.ToString() + "') ";
                }
            }

            if (dd_cagyer.SelectedItem.Text != "Seçiniz")
            {
                if (sorgu.ToString() == "")
                {
                    sorgu += " WHERE (chz_gy = '" + dd_cagyer.SelectedItem.Text.ToString() + "') ";
                }
                else
                {
                    sorgu += " AND  (chz_gy = '" + dd_cagyer.SelectedItem.Text.ToString() + "') ";
                }
            }

            if (dt_cagt1.Text != "")
            {

                if (sorgu.ToString() == "")
                {
                    sorgu += " WHERE     ( chz_gtar  >=#" + dataClass.trh_con(dt_cagt1.Text) + "# )  ";
                }
                else
                {
                    sorgu += " AND     ( chz_gtar  >=#" + dataClass.trh_con(dt_cagt1.Text) + "# )  ";
                }
            }

            if (dt_cagt2.Text != "")
            {

                if (sorgu.ToString() == "")
                {
                    sorgu += " WHERE      ( chz_gtar  <=#" + dataClass.trh_con(dt_cagt2.Text) + "# )  ";
                }
                else
                {
                    sorgu += " AND    ( chz_gtar  <=#" + dataClass.trh_con(dt_cagt2.Text) + "# )  ";
                }
            }

            if (dt_cait1.Text != "")
            {


                if (sorgu.ToString() == "")
                {
                    sorgu += " WHERE      ( chz_itar >=#" + dataClass.trh_con(dt_cait1.Text) + "# )  ";
                }
                else
                {
                    sorgu += " AND     ( chz_itar >=#" + dataClass.trh_con(dt_cait1.Text) + "# )  ";
                }
            }

            if (dt_cait2.Text != "")
            {

                if (sorgu.ToString() == "")
                {
                    sorgu += " WHERE    ( chz_itar <=#" + dataClass.trh_con(dt_cait2.Text) + "# )  ";
                }
                else
                {
                    sorgu += " AND    ( chz_itar <=#" + dataClass.trh_con(dt_cait2.Text) + "# )  ";
                }
            }

            //txtctkpno
            if (txtctkpno.Text != "")

            {
                if (sorgu.ToString() == "")
                {
                    sorgu += " WHERE (id = " + txtctkpno.Text.ToString() + ") ";
                }
                else
                {
                    sorgu += " AND  (id = " + txtctkpno.Text.ToString() + ") ";
                }

            }

            srg_select += sorgu.ToString() + " ORDER BY id DESC";
            DataTable dt = dataClass.get_tbl(srg_select.ToString());

            GridView5.DataSource = dt;
            GridView5.DataBind();

        }
        protected void LinkButton7_Click(object sender, EventArgs e)
        {
            //WHERE (chz_drm = 'İşlem Bekliyor') OR (chz_drm IS NULL)
            DataTable dt = dataClass.get_tbl(" SELECT id AS TakipNo, chz_sn AS SeriNo, chz_ad AS [Cihaz Adı], chz_ip AS [Cihaz İp], chz_ozl AS Tip, chz_mrk AS Marka, chz_islemci as [İşlemci], chz_hdd AS HDD, chz_shdd AS [Hdd Seri], chz_ssd AS SSD, chz_sssd AS [Ssd Seri], chz_ram AS RAM, chz_ek AS [Ekran Kartı], chz_gy AS Birim, format(chz_gtar, 'dd.mm.yyyy') AS [Geldiği Tarih], chz_ack AS Açıklama, format(chz_itar, 'dd.mm.yyyy') AS [İşlem Tarihi], chz_yi AS [Yapılan İşlem], chz_iper AS Personel, chz_drm AS Durumu  FROM tbl_chz  order by id desc");
            GridView5.DataSource = dt;
            GridView5.DataBind();
        }

        protected void dd_cozllk_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (dd_cozllk.SelectedItem.ToString() == "Yazıcı")
            {
                dd_chdd.Enabled = false;
                txt_chdds.Enabled = false;
                dd_cssd.Enabled = false;
                txt_ssds.Enabled = false;

                dd_ram.Enabled = false;
                dd_ekart.Enabled = false;
            }
            else
            {
                dd_chdd.Enabled = true;
                txt_chdds.Enabled = true;
                dd_cssd.Enabled = true;
                txt_ssds.Enabled = true;

                dd_ram.Enabled = true;
                dd_ekart.Enabled = true;
            }



        }

        protected void Button9_Click(object sender, EventArgs e)
        {
            SqlDataSource12.Insert();
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            SqlDataSource11.Insert();
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            SqlDataSource13.Insert();
        }

        protected void btn_cikyt0_Click(object sender, EventArgs e)
        {
            SqlDataSource15.Insert();
            GridView5.DataBind();
        }
    }
}
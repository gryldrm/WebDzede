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
                    dd_nevi.Items.Insert(0, new ListItem("Seçin", String.Empty));
                    dd_nevi.SelectedIndex = 0;

                    dd_cozllk.Items.Insert(0, new ListItem("Seçin", String.Empty));
                    dd_cozllk.SelectedIndex = 0;

                    dd_marka.Items.Insert(0, new ListItem("Seçin", String.Empty));
                    dd_marka.SelectedIndex = 0;

                    txt_scl.Text = Session["k_sicil"].ToString();
                    txt_adsad.Text = Session["k_adsoyad"].ToString();
                    lblbirim.Text = Session["k_birim"].ToString();


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

            if (dd_nevi.SelectedItem.Text != "Seçin")
            {
                if (txt_ariza.Text == "" && txt_ebys.Text == "")
                {

                    ScriptManager.RegisterStartupScript(this.Page, typeof(Page), Guid.NewGuid().ToString(),
                                "toastr.warning('Arıza açıklama veya ebys numarası girmelisiniz... ', 'Uyarı')", true);

                }
                else
                {

                    OleDbConnection con = db_baglanti();
                    OleDbCommand cmd;

                    cmd = new OleDbCommand("INSERT into tbl_ariza (birim, adisoyadi,sicil,nevi,ariza,ebys) Values('" +
                        lblbirim.Text.ToString() + "','"
                        + txt_adsad.Text.ToString() + "'," +
                        txt_scl.Text.ToString() + ",'" +
                        dd_nevi.SelectedItem.ToString() + "','" +
                        txt_ariza.Text.ToString() + "','" +
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
                }
            }
            else
            {
                
                ScriptManager.RegisterStartupScript(this.Page, typeof(Page), Guid.NewGuid().ToString(),
                                "toastr.error('Arıza/Talep Nevi seçmelisiniz.', ' ')", true);
            }

        }

        protected void btn_ckayit_Click(object sender, EventArgs e)
        {
            try
            {
                if (txt_cseri.Text !="")
                {
                SqlDataSource6.Insert();
                ScriptManager.RegisterStartupScript(this.Page, typeof(Page), Guid.NewGuid().ToString(),
                                                "toastr.success('Kayıt başarılı...', ' ')", true);
                }
                else
                {
                    ScriptManager.RegisterStartupScript(this.Page, typeof(Page), Guid.NewGuid().ToString(),
                                   "toastr.error('Cihaz seri no girmelisiniz...', ' ')", true);
                }
              


            }
            catch (Exception)
            {

                ScriptManager.RegisterStartupScript(this.Page, typeof(Page), Guid.NewGuid().ToString(),
                                    "toastr.error('Kayıt edilirken hata oluştu...', ' ')", true);
            }

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

      
    }
}
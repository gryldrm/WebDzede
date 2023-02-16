<%@ Page Title="" Language="C#" MasterPageFile="~/mp.Master" AutoEventWireup="true" CodeBehind="YeniCagri.aspx.cs" Inherits="WebAriza3.YeniCagri" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .font5 {
            color: windowtext;
            font-size: 9.0pt;
            font-weight: 700;
            font-style: normal;
            text-decoration: none;
            font-family: "Times New Roman TUR";
        }

        .font6 {
            color: windowtext;
            font-size: 9.0pt;
            font-weight: 400;
            font-style: normal;
            text-decoration: none;
            font-family: "Times New Roman TUR";
        }

        .auto-style1 {
            height: 28px;
        }

        p.MsoNormal {
            margin-top: 0cm;
            margin-right: 0cm;
            margin-bottom: 8.0pt;
            margin-left: 0cm;
            line-height: 107%;
            font-size: 11.0pt;
            font-family: "Calibri",sans-serif;
        }

 
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <div class="container-md">
        <div class="col align-self-center">
            <fieldset class="border p-2">
                <legend class="float-none w-auto p-2">Yeni Çağrı</legend>


                <!-- Button trigger modal -->
                <%--<%-- <button type="button" id="btn_kaydet2" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
                    Şifre Talep Çağrı
                </button>
                <!-- Modal -->
                <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h1 class="modal-title fs-5" id="staticBackdropLabel">Ariza Nevi Talep</h1>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                              

                                
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>

                                <asp:Button runat="server" Text="KAYDET" ID="btn_kaydet" class="btn btn-primary" data-bs-target="#myModal" data-bs-toggle="modal" OnClick="btn_kaydet_Click"></asp:Button>

                            </div>
                        </div>
                    </div>
                </div>--%>
                
                
                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop2">
                    Arıza Talep Çağrı
                </button>
                <div class="modal fade" id="staticBackdrop2" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel2" aria-hidden="true">
                    <div class="modal-dialog modal-xl">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h1 class="modal-title fs-5" id="staticBackdropLabel2">Cihaz Arıza Bildirim</h1>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <%--///////////////////--%>

                             
                            </div>
                            <div class="modal-footer">
                                
<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                <asp:Button runat="server" Text="Kaydet" ID="btn_ckayit" class="btn btn-lg btn-primary" OnClick="btn_ckayit_Click"></asp:Button>
                            </div>
                        </div>
                    </div>
                </div>
                 
                <br />
                <ajaxToolkit:TabContainer ID="TabContainer1" runat="server" ActiveTabIndex="0" Width="100%">
                    <ajaxToolkit:TabPanel runat="server" HeaderText="TabPanel1" ID="TabPanel1">
                        <HeaderTemplate>
                            Şifre ve Yetki Talep İşlemleri
                        </HeaderTemplate>
                        <ContentTemplate>
                            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                <ContentTemplate>
                                  
                                    <table style="width:750px" >
                                        <tr>
                                            <td class="text-center" colspan="3"><strong style="text-align: center">
                                                <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Button" />
                                                <br />
                                                POLNET/İNTERNET/ETMYS/POLCEP/PTS YETKİ / ŞİFRE TALEP İŞLEMLERİ<br /> </strong></td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style3">Talpe Eden Birim Adı</td>
                                            <td>:</td>
                                            <td>
                                                <asp:Label ID="lblbirim" runat="server"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style3">Kullanıcı Adı Soyadı</td>
                                            <td>:</td>
                                            <td>
                                                <asp:TextBox ID="txt_adsad" runat="server" class="form-control" Enabled="False"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style3">Sicili</td>
                                            <td>:</td>
                                            <td>
                                                <asp:TextBox ID="txt_scl" runat="server" class="form-control" Enabled="False"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style3">Ebys No</td>
                                            <td>:</td>
                                            <td>
                                                <asp:TextBox ID="txt_ebys" runat="server" class="form-control" required=""></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style3">&nbsp;</td>
                                            <td>&nbsp;</td>
                                            <td>&nbsp;</td>
                                        </tr>
                                    </table>
                                    <hr />
                                    <table style="width:750px">
                                        <tr>
                                            <td colspan="4" ><strong>
                                                <br />
                                                Kullanıcı Bilgileri<br /> </strong></td>
                                        </tr>
                                        <tr>
                                            <td >Sicili</td>
                                            <td >
                                                <asp:TextBox ID="TextBox53" runat="server" class="form-control" required=""></asp:TextBox>
                                            </td>
                                            <td >Birimi</td>
                                            <td >
                                                <asp:Label ID="lbl_sifrebirim0" runat="server"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td >Adı</td>
                                            <td >
                                                <asp:TextBox ID="TextBox54" runat="server" class="form-control" required=""></asp:TextBox>
                                            </td>
                                            <td >Cep Telefonu</td>
                                            <td >
                                                <asp:TextBox ID="TextBox55" runat="server" class="form-control" required=""></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td >Soyadı</td>
                                            <td >
                                                <asp:TextBox ID="TextBox56" runat="server" class="form-control" required=""></asp:TextBox>
                                            </td>
                                            <td >Harici/Dahili</td>
                                            <td >
                                                <asp:TextBox ID="TextBox57" runat="server" class="form-control" required=""></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td >Rütbesi</td>
                                            <td >
                                                <asp:DropDownList ID="DropDownList25" runat="server" class="form-control" required="">
                                                    <asp:ListItem>Seçiniz</asp:ListItem>
                                                    <asp:ListItem>2. Sınıf Emniyet Müdürü</asp:ListItem>
                                                    <asp:ListItem>3. Sınıf Emniyet Müdürü</asp:ListItem>
                                                    <asp:ListItem>4. Sınıf Emniyet Müdürü</asp:ListItem>
                                                    <asp:ListItem>Emniyet Amiri</asp:ListItem>
                                                    <asp:ListItem>Başkomiser</asp:ListItem>
                                                    <asp:ListItem>Komiser</asp:ListItem>
                                                    <asp:ListItem>Komiser Yardımcısı</asp:ListItem>
                                                    <asp:ListItem>Kıdemli Başpolis Memuru</asp:ListItem>
                                                    <asp:ListItem>Başpolis Memuru</asp:ListItem>
                                                    <asp:ListItem>Polis Memuru</asp:ListItem>
                                                    <asp:ListItem>Çarşı ve Mahalle Bekçisi</asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                                            <td >Kurumsal Eposta</td>
                                            <td >
                                                <asp:TextBox ID="TextBox58" runat="server" class="form-control" required=""></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td >Talep Şifre/Yetki</td>
                                            <td colspan="3" style="border-collapse: collapse; border-color: #000000; border-width: 1px">
                                                <asp:DropDownList ID="dd_tlpnevi" runat="server" AppendDataBoundItems="True" AutoPostBack="True" class="form-control" DataSourceID="SqlDataSource16" DataTextField="nevi" DataValueField="nevi" OnSelectedIndexChanged="dd_tlpnevi_SelectedIndexChanged" required="">
                                                </asp:DropDownList>
                                                <asp:SqlDataSource ID="SqlDataSource16" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [tbl_nevi]"></asp:SqlDataSource>
                                            </td>
                                        </tr>
                                    </table>
                                    <asp:Panel ID="pnl_polnetsifre" runat="server" Visible="False">
                                        <table style="width:750px" >
                                            <tr>
                                                <td colspan="3" >
                                                    <strong>
                                                    <br />
                                                    POLNET(Bilgisayar Açılış) ŞİFRE İŞLEMLERİ<br /> </strong></td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:CheckBox ID="CheckBox72" runat="server" class="form-control" Text="Yeni Şifre" />
                                                </td>
                                                <td>
                                                    <asp:CheckBox ID="CheckBox73" runat="server" class="form-control" Text="Şifre İptali" />
                                                </td>
                                                <td>
                                                    <asp:CheckBox ID="CheckBox74" runat="server" class="form-control" Text="Şifre Dğişikliği" />
                                                </td>
                                            </tr>
                                        </table>
                                    </asp:Panel>
                                    <asp:Panel ID="pnl_intsifre" runat="server" Visible="False">
                                        <table style="width:750px" >
                                            <tr>
                                                <td colspan="3" >
                                                    <strong>
                                                    <br />
                                                    İNTERNET ŞİFRE İŞLEMLERİ<br /> </strong></td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:CheckBox ID="CheckBox86" runat="server" class="form-control" Text="Yeni Şifre" />
                                                </td>
                                                <td>
                                                    <asp:CheckBox ID="CheckBox87" runat="server" class="form-control" Text="Şifre İptali" />
                                                </td>
                                                <td>
                                                    <asp:CheckBox ID="CheckBox88" runat="server" class="form-control" Text="Şifre Dğişikliği" />
                                                </td>
                                            </tr>
                                        </table>
                                    </asp:Panel>
                                    <asp:Panel ID="pnl_intyetki" runat="server" Visible="False">
                                        <table style="width:750px">
                                            <tr>
                                                <td ><strong>
                                                    <br />
                                                    İNTERNET YETKİ </strong>İ<span class="auto-style2">ŞLEMLERİ</span></td>
                                            </tr>
                                            <tr>
                                                <td >
                                                    <asp:CheckBox class="form-control" ID="CheckBox75" runat="server" Text="Standart Kullanıcı" />
                                                </td>
                                                <td >
                                                    <asp:CheckBox  class="form-control" ID="CheckBox76" runat="server" Text="Araştırmacı Kullanıcı" />
                                                </td>
                                            </tr>
                                        </table>
                                    </asp:Panel>
                                    <asp:Panel ID="pnl_etmysyetki" runat="server" Visible="False">
                                        <table style="width:750px">
                                            <tr>
                                                <td colspan="3" ><strong>
                                                    <br />
                                                    ETMYS KULLANICI HESABI TALEP FORMU<br /> </strong></td>
                                            </tr>
                                            <tr>
                                                <td><strong>Kullanıcı Bilgileri</strong></td>
                                                <td>&nbsp;</td>
                                                <td><strong>Görevi</strong></td>
                                            </tr>
                                            <tr>
                                                <td >TC No</td>
                                                <td >
                                                    <asp:TextBox ID="TextBox59" runat="server" class="form-control" required=""></asp:TextBox>
                                                </td>
                                                <td >
                                                    <asp:CheckBox ID="CheckBox1" runat="server" class="form-control" required="" Text="Birim Harcama Yetkilisi" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td >Değişiklik Sebebi</td>
                                                <td >
                                                    <asp:TextBox ID="TextBox8" runat="server" class="form-control" required=""></asp:TextBox>
                                                </td>
                                                <td >
                                                    <asp:CheckBox ID="CheckBox2" runat="server" class="form-control" required="" Text="Taşınır Mal Saymanı" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td >Asil / Yedek</td>
                                                <td >
                                                    <asp:DropDownList ID="DropDownList4" runat="server" class="form-control" required="">
                                                        <asp:ListItem>Seçiniz</asp:ListItem>
                                                        <asp:ListItem>Asil</asp:ListItem>
                                                        <asp:ListItem>Yedek</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                                <td >
                                                    <asp:CheckBox ID="CheckBox3" runat="server" class="form-control" required="" Text="Taşınır Mal Hesap Sorumlusu" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td ><strong>İşlem Tipi</strong></td>
                                                <td >
                                                    <asp:CheckBox ID="CheckBox9" runat="server" class="form-control" required="" Text="Yeni Kayıt" />
                                                </td>
                                                <td >
                                                    <asp:CheckBox ID="CheckBox4" runat="server" class="form-control" required="" Text="Taşınır Mal Sorumlusu" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td >&nbsp;</td>
                                                <td >&nbsp;</td>
                                                <td >
                                                    <asp:CheckBox ID="CheckBox5" runat="server" class="form-control" required="" Text="Kullanıcı Birim Taşınır Mal Sorumlusu" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td >&nbsp;</td>
                                                <td >&nbsp;</td>
                                                <td >
                                                    <asp:CheckBox ID="CheckBox6" runat="server" class="form-control" required="" Text="ETMYS Bilgi İşlem Yöneticisi" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td >&nbsp;</td>
                                                <td >&nbsp;</td>
                                                <td >
                                                    <asp:CheckBox ID="CheckBox7" runat="server" class="form-control" required="" Text="Taşınır Mal Saymanlığı Birim Amiri" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td >&nbsp;</td>
                                                <td >&nbsp;</td>
                                                <td >
                                                    <asp:CheckBox  ID="CheckBox8" runat="server" class="form-control" required="" Text="ETMYS Kullanıcı Birim Amiri" />
                                                </td>
                                            </tr>
                                        </table>
                                    </asp:Panel>
                                    <asp:Panel ID="pnl_polceputp" runat="server" Visible="False">
                                        <table  style="width:750px">
                                            <tr>
                                                <td >
                                                    <br />
                                                    <strong>POLCEP/UTP YETKİ / ŞİFRE TALEP FORMU<br /> </strong>
                                                    <br />
                                                    <strong>
                                                    POLCEP/UTP MODÜLÜ (Uygulama Takip Projesi)</strong></td>
                                            </tr>
                                            <tr>
                                                <td >Mobil İşlemler Yetkisi Asayiş Şube Müdürlüğü tarafından tanımlanmaktadır<asp:CheckBox class="form-control" ID="CheckBox44" runat="server" Text="UTP Görev İşlemleri" />
                                                    .</td>
                                            </tr>
                                        </table>
                                    </asp:Panel>
                                    <asp:Panel ID="pnl_pol4" runat="server" Visible="False">
                                        <table style="width:750px">
                                            <tr>
                                                <td colspan="3">
                                                    <strong>
                                                    <br />
                                                    POLNET-4 / PTS / YETKİ VE ŞİFRE İŞLEMLERİ<br />
                                                    <br />
                                                    Plaka Takip Sistemi Şifre / Yetki İşlemleri</strong></td>
                                            </tr>
                                            <tr>
                                                <td style="vertical-align: top">
                                                    <asp:CheckBox class="form-control" ID="CheckBox65" runat="server" Text="Yeni Kayıt" />
                                                    <asp:CheckBox class="form-control" ID="CheckBox66" runat="server" Text="Yetki İptali" />
                                                </td>
                                                <td style="vertical-align: top">
                                                    <asp:CheckBox class="form-control" ID="CheckBox67" runat="server" Text="Polnet4 Şifre Sıfırlama" />
                                                </td>
                                                <td>
                                                    <asp:CheckBox class="form-control" ID="CheckBox68" runat="server" Text="PTS Takip İl Kullanıcısı-Adli Birim" />
                                                    <asp:CheckBox class="form-control" ID="CheckBox69" runat="server" Text="PTS Takip İl Kullanıcısı-Haberleşme" />
                                                </td>
                                            </tr>
                                        </table>
                                    </asp:Panel>
                                    <asp:Panel ID="pnl_pol5" runat="server" Visible="False">
                                        <table style="width:750px">
                                            <tr>
                                                <td colspan="2" ><strong>
                                                    <br />
                                                    POLNET5 WEB NESNE TAKİP PROJESİ KULLANICI YETKİLENDİRME </strong>İ<span class="auto-style2">ŞLEMLERİ<br />
                                                    <br />
                                                    <strong>Plaka Takip Sistemi Şifre / Yetki İşlemleri</strong></span></td>
                                            </tr>
                                            <tr>
                                                <td style="vertical-align: top">
                                                    <asp:CheckBox class="form-control" ID="CheckBox83" runat="server" Text="Yeni Kayıt" />
                                                    <asp:CheckBox class="form-control" ID="CheckBox84" runat="server" Text="İptal" />
                                                    <br />
                                                    <br />
                                                </td>
                                                <td>
                                                    <asp:CheckBox class="form-control" ID="CheckBox80" runat="server" Text="İl İzleyici Rolü" />
                                                    <asp:CheckBox class="form-control" ID="CheckBox82" runat="server" Text="Birim İzleyici Rolü" />
                                                    <asp:CheckBox class="form-control" ID="CheckBox81" runat="server" Text="İlçe İzleyici Rolü" />
                                                    <asp:CheckBox class="form-control" ID="CheckBox79" runat="server" Text="Nesne Takip Birim Yöneticisi" />
                                                    <asp:CheckBox class="form-control" ID="CheckBox78" runat="server" Text="Nesne Takip İlçe Yöneticisi" />
                                                    <asp:CheckBox class="form-control" ID="CheckBox77" runat="server" Text="Grup İzleyici Rolü" />
                                                </td>
                                            </tr>
                                        </table>
                                    </asp:Panel>
                                  
                                    <br />
                                    <table style="width:750px">
                                        <tr>
                                            <td>
                                                <table>
                                                    <tr>
                                                        <td>&nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td>1) KULLANICI<span>&nbsp; </span>GÜVENLİK<span>&nbsp; </span>TALİMATI</td>
                                                    </tr>
                                                    <tr>
                                                        <td>* Kullanıcı sadece kendisine ait kod ve şifre ile sisteme bağlanacaktır. Kullanıcı kod ve şifresi kesinlikle bir başkası tarafından kullanılmamalı ve kullandırılmamalıdır.
                                                            <br />
                                                            * Görev değişikliği olan kullanıcının kod ve şifresinin yenilenmesi ve iptalinden kullanıcı sorumludur. Kullanıcının bu formda belirttiği bilgilerin veya görevinin değişmesi halinde bildirimde bulunması zorunludur.
                                                            <br />
                                                            * Uygulamalar kapsamındaki işlemler log&#39;larda kayıt altına alındığından yapılacak tüm işlemlerin adli ve idari tüm hukuki sorumluluğu projeye bağlanılan kod ve şifre sahibine aittir.
                                                            <br />
                                                            * Uygulama kullanıcısı(UTP, ETMYS, PTS) PolNet4 kullanıcı yetkisine sahip olmalıdır. Uygulama, işlem bittikten sonra veya mobil cihaz terk edilmeden önce kapatılacaktır.
                                                            <br />
                                                            * Kullanıcı, kendisine tanımlanan ‘kullanıcı hesabı’ ile gireceği ETMYS ETKİ ALANI içinde gerçekleştireceği tüm işlemlerden sorumludur. Tanımlanan ‘kullanıcı hesabı’nın bir başkası tarafından kullanılmış olması, bu durumu değiştirmeyeceği gibi, kullanan kişiyi de aynı derecede sorumluluk altına sokar. Kullanıcı kendisine tahsis edilen ilk şifreyi değiştirmek zorundadır.
                                                            <br />
                                                            * İNTERNET kapsamındaki bilgisayarlar hiçbir surette başka bir bilgisayar ağına ( POLNET vs. ) bağlanamaz.
                                                            <br />
                                                            * İNTERNET kapsamındaki bilgisayarlar mesai bitiminde tamamen kapalı ( Shut-Down ), mesai dâhilinde kilitli ( Lock )konumuna getirilmeden terk edilemez.
                                                            <br />
                                                            * İnternet kapsamındaki uç kullanıcı bilgisayarlarında sadece TCP/IP protokolü kullanılacaktır. İnternet Uç Kullanıcıları İnternet Üzerinde yaptıkları işlemlerden ve kullanıcı hesaplarının güvenliğinden sorumludur.
                                                            <br />
                                                            * İnternet Bilgisayarlarında gizlilik dereceli bilgi ve belge bulundurulmaz. Sistemde yapılan tüm işlemlerin, adli ve idari tüm hukuki sorumluluğu kullanıcı kodu sahibine aittir.
                                                            <br />
                                                            * Kullanıcı kodlarının, asıl sahibinden farklı biri tarafından kullanıldığının tespit edilmesi halinde, kullanan kişi de aynı derecede sorumluluk sahibidir.
                                                            <br />
                                                            * Polnet kapsamındaki hiçbir bilgisayarın mevcut sistem, iletişim ve yazılım konfigürasyonu değiştirilemez.
                                                            <br />
                                                            * Şifre/Yetki Talep Formu ile üst yazının çelişmesi halinde Şifre/Yetki Talep Formu dikkate alınacaktır. Üst yazı ile Şifre/Yetki Talep Formunun doğruluğunun kontrolü talebi yapan birime aittir.
                                                            <br />
                                                            * Kullanıcı, bu talep formunda belirttiği bilgilerin doğru olduğunu ve tüm bu maddeleri daha sonra hiçbir itiraza mahal vermeyecek şekilde okuduğunu, kabul ve taahhüt etmiştir.
                                                            <br />
                                                            * 27.10.2000 gün ve B.05.1.EGM.0.77.05.02-2809-10280-2000 sayılı genelgenin ihlalinde uygulanacak idari işlem ve Güvenlik talimatının ihlalinde uygulanacak
                                                            <br />
                                                            *İdari işlem Genel Kolluk Disiplin Hükümleri Hakkında KHK 8. Madde 5/Ç -11. fıkra ve adli işlem T.C.K. 132, 138, 243, 244 maddelerini kapsamaktadır. 
                                                            <br />
                                                            <asp:CheckBox class="form-control" ID="CheckBox89" runat="server" Text="Kullanıcı Güvenlik Talimatını okudum onaylıyorum." />
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="text-align: center" >
                                                <asp:Button class="btn btn-primary" ID="Button2" runat="server" Text="Onayla / Çıktı Al" />
                                            </td>
                                        </tr>
                                    </table>
                                </ContentTemplate>
                            </asp:UpdatePanel>
                            <br />
                            <br />
                            <br />
                        </ContentTemplate>
                    </ajaxToolkit:TabPanel>
                    <ajaxToolkit:TabPanel ID="TabPanel2" runat="server" HeaderText="TabPanel2">
                        <HeaderTemplate>
                            Cihaz Arıza Bildirimleri
                        </HeaderTemplate>
                        <ContentTemplate>
                            <table>
                                <tr>
                                    <td style="vertical-align: top">Cihaz Seri No:<asp:TextBox ID="txt_cseri" runat="server" class="form-control" placeholder="Seri No" required=""></asp:TextBox>
                                    </td>
                                    <td style="vertical-align: top">Cihaz Adı:<asp:TextBox ID="txt_cad" runat="server" class="form-control" placeholder="Cihaz Adı" required=""></asp:TextBox>
                                    </td>
                                    <td style="vertical-align: top">Birim:<asp:Label ID="lbl_cbirim" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="vertical-align: top">
                                        <br />
                                        Özellikleri:<asp:DropDownList ID="dd_cozllk" runat="server" AppendDataBoundItems="True" class="form-control" DataSourceID="SqlDataSource7" DataTextField="tbl_ozl" DataValueField="tbl_ozl" required="Seçiniz">
                                        </asp:DropDownList>
                                        <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [tbl_cozl]"></asp:SqlDataSource>
                                    </td>
                                    <td style="vertical-align: top">
                                        <br />
                                        Cihaz Marka:<asp:DropDownList ID="dd_marka" runat="server" AppendDataBoundItems="True" class="form-control" DataSourceID="SqlDataSource8" DataTextField="tbl_cmrk" DataValueField="tbl_cmrk" placeholder="Cihaz Adı" required="Seçin">
                                        </asp:DropDownList>
                                        <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [tbl_mrk]"></asp:SqlDataSource>
                                        İp No:<asp:TextBox ID="txt_cip" runat="server" class="form-control" placeholder="İp No" required=""></asp:TextBox>
                                        <br />
                                        <br />
                                    </td>
                                    <td style="vertical-align: top">Tarih:<asp:TextBox ID="dt_cgtar" runat="server" class="form-control" placeholder="" required="" TextMode="Date"></asp:TextBox>
                                        <br />
                                        Arıza Açıklama:<asp:TextBox ID="txt_cariza" runat="server" class="form-control" Height="84px" placeholder="" required="" TextMode="MultiLine"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="vertical-align: top">Ebys No:<asp:TextBox ID="txt_ciebys" runat="server" class="form-control" placeholder="" required="" Width="288px"></asp:TextBox>
                                    </td>
                                    <td style="vertical-align: top"></td>
                                    <td class="auto-style1" style="vertical-align: top; text-align: center;">
                                        <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [tbl_chz] WHERE [id] = ?" InsertCommand="INSERT INTO tbl_chz
                         (chz_sn, chz_ad, chz_ip, chz_ozl,chz_mrk,  chz_gy, chz_gtar, chz_ack,chz_ebys,chz_tscl,chz_tadsoyad)
VALUES        (?,?,?,?,?,?,?,?,?,?,?)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [tbl_chz]" UpdateCommand="UPDATE [tbl_chz] SET [chz_sn] = ?, [chz_ad] = ?, [chz_ip] = ?, [chz_ozl] = ?, [chz_mrk] = ?, [chz_hdd] = ?, [chz_ssd] = ?, [chz_ram] = ?, [chz_ek] = ?, [chz_gy] = ?, [chz_gtar] = ?, [chz_ack] = ?, [chz_yi] = ?, [chz_itar] = ?, [chz_drm] = ?, [chz_cbrm] = ?, [chz_ctar] = ?, [chz_iper] = ?, [chz_ibtar] = ? WHERE [id] = ?">
                                            <DeleteParameters>
                                                <asp:Parameter Name="id" Type="Int32" />
                                            </DeleteParameters>
                                            <InsertParameters>
                                                <asp:ControlParameter ControlID="txt_cseri" Name="chz_sn" PropertyName="Text" Type="String" />
                                                <asp:ControlParameter ControlID="txt_cad" Name="chz_ad" PropertyName="Text" Type="String" />
                                                <asp:ControlParameter ControlID="txt_cip" Name="chz_ip" PropertyName="Text" Type="String" />
                                                <asp:ControlParameter ControlID="dd_cozllk" Name="chz_ozl" PropertyName="SelectedValue" Type="String" />
                                                <asp:ControlParameter ControlID="dd_marka" Name="chz_mrk" PropertyName="SelectedValue" Type="String" />
                                                <asp:ControlParameter ControlID="dd_cgyer" Name="chz_gy" PropertyName="SelectedValue" Type="String" />
                                                <asp:ControlParameter ControlID="dt_cgtar" Name="chz_gtar" PropertyName="Text" Type="DateTime" />
                                                <asp:ControlParameter ControlID="txt_cariza" Name="chz_ack" PropertyName="Text" />
                                                <asp:ControlParameter ControlID="txt_ciebys" Name="chz_ebys" PropertyName="Text" />
                                                <asp:SessionParameter Name="chz_tscl" SessionField="k_sicil" />
                                                <asp:SessionParameter Name="chz_tadsoyad" SessionField="k_adsoyad" />
                                            </InsertParameters>
                                            <UpdateParameters>
                                                <asp:Parameter Name="chz_sn" Type="String" />
                                                <asp:Parameter Name="chz_ad" Type="String" />
                                                <asp:Parameter Name="chz_ip" Type="String" />
                                                <asp:Parameter Name="chz_ozl" Type="String" />
                                                <asp:Parameter Name="chz_mrk" Type="String" />
                                                <asp:Parameter Name="chz_hdd" Type="String" />
                                                <asp:Parameter Name="chz_ssd" Type="String" />
                                                <asp:Parameter Name="chz_ram" Type="String" />
                                                <asp:Parameter Name="chz_ek" Type="String" />
                                                <asp:Parameter Name="chz_gy" Type="String" />
                                                <asp:Parameter Name="chz_gtar" Type="DateTime" />
                                                <asp:Parameter Name="chz_ack" Type="String" />
                                                <asp:Parameter Name="chz_yi" Type="String" />
                                                <asp:Parameter Name="chz_itar" Type="DateTime" />
                                                <asp:Parameter Name="chz_drm" Type="String" />
                                                <asp:Parameter Name="chz_cbrm" Type="String" />
                                                <asp:Parameter Name="chz_ctar" Type="DateTime" />
                                                <asp:Parameter Name="chz_iper" Type="String" />
                                                <asp:Parameter Name="chz_ibtar" Type="DateTime" />
                                                <asp:Parameter Name="id" Type="Int32" />
                                            </UpdateParameters>
                                        </asp:SqlDataSource>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="vertical-align: top">
                                        <asp:Label ID="lbl_ckmsj" runat="server"></asp:Label>
                                    </td>
                                    <td></td>
                                    <td style="text-align: center">
                                        <asp:Button class="btn btn-primary" ID="btn_ckayitt" runat="server" OnClick="btn_ckayit_Click" Text="Kaydet" />
                                    </td>
                                </tr>
                            </table>
                        </ContentTemplate>
                    </ajaxToolkit:TabPanel>
                </ajaxToolkit:TabContainer>
              
           
                <br />
               
              
           
                <br />

            </fieldset>
        </div>
    </div>

</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/mp.Master" AutoEventWireup="true" CodeBehind="YeniCagri.aspx.cs" Inherits="WebAriza3.YeniCagri" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

.font5
	{color:windowtext;
	font-size:9.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:"Times New Roman TUR";
	}
.font6
	{color:windowtext;
	font-size:9.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:"Times New Roman TUR";
	}
        
        .auto-style1 {
            height: 28px;
        }
        .auto-style2 {
            text-align: center;
            height: 41px;
        }
 p.MsoNormal
	{margin-top:0cm;
	margin-right:0cm;
	margin-bottom:8.0pt;
	margin-left:0cm;
	line-height:107%;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	}
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <div class="container-md">
        <div class="col align-self-center">
            <fieldset class="border p-2">
                <legend class="float-none w-auto p-2">Yeni Çağrı</legend>


                <!-- Button trigger modal -->
                <button type="button" id="btn_kaydet2" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
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
                                <%--//////////////////////////////////--%>
                                <table>
                                    <tr>
                                        <td>TALEP EDEN BİRİM ADI</td>
                                        <td>:</td>
                                        <td>
                                            <asp:Label runat="server" ID="lblbirim"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>KULLANICININ ADI SOYADI</td>
                                        <td>:</td>
                                        <td>
                                            <asp:TextBox runat="server" Enabled="False" ID="txt_adsad" class="form-control"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>SİCİLİ</td>
                                        <td>:</td>
                                        <td>
                                            <asp:TextBox runat="server" Enabled="False" ID="txt_scl" class="form-control"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>ARIZA/TALEP NEVİ</td>
                                        <td>:</td>
                                        <td>
                                            <asp:DropDownList required="" runat="server" AppendDataBoundItems="True" DataTextField="nevi" DataValueField="nevi" DataSourceID="AccessDataSource2" ID="dd_nevi" class="form-select">
                                            </asp:DropDownList>
                                            <asp:AccessDataSource runat="server"
                                                DataFile="~/App_Data/aydinbth1.accdb"
                                                SelectCommand="SELECT * FROM [tbl_nevi]"
                                                ID="AccessDataSource2"></asp:AccessDataSource>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>ARIZA / TALEP İLE İLGİLİ KULLANICI ŞİKAYETİ</td>
                                        <td>:</td>
                                        <td>
                                            <asp:TextBox required="" runat="server" TextMode="MultiLine" ID="txt_ariza" class="form-control"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>TALEP YAZISI EBYS NO</td>
                                        <td>:</td>
                                        <td>
                                            <asp:TextBox required="" runat="server" ID="txt_ebys" class="form-control"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td></td>
                                    </tr>
                                </table>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>

                                <asp:Button runat="server" Text="KAYDET" ID="btn_kaydet" class="btn btn-primary" data-bs-target="#myModal" data-bs-toggle="modal" OnClick="btn_kaydet_Click"></asp:Button>

                            </div>
                        </div>
                    </div>
                </div>

                <!-- Button trigger modal -->
                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop2">
                    Arıza Talep Çağrı
                </button>


                <!-- Modal -->
                <div class="modal fade" id="staticBackdrop2" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel2" aria-hidden="true">
                    <div class="modal-dialog modal-xl">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h1 class="modal-title fs-5" id="staticBackdropLabel2">Cihaz Arıza Bildirim</h1>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <%--///////////////////--%>
<table>
                                    <tr>
                                        <td style="vertical-align: top">Cihaz Seri No:<asp:TextBox required="" runat="server" ID="txt_cseri" class="form-control" placeholder="Seri No"></asp:TextBox>

                                        </td>
                                        <td style="vertical-align: top">Cihaz Adı:<asp:TextBox required="" runat="server" ID="txt_cad" class="form-control" placeholder="Cihaz Adı"></asp:TextBox>

                                        </td>
                                        <td style="vertical-align: top"></td>
                                        <td style="vertical-align: top"></td>
                                        <td style="vertical-align: top">Birim:<asp:Label ID="lbl_cbirim" runat="server" Text=""></asp:Label>
                                            
                                           <%-- <asp:DropDownList required="Seçiniz" runat="server" DataTextField="birim" Enabled="false" DataValueField="birim" DataSourceID="SqlDataSource9" ID="dd_cgyer" class="form-control" placeholder="">
                                        </asp:DropDownList>

                                            <asp:SqlDataSource runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [tbl_birim]" ID="SqlDataSource9"></asp:SqlDataSource>--%>

                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="vertical-align: top">
                                            <br />
                                            Özellikleri:<asp:DropDownList required="Seçiniz" runat="server" AppendDataBoundItems="true" DataTextField="tbl_ozl" DataValueField="tbl_ozl" DataSourceID="SqlDataSource7" ID="dd_cozllk" class="form-control">
                                            </asp:DropDownList>

                                            <asp:SqlDataSource runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [tbl_cozl]" ID="SqlDataSource7"></asp:SqlDataSource>


                                        </td>
                                        <td style="vertical-align: top">
                                            <br />
                                            Cihaz Marka:<asp:DropDownList required="Seçin" runat="server" AppendDataBoundItems="true" DataTextField="tbl_cmrk" DataValueField="tbl_cmrk" DataSourceID="SqlDataSource8" ID="dd_marka" class="form-control" placeholder="Cihaz Adı">
                                            </asp:DropDownList>

                                            <asp:SqlDataSource runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [tbl_mrk]" ID="SqlDataSource8"></asp:SqlDataSource>

                                            İp No:<asp:TextBox required="" runat="server" ID="txt_cip" class="form-control" placeholder="İp No"></asp:TextBox>

                                            <br />
                                            <br />
                                        </td>
                                        <td></td>
                                        <td style="vertical-align: top"></td>
                                        <td style="vertical-align: top">Tarih:<asp:TextBox required="" runat="server" TextMode="Date" ID="dt_cgtar" class="form-control" placeholder=""></asp:TextBox>

                                            <br />
                                            Arıza Açıklama:<asp:TextBox required="" runat="server" TextMode="MultiLine" Height="84px" ID="txt_cariza" class="form-control" placeholder=""></asp:TextBox>

                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="vertical-align: top">Ebys No:<asp:TextBox required="" runat="server" Width="288px" ID="txt_ciebys" class="form-control" placeholder=""></asp:TextBox>

                                        </td>
                                        <td style="vertical-align: top"></td>
                                        <td style="vertical-align: top"></td>
                                        <td style="vertical-align: top"></td>
                                        <td class="auto-style1" style="vertical-align: top; text-align: center;">
                                            <asp:SqlDataSource runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [tbl_chz] WHERE [id] = ?" InsertCommand="INSERT INTO tbl_chz
                         (chz_sn, chz_ad, chz_ip, chz_ozl,chz_mrk,  chz_gy, chz_gtar, chz_ack,chz_ebys,chz_tscl,chz_tadsoyad)
VALUES        (?,?,?,?,?,?,?,?,?,?,?)"
                                                ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [tbl_chz]" UpdateCommand="UPDATE [tbl_chz] SET [chz_sn] = ?, [chz_ad] = ?, [chz_ip] = ?, [chz_ozl] = ?, [chz_mrk] = ?, [chz_hdd] = ?, [chz_ssd] = ?, [chz_ram] = ?, [chz_ek] = ?, [chz_gy] = ?, [chz_gtar] = ?, [chz_ack] = ?, [chz_yi] = ?, [chz_itar] = ?, [chz_drm] = ?, [chz_cbrm] = ?, [chz_ctar] = ?, [chz_iper] = ?, [chz_ibtar] = ? WHERE [id] = ?" ID="SqlDataSource6">
                                                <DeleteParameters>
                                                    <asp:Parameter Name="id" Type="Int32"></asp:Parameter>
                                                </DeleteParameters>
                                                <InsertParameters>
                                                    <asp:ControlParameter ControlID="txt_cseri" PropertyName="Text" Name="chz_sn" Type="String"></asp:ControlParameter>
                                                    <asp:ControlParameter ControlID="txt_cad" PropertyName="Text" Name="chz_ad" Type="String"></asp:ControlParameter>
                                                    <asp:ControlParameter ControlID="txt_cip" PropertyName="Text" Name="chz_ip" Type="String"></asp:ControlParameter>
                                                    <asp:ControlParameter ControlID="dd_cozllk" PropertyName="SelectedValue" Name="chz_ozl" Type="String"></asp:ControlParameter>
                                                    <asp:ControlParameter ControlID="dd_marka" PropertyName="SelectedValue" Name="chz_mrk" Type="String"></asp:ControlParameter>
                                                    <asp:ControlParameter ControlID="dd_cgyer" PropertyName="SelectedValue" Name="chz_gy" Type="String"></asp:ControlParameter>
                                                    <asp:ControlParameter ControlID="dt_cgtar" PropertyName="Text" Name="chz_gtar" Type="DateTime"></asp:ControlParameter>
                                                    <asp:ControlParameter ControlID="txt_cariza" PropertyName="Text" Name="chz_ack"></asp:ControlParameter>
                                                    <asp:ControlParameter ControlID="txt_ciebys" PropertyName="Text" Name="chz_ebys"></asp:ControlParameter>
                                                    <asp:SessionParameter SessionField="k_sicil" Name="chz_tscl"></asp:SessionParameter>
                                                    <asp:SessionParameter Name="chz_tadsoyad" SessionField="k_adsoyad" />
                                                </InsertParameters>
                                                <UpdateParameters>
                                                    <asp:Parameter Name="chz_sn" Type="String"></asp:Parameter>
                                                    <asp:Parameter Name="chz_ad" Type="String"></asp:Parameter>
                                                    <asp:Parameter Name="chz_ip" Type="String"></asp:Parameter>
                                                    <asp:Parameter Name="chz_ozl" Type="String"></asp:Parameter>
                                                    <asp:Parameter Name="chz_mrk" Type="String"></asp:Parameter>
                                                    <asp:Parameter Name="chz_hdd" Type="String"></asp:Parameter>
                                                    <asp:Parameter Name="chz_ssd" Type="String"></asp:Parameter>
                                                    <asp:Parameter Name="chz_ram" Type="String"></asp:Parameter>
                                                    <asp:Parameter Name="chz_ek" Type="String"></asp:Parameter>
                                                    <asp:Parameter Name="chz_gy" Type="String"></asp:Parameter>
                                                    <asp:Parameter Name="chz_gtar" Type="DateTime"></asp:Parameter>
                                                    <asp:Parameter Name="chz_ack" Type="String"></asp:Parameter>
                                                    <asp:Parameter Name="chz_yi" Type="String"></asp:Parameter>
                                                    <asp:Parameter Name="chz_itar" Type="DateTime"></asp:Parameter>
                                                    <asp:Parameter Name="chz_drm" Type="String"></asp:Parameter>
                                                    <asp:Parameter Name="chz_cbrm" Type="String"></asp:Parameter>
                                                    <asp:Parameter Name="chz_ctar" Type="DateTime"></asp:Parameter>
                                                    <asp:Parameter Name="chz_iper" Type="String"></asp:Parameter>
                                                    <asp:Parameter Name="chz_ibtar" Type="DateTime"></asp:Parameter>
                                                    <asp:Parameter Name="id" Type="Int32"></asp:Parameter>
                                                </UpdateParameters>
                                            </asp:SqlDataSource>

                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="vertical-align: top">
                                            <asp:Label runat="server" ID="lbl_ckmsj"></asp:Label>

                                        </td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                </table>
                             
                            </div>
                            <div class="modal-footer">
                                
<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                <asp:Button runat="server" Text="Kaydet" ID="btn_ckayit" class="btn btn-lg btn-primary" OnClick="btn_ckayit_Click"></asp:Button>
                            </div>
                        </div>
                    </div>
                </div>
   
                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop2">
                    ETMYS Kullanıcı Hesabı Talep
                </button>
                
                  <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop2">
                    Polnet/İnternet/ETMYS/Polcep/PTS Yetki / ŞİFRE TALEP
                </button>
                  <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop2">
                   POLNET-POLNET 4 Kullanıcı Hesabı Talep ve Sıfırlama
                </button>
                  <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop2">
                    POLNET-4 PTS Takip Kullanıcı Hesabı Talep
                </button>

                <br />
                <br />
                <ajaxToolkit:TabContainer ID="TabContainer1" runat="server" ActiveTabIndex="1" Width="100%">
                    <ajaxToolkit:TabPanel runat="server" HeaderText="TabPanel1" ID="TabPanel1">
                        <HeaderTemplate>
                            ETMYS Kullanıcı Hesabı Talep
                        </HeaderTemplate>
                        <ContentTemplate>
                            <table border="1" style="border-style: solid; border-color: #000000; border-collapse: collapse;" >
                                <tr>
                                    <td class="auto-style2" colspan="3" style="border-collapse: collapse; border-color: #000000; border-width: 1px"><strong>BİLGİ TEKNOLOJİLERİ DAİRESİ BAŞKANLIĞI ( ETMYS )
                                        <br />
                                        EMNİYET TAŞINIR MAL YÖNETİM SİSTEMİ İÇİN KULLANICI HESABI TALEP FORMU</strong></td>
                                </tr>
                                <tr>
                                    <td style="border-collapse: collapse; border-color: #000000; border-width: 1px"><strong>Kullanıcı Bilgileri</strong></td>
                                    <td style="border-collapse: collapse; border-color: #000000; border-width: 1px">&nbsp;</td>
                                    <td style="border-collapse: collapse; border-color: #000000; border-width: 1px"><strong>Görevi</strong></td>
                                </tr>
                                <tr>
                                    <td style="border-collapse: collapse; border-color: #000000; border-width: 1px">Adı</td>
                                    <td style="border-collapse: collapse; border-color: #000000; border-width: 1px">
                                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                    </td>
                                    <td style="border-collapse: collapse; border-color: #000000; border-width: 1px">
                                        <asp:CheckBox ID="CheckBox1" runat="server" Text="Birim Harcama Yetkilisi" />
                                    </td>
                                </tr>
                                <tr>
                                    <td style="border-collapse: collapse; border-color: #000000; border-width: 1px">Soyadı</td>
                                    <td style="border-collapse: collapse; border-color: #000000; border-width: 1px">
                                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                    </td>
                                    <td style="border-collapse: collapse; border-color: #000000; border-width: 1px">
                                        <asp:CheckBox ID="CheckBox2" runat="server" Text="Taşınır Mal Saymanı" />
                                    </td>
                                </tr>
                                <tr>
                                    <td style="border-collapse: collapse; border-color: #000000; border-width: 1px">Rütbesi</td>
                                    <td style="border-collapse: collapse; border-color: #000000; border-width: 1px">
                                        <asp:DropDownList ID="DropDownList1" runat="server">
                                        </asp:DropDownList>
                                    </td>
                                    <td style="border-collapse: collapse; border-color: #000000; border-width: 1px">
                                        <asp:CheckBox ID="CheckBox3" runat="server" Text="Taşınır Mal Hesap Sorumlusu" />
                                    </td>
                                </tr>
                                <tr>
                                    <td style="border-collapse: collapse; border-color: #000000; border-width: 1px">Ünvanı</td>
                                    <td style="border-collapse: collapse; border-color: #000000; border-width: 1px">
                                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                                    </td>
                                    <td style="border-collapse: collapse; border-color: #000000; border-width: 1px">
                                        <asp:CheckBox ID="CheckBox4" runat="server" Text="Taşınır Mal Sorumlusu" />
                                    </td>
                                </tr>
                                <tr>
                                    <td style="border-collapse: collapse; border-color: #000000; border-width: 1px">TC No</td>
                                    <td style="border-collapse: collapse; border-color: #000000; border-width: 1px">
                                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                                    </td>
                                    <td style="border-collapse: collapse; border-color: #000000; border-width: 1px">
                                        <asp:CheckBox ID="CheckBox5" runat="server" Text="Kullanıcı Birim Taşınır Mal Sorumlusu" />
                                    </td>
                                </tr>
                                <tr>
                                    <td style="border-collapse: collapse; border-color: #000000; border-width: 1px">Sicili</td>
                                    <td style="border-collapse: collapse; border-color: #000000; border-width: 1px">
                                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                                    </td>
                                    <td style="border-collapse: collapse; border-color: #000000; border-width: 1px">
                                        <asp:CheckBox ID="CheckBox6" runat="server" Text="ETMYS Bilgi İşlem Yöneticisi" />
                                    </td>
                                </tr>
                                <tr>
                                    <td style="border-collapse: collapse; border-color: #000000; border-width: 1px">Birimi</td>
                                    <td style="border-collapse: collapse; border-color: #000000; border-width: 1px">
                                        <asp:DropDownList ID="DropDownList2" runat="server">
                                        </asp:DropDownList>
                                    </td>
                                    <td style="border-collapse: collapse; border-color: #000000; border-width: 1px">
                                        <asp:CheckBox ID="CheckBox7" runat="server" Text="Taşınır Mal Saymanlığı Birim Amiri" />
                                    </td>
                                </tr>
                                <tr>
                                    <td style="border-collapse: collapse; border-color: #000000; border-width: 1px">Şubesi</td>
                                    <td style="border-collapse: collapse; border-color: #000000; border-width: 1px">
                                        <asp:DropDownList ID="DropDownList3" runat="server">
                                        </asp:DropDownList>
                                    </td>
                                    <td style="border-collapse: collapse; border-color: #000000; border-width: 1px">
                                        <asp:CheckBox ID="CheckBox8" runat="server" Text="ETMYS Kullanıcı Birim Amiri" />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style1" style="border-collapse: collapse; border-color: #000000; border-width: 1px">Cep Telefonu</td>
                                    <td class="auto-style1" style="border-collapse: collapse; border-color: #000000; border-width: 1px">
                                        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                                    </td>
                                    <td class="auto-style1" style="border-collapse: collapse; border-color: #000000; border-width: 1px"></td>
                                </tr>
                                <tr>
                                    <td style="border-collapse: collapse; border-color: #000000; border-width: 1px">Harici/Dahili</td>
                                    <td style="border-collapse: collapse; border-color: #000000; border-width: 1px">
                                        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                                    </td>
                                    <td style="border-collapse: collapse; border-color: #000000; border-width: 1px"><strong>İşlem Tipi</strong></td>
                                </tr>
                                <tr>
                                    <td style="border-collapse: collapse; border-color: #000000; border-width: 1px">Değişiklik Sebebi</td>
                                    <td style="border-collapse: collapse; border-color: #000000; border-width: 1px">
                                        <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                                    </td>
                                    <td style="border-collapse: collapse; border-color: #000000; border-width: 1px">
                                        <asp:CheckBox ID="CheckBox9" runat="server" Text="Yeni Kayıt" />
                                    </td>
                                </tr>
                                <tr>
                                    <td style="border-collapse: collapse; border-color: #000000; border-width: 1px">Asil / Yedek</td>
                                    <td style="border-collapse: collapse; border-color: #000000; border-width: 1px">
                                        <asp:DropDownList ID="DropDownList4" runat="server">
                                            <asp:ListItem>Seçiniz</asp:ListItem>
                                            <asp:ListItem>Asil</asp:ListItem>
                                            <asp:ListItem>Yedek</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td style="border-collapse: collapse; border-color: #000000; border-width: 1px">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td colspan="3" style="border-collapse: collapse; border-color: #000000; border-width: 1px">
                                        <table >
                                           
                                            <tr >
                                                <td >&nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td>1) KULLANICI<span>&nbsp; </span>GÜVENLİK<span>&nbsp; </span>TALİMATI</td>
                                            </tr>
                                            <tr >
                                                <td >i)Bu form yalnızca Emniyet Teşkilatı Mensuplarınca doldurulabilir.<br /> ii)Kullanıcı, kendisine tanımlanan ‘kullanıcı hesabı’ ile gireceği ETMYS ETKİ ALANI içinde gerçekleştireceği tüm işlemlerden sorumludur. Tanımlanan ‘kullanıcı hesabı’nın bir başkası tarafından kullanılmış olması, bu durumu değiştirmeyeceği gibi, kullanan kişiyi de aynı derecede sorumluluk altına sokar.<br /> iii)Kullanıcı kendisine tahsis edilen ilk şifreyi değiştirmek zorundadır.<br /> iv)Kullanıcının bu formda belirttiği bilgilerin veya görevinin değişmesi halinde bildirimde bulunması zorunludur.<br /> v)Kullanıcı, bu talep formunda belirttiği bilgilerin doğru olduğunu ve tüm bu maddeleri daha sonra hiçbir itiraza mahal vermeyecek şekilde okuduğunu,<br />
                                                    <br />
                                                </td>
                                            </tr>
                                            <tr >
                                                <td style="text-align: center" ><strong>KABUL VE TAAHHÜT ETMİŞTİR.</strong></td>
                                            </tr>
                                            <tr >
                                                <td > &nbsp;</td>
                                            </tr>
                                            <tr >
                                                <td >2)YÜRÜRLÜLÜK</td>
                                            </tr>
                                            <tr >
                                                <td >Kullanıcı, adına düzenlenmiş bu formu doldurup, imzaladıktan sonra bu sözleşme süresiz olarak yürürlüğe girer.</td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="3" style="border-collapse: collapse; border-color: #000000; border-width: 1px">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td colspan="3" style="border-collapse: collapse; border-color: #000000; border-width: 1px; text-align: center;">
                                        <asp:Button ID="Button1" runat="server" Text="Onayla / Çıktı Al" />
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="3" style="border-collapse: collapse; border-color: #000000; border-width: 1px">&nbsp;</td>
                                </tr>
                            </table>
                        </ContentTemplate>
                    </ajaxToolkit:TabPanel>
                    <ajaxToolkit:TabPanel runat="server" HeaderText="TabPanel2" ID="TabPanel2">
                        <HeaderTemplate>
                            Polnet/İnternet/ETMYS/Polcep/PTS Yetki / ŞİFRE TALEP
                        </HeaderTemplate>
                        <ContentTemplate>
                            <table border="1" style="border-style: solid; border-color: #000000; border-collapse: collapse;">
                                <tr>
                                    <td class="auto-style2" colspan="6" style="border-collapse: collapse; border-color: #000000; border-width: 1px"><strong>POLNET/İNTERNET/ETMYS/POLCEP/PTS YETKİ / ŞİFRE TALEP FORMU</strong></td>
                                </tr>
                                <tr>
                                    <td colspan="6" style="border-collapse: collapse; border-color: #000000; border-width: 1px"><strong>Kullanıcı Bilgileri</strong></td>
                                </tr>
                                <tr>
                                    <td style="border-collapse: collapse; border-color: #000000; border-width: 1px">Adı</td>
                                    <td style="border-collapse: collapse; border-color: #000000; border-width: 1px">
                                        <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                                    </td>
                                    <td style="border-collapse: collapse; border-color: #000000; border-width: 1px">Cep Telefonu</td>
                                    <td style="border-collapse: collapse; border-color: #000000; border-width: 1px">
                                        <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>
                                    </td>
                                    <td style="border-collapse: collapse; border-color: #000000; border-width: 1px">Şubesi/İlçesi</td>
                                    <td style="border-collapse: collapse; border-color: #000000; border-width: 1px">
                                        <asp:DropDownList ID="DropDownList7" runat="server">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="border-collapse: collapse; border-color: #000000; border-width: 1px">Soyadı</td>
                                    <td style="border-collapse: collapse; border-color: #000000; border-width: 1px">
                                        <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                                    </td>
                                    <td style="border-collapse: collapse; border-color: #000000; border-width: 1px">Harici/Dahili</td>
                                    <td style="border-collapse: collapse; border-color: #000000; border-width: 1px">
                                        <asp:TextBox ID="TextBox15" runat="server"></asp:TextBox>
                                    </td>
                                    <td style="border-collapse: collapse; border-color: #000000; border-width: 1px">Birimi</td>
                                    <td style="border-collapse: collapse; border-color: #000000; border-width: 1px">
                                        <asp:DropDownList ID="DropDownList6" runat="server">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="border-collapse: collapse; border-color: #000000; border-width: 1px">Rütbesi</td>
                                    <td style="border-collapse: collapse; border-color: #000000; border-width: 1px">
                                        <asp:DropDownList ID="DropDownList5" runat="server">
                                        </asp:DropDownList>
                                    </td>
                                    <td style="border-collapse: collapse; border-color: #000000; border-width: 1px">Kurumsal Eposta</td>
                                    <td style="border-collapse: collapse; border-color: #000000; border-width: 1px">
                                        <asp:TextBox ID="TextBox17" runat="server"></asp:TextBox>
                                    </td>
                                    <td style="border-collapse: collapse; border-color: #000000; border-width: 1px">&nbsp;</td>
                                    <td style="border-collapse: collapse; border-color: #000000; border-width: 1px">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td style="border-collapse: collapse; border-color: #000000; border-width: 1px">Sicili</td>
                                    <td style="border-collapse: collapse; border-color: #000000; border-width: 1px">
                                        <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
                                    </td>
                                    <td style="border-collapse: collapse; border-color: #000000; border-width: 1px">&nbsp;</td>
                                    <td style="border-collapse: collapse; border-color: #000000; border-width: 1px">&nbsp;</td>
                                    <td style="border-collapse: collapse; border-color: #000000; border-width: 1px">&nbsp;</td>
                                    <td style="border-collapse: collapse; border-color: #000000; border-width: 1px">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td colspan="6" style="border-collapse: collapse; border-color: #000000; border-width: 1px">&nbsp;</td>
                                </tr>
                            </table>
                            <br />
                            <table border="1" style="border-style: solid; border-color: #000000; border-collapse: collapse;">
                                <tr>
                                    <td class="text-center" colspan="5" style="border-collapse: collapse; border-color: #000000; border-width: 1px">
                                        <br />
                                        TALEP EDİLEN YETKİ / ŞİFRELER</td>
                                </tr>
                                <tr>
                                    <td colspan="5" style="border-collapse: collapse; border-color: #000000; border-width: 1px">
                                        <br />
                                        Polnet/İnternet Şifre İşlemleri:</td>
                                </tr>
                                <tr>
                                    <td style="border-collapse: collapse; border-color: #000000; border-width: 1px">
                                        <asp:CheckBox ID="CheckBox30" runat="server" Text="PolNet" />
                                    </td>
                                    <td style="border-collapse: collapse; border-color: #000000; border-width: 1px">
                                        <asp:CheckBox ID="CheckBox31" runat="server" Text="İnternet" />
                                    </td>
                                    <td style="border-collapse: collapse; border-color: #000000; border-width: 1px">
                                        <asp:CheckBox ID="CheckBox32" runat="server" Text="Yeni Şifre" />
                                    </td>
                                    <td style="border-collapse: collapse; border-color: #000000; border-width: 1px">
                                        <asp:CheckBox ID="CheckBox33" runat="server" Text="Şifre İptali" />
                                    </td>
                                    <td style="border-collapse: collapse; border-color: #000000; border-width: 1px">
                                        <asp:CheckBox ID="CheckBox34" runat="server" Text="Şifre Dğişikliği" />
                                    </td>
                                </tr>
                            </table>
                            <br />
                            <table border="1" style="border-style: solid; border-color: #000000; border-collapse: collapse;">
                                <tr>
                                    <td colspan="5" style="border-collapse: collapse; border-color: #000000; border-width: 1px">
                                        <br />
                                        ETMYS Yetki İşlemleri (Emniyet Taşınır Mal Yönetim Sistemi)(İlgisiz Personel Talep Etmeyecektir)</td>
                                </tr>
                                <tr>
                                    <td style="border-collapse: collapse; border-color: #000000; border-width: 1px"><strong>İşlem Tipi</strong></td>
                                    <td style="border-collapse: collapse; border-color: #000000; border-width: 1px">
                                        <asp:CheckBox ID="CheckBox55" runat="server" Text="Yeni Kayıt" />
                                    </td>
                                    <td style="border-collapse: collapse; border-color: #000000; border-width: 1px">
                                        <asp:DropDownList ID="DropDownList17" runat="server">
                                            <asp:ListItem>Seçiniz</asp:ListItem>
                                            <asp:ListItem>Asil</asp:ListItem>
                                            <asp:ListItem>Yedek</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td style="border-collapse: collapse; border-color: #000000; border-width: 1px">
                                        <asp:CheckBox ID="CheckBox56" runat="server" Text="Birim Harcama Yetkilisi" />
                                    </td>
                                    <td style="border-collapse: collapse; border-color: #000000; border-width: 1px">
                                        <asp:CheckBox ID="CheckBox57" runat="server" Text="Taşınır Mal Saymanı" />
                                    </td>
                                </tr>
                                <tr>
                                    <td style="border-collapse: collapse; border-color: #000000; border-width: 1px">&nbsp;</td>
                                    <td style="border-collapse: collapse; border-color: #000000; border-width: 1px">&nbsp;</td>
                                    <td style="border-collapse: collapse; border-color: #000000; border-width: 1px">&nbsp;</td>
                                    <td style="border-collapse: collapse; border-color: #000000; border-width: 1px">
                                        <asp:CheckBox ID="CheckBox58" runat="server" Text="Taşınır Mal Hesap Sorumlusu" />
                                    </td>
                                    <td style="border-collapse: collapse; border-color: #000000; border-width: 1px">
                                        <asp:CheckBox ID="CheckBox59" runat="server" Text="Taşınır Mal Sorumlusu" />
                                    </td>
                                </tr>
                                <tr>
                                    <td style="border-collapse: collapse; border-color: #000000; border-width: 1px">&nbsp;</td>
                                    <td style="border-collapse: collapse; border-color: #000000; border-width: 1px">&nbsp;</td>
                                    <td style="border-collapse: collapse; border-color: #000000; border-width: 1px">&nbsp;</td>
                                    <td style="border-collapse: collapse; border-color: #000000; border-width: 1px">
                                        <asp:CheckBox ID="CheckBox60" runat="server" Text="Kullanıcı Birim Taşınır Mal Sorumlusu" />
                                    </td>
                                    <td style="border-collapse: collapse; border-color: #000000; border-width: 1px">
                                        <asp:CheckBox ID="CheckBox61" runat="server" Text="ETMYS Bilgi İşlem Yöneticisi" />
                                    </td>
                                </tr>
                                <tr>
                                    <td style="border-collapse: collapse; border-color: #000000; border-width: 1px">&nbsp;</td>
                                    <td style="border-collapse: collapse; border-color: #000000; border-width: 1px">&nbsp;</td>
                                    <td style="border-collapse: collapse; border-color: #000000; border-width: 1px">&nbsp;</td>
                                    <td style="border-collapse: collapse; border-color: #000000; border-width: 1px">
                                        <asp:CheckBox ID="CheckBox62" runat="server" Text="Taşınır Mal Saymanlığı Birim Amiri" />
                                    </td>
                                    <td style="border-collapse: collapse; border-color: #000000; border-width: 1px">
                                        <asp:CheckBox ID="CheckBox63" runat="server" Text="ETMYS Kullanıcı Birim Amiri" />
                                    </td>
                                </tr>
                                <tr>
                                    <td style="border-collapse: collapse; border-color: #000000; border-width: 1px">Değişiklik Sebebi</td>
                                    <td colspan="4" style="border-collapse: collapse; border-color: #000000; border-width: 1px">
                                        <asp:TextBox ID="TextBox31" runat="server" TextMode="MultiLine" Width="585px"></asp:TextBox>
                                    </td>
                                </tr>
                            </table>
                            <br />
                            <table border="1" style="border-style: solid; border-color: #000000; border-collapse: collapse;">
                                <tr>
                                    <td colspan="2" style="border-collapse: collapse; border-color: #000000; border-width: 1px">
                                        <br />
                                        PolCep/UTP Modülü (Uygulama Takip Projesi)</td>
                                </tr>
                                <tr>
                                    <td style="border-collapse: collapse; border-color: #000000; border-width: 1px">Mobil İşlemler Yetkisi Asayiş Şube Müdürlüğü tarafından tanımlanmaktadır.</td>
                                    <td style="border-collapse: collapse; border-color: #000000; border-width: 1px">
                                        <asp:CheckBox ID="CheckBox90" runat="server" Text="UTP Görev İşlemleri" />
                                    </td>
                                </tr>
                            </table>
                            <br />
                            <table border="1" style="border-style: solid; border-color: #000000; border-collapse: collapse;">
                                <tr>
                                    <td colspan="5" style="border-collapse: collapse; border-color: #000000; border-width: 1px">
                                        <br />
                                        Plaka Takip Sistemi Şifre / Yetki İşlemleri</td>
                                </tr>
                                <tr>
                                    <td style="border-collapse: collapse; border-color: #000000; border-width: 1px">
                                        <asp:CheckBox ID="CheckBox85" runat="server" Text="Yeni Kayıt" />
                                    </td>
                                    <td style="border-collapse: collapse; border-color: #000000; border-width: 1px">
                                        <asp:CheckBox ID="CheckBox86" runat="server" Text="Yetki İptali" />
                                    </td>
                                    <td style="border-collapse: collapse; border-color: #000000; border-width: 1px">
                                        <asp:CheckBox ID="CheckBox87" runat="server" Text="Polnet4 Şifre Sıfırlama" />
                                    </td>
                                    <td style="border-collapse: collapse; border-color: #000000; border-width: 1px">
                                        <asp:CheckBox ID="CheckBox88" runat="server" Text="PTS Takip İl Kullanıcısı-Adli Birim" />
                                    </td>
                                    <td style="border-collapse: collapse; border-color: #000000; border-width: 1px">
                                        <asp:CheckBox ID="CheckBox89" runat="server" Text="PTS Takip İl Kullanıcısı-Haberleşme" />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style1" style="border-collapse: collapse; border-color: #000000; border-width: 1px">&nbsp;</td>
                                    <td class="auto-style1" style="border-collapse: collapse; border-color: #000000; border-width: 1px">&nbsp;</td>
                                    <td class="auto-style1" style="border-collapse: collapse; border-color: #000000; border-width: 1px">&nbsp;</td>
                                    <td class="auto-style1" style="border-collapse: collapse; border-color: #000000; border-width: 1px">&nbsp;</td>
                                    <td class="auto-style1" style="border-collapse: collapse; border-color: #000000; border-width: 1px">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style1" style="border-collapse: collapse; border-color: #000000; border-width: 1px">&nbsp;</td>
                                    <td class="auto-style1" style="border-collapse: collapse; border-color: #000000; border-width: 1px">&nbsp;</td>
                                    <td class="auto-style1" style="border-collapse: collapse; border-color: #000000; border-width: 1px">&nbsp;</td>
                                    <td class="auto-style1" style="border-collapse: collapse; border-color: #000000; border-width: 1px">&nbsp;</td>
                                    <td class="auto-style1" style="border-collapse: collapse; border-color: #000000; border-width: 1px">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td style="border-collapse: collapse; border-color: #000000; border-width: 1px">&nbsp;</td>
                                    <td style="border-collapse: collapse; border-color: #000000; border-width: 1px">&nbsp;</td>
                                    <td style="border-collapse: collapse; border-color: #000000; border-width: 1px">&nbsp;</td>
                                    <td style="border-collapse: collapse; border-color: #000000; border-width: 1px">&nbsp;</td>
                                    <td style="border-collapse: collapse; border-color: #000000; border-width: 1px">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td style="border-collapse: collapse; border-color: #000000; border-width: 1px">&nbsp;</td>
                                    <td style="border-collapse: collapse; border-color: #000000; border-width: 1px">&nbsp;</td>
                                    <td style="border-collapse: collapse; border-color: #000000; border-width: 1px">&nbsp;</td>
                                    <td style="border-collapse: collapse; border-color: #000000; border-width: 1px">&nbsp;</td>
                                    <td style="border-collapse: collapse; border-color: #000000; border-width: 1px">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td style="border-collapse: collapse; border-color: #000000; border-width: 1px">&nbsp;</td>
                                    <td style="border-collapse: collapse; border-color: #000000; border-width: 1px">&nbsp;</td>
                                    <td style="border-collapse: collapse; border-color: #000000; border-width: 1px">&nbsp;</td>
                                    <td style="border-collapse: collapse; border-color: #000000; border-width: 1px">&nbsp;</td>
                                    <td style="border-collapse: collapse; border-color: #000000; border-width: 1px">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td colspan="5" style="border-collapse: collapse; border-color: #000000; border-width: 1px">
                                        <table>
                                            <tr>
                                                <td>&nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td>1) KULLANICI<span>&nbsp; </span>GÜVENLİK<span>&nbsp; </span>TALİMATI</td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <p class="MsoNormal">
                                                        * Kullanıcı sadece kendisine ait kod ve şifre ile sisteme bağlanacaktır. Kullanıcı kod ve şifresi kesinlikle bir başkası tarafından kullanılmamalı ve kullandırılmamalıdır.<p></p>
                                                    </p>
                                                    <p class="MsoNormal">
                                                        * Görev değişikliği olan kullanıcının kod ve şifresinin yenilenmesi ve iptalinden kullanıcı sorumludur. Kullanıcının bu formda belirttiği bilgilerin veya görevinin değişmesi halinde bildirimde bulunması zorunludur.<p></p>
                                                    </p>
                                                    <p class="MsoNormal">
                                                        * Uygulamalar kapsamındaki işlemler log&#39;larda kayıt altına alındığından yapılacak tüm işlemlerin adli ve idari tüm hukuki sorumluluğu projeye bağlanılan kod ve şifre sahibine aittir.<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                                                        <p></p>
                                                    </p>
                                                    <p class="MsoNormal">
                                                        * Uygulama kullanıcısı(UTP, ETMYS, PTS) PolNet4 kullanıcı yetkisine sahip olmalıdır. Uygulama, işlem bittikten sonra veya mobil cihaz terk edilmeden önce kapatılacaktır.<p></p>
                                                    </p>
                                                    <p class="MsoNormal">
                                                        * Kullanıcı, kendisine tanımlanan ‘kullanıcı hesabı’ ile gireceği ETMYS ETKİ ALANI içinde gerçekleştireceği tüm işlemlerden sorumludur. Tanımlanan ‘kullanıcı hesabı’nın bir başkası tarafından kullanılmış olması, bu durumu değiştirmeyeceği gibi, kullanan kişiyi de aynı derecede sorumluluk altına sokar. Kullanıcı kendisine tahsis edilen ilk şifreyi değiştirmek zorundadır.<span>&nbsp; </span>
                                                        <p></p>
                                                    </p>
                                                    <p class="MsoNormal">
                                                        * İNTERNET kapsamındaki bilgisayarlar hiçbir surette başka bir bilgisayar ağına ( POLNET vs. ) bağlanamaz.<p></p>
                                                    </p>
                                                    <p class="MsoNormal">
                                                        * İNTERNET kapsamındaki bilgisayarlar mesai bitiminde tamamen kapalı ( Shut-Down ), mesai dâhilinde kilitli ( Lock )<span>&nbsp;&nbsp; </span>konumuna getirilmeden terk edilemez.<span> </span>
                                                        <p></p>
                                                    </p>
                                                    <p class="MsoNormal">
                                                        * İnternet kapsamındaki uç kullanıcı bilgisayarlarında sadece TCP/IP protokolü kullanılacaktır. İnternet Uç Kullanıcıları İnternet Üzerinde yaptıkları işlemlerden ve kullanıcı hesaplarının güvenliğinden sorumludur.<p></p>
                                                    </p>
                                                    <p class="MsoNormal">
                                                        * İnternet Bilgisayarlarında gizlilik dereceli bilgi ve belge bulundurulmaz. Sistemde yapılan tüm işlemlerin, adli ve idari tüm hukuki sorumluluğu kullanıcı kodu sahibine aittir.<p></p>
                                                    </p>
                                                    <p class="MsoNormal">
                                                        * Kullanıcı kodlarının, asıl sahibinden farklı biri tarafından kullanıldığının tespit edilmesi halinde, kullanan kişi de aynı derecede sorumluluk sahibidir.<p></p>
                                                    </p>
                                                    <p class="MsoNormal">
                                                        * Polnet kapsamındaki hiçbir bilgisayarın mevcut sistem, iletişim ve yazılım konfigürasyonu değiştirilemez.<p></p>
                                                    </p>
                                                    <p class="MsoNormal">
                                                        * Şifre/Yetki Talep Formu ile üst yazının çelişmesi halinde Şifre/Yetki Talep Formu dikkate alınacaktır. Üst yazı ile Şifre/Yetki Talep Formunun doğruluğunun kontrolü talebi yapan birime aittir.<p></p>
                                                    </p>
                                                    <p class="MsoNormal">
                                                        * Kullanıcı, bu talep formunda belirttiği bilgilerin doğru olduğunu ve tüm bu maddeleri daha sonra hiçbir itiraza mahal vermeyecek şekilde okuduğunu, kabul ve taahhüt etmiştir.<p></p>
                                                    </p>
                                                    <p class="MsoNormal">
                                                        * 27.10.2000 gün ve B.05.1.EGM.0.77.05.02-2809-10280-2000 sayılı genelgenin ihlalinde uygulanacak idari işlem ve Güvenlik talimatının ihlalinde uygulanacak
                                                        <p></p>
                                                    </p>
                                                    <p class="MsoNormal">
                                                        <span>*&nbsp;</span>İdari işlem Genel Kolluk Disiplin Hükümleri Hakkında KHK 8. Madde 5/Ç -11. fıkra ve adli işlem T.C.K. 132, 138, 243, 244 maddelerini kapsamaktadır.<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                                                        <p></p>
                                                    </p>
                                                    <br />
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="5" style="border-collapse: collapse; border-color: #000000; border-width: 1px">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td colspan="5" style="border-collapse: collapse; border-color: #000000; border-width: 1px; text-align: center;">
                                        <asp:Button ID="Button5" runat="server" Text="Onayla / Çıktı Al" />
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="5" style="border-collapse: collapse; border-color: #000000; border-width: 1px">&nbsp;</td>
                                </tr>
                            </table>
                        </ContentTemplate>
                    </ajaxToolkit:TabPanel>
                    <ajaxToolkit:TabPanel ID="TabPanel3" runat="server" HeaderText="TabPanel3">
                        <HeaderTemplate>
                            POLNET-POLNET 4 Kullanıcı Hesabı Talep ve Sıfırlama
                        </HeaderTemplate>
                    </ajaxToolkit:TabPanel>
                    <ajaxToolkit:TabPanel ID="TabPanel4" runat="server" HeaderText="TabPanel4">
                        <HeaderTemplate>
                            POLNET-4 PTS Takip Kullanıcı Hesabı Talep
                        </HeaderTemplate>
                    </ajaxToolkit:TabPanel>
                </ajaxToolkit:TabContainer>

            </fieldset>
        </div>
    </div>

</asp:Content>

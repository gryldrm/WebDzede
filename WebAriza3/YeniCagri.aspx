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
        p.MsoNormal
	{margin-top:0cm;
	margin-right:0cm;
	margin-bottom:8.0pt;
	margin-left:0cm;
	line-height:107%;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	}
        
        
        
        .auto-style2 {
            font-weight: bold;
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
                                
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>

                                <asp:Button runat="server" Text="KAYDET" ID="btn_kaydet" class="btn btn-primary" data-bs-target="#myModal" data-bs-toggle="modal" OnClick="btn_kaydet_Click"></asp:Button>

                            </div>
                        </div>
                    </div>
                </div>
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
                                            <asp:DropDownList required="" runat="server" AppendDataBoundItems="True" DataTextField="nevi" DataValueField="nevi" DataSourceID="SqlDataSource16" ID="dd_nevi" class="form-select">
                                            </asp:DropDownList>
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
   
                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop3">
                    ETMYS Kullanıcı Hesabı Talep
                </button>

                     <div class="modal fade" id="staticBackdrop3" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel2" aria-hidden="true">
                    <div class="modal-dialog modal-xl">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h1 class="modal-title fs-5" id="staticBackdropLabel3">Cihaz Arıza Bildirim</h1>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <%--///////////////////--%>statik 33333333333

                             
                            </div>
                            <div class="modal-footer">
                                
<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                <asp:Button runat="server" Text="Kaydet" ID="Button3" class="btn btn-lg btn-primary" OnClick="btn_ckayit_Click"></asp:Button>
                            </div>
                        </div>
                    </div>
                </div>
                  <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop4">
                    Polnet/İnternet/ ŞİFRE TALEP
                </button>
                <div class="modal fade" id="staticBackdrop4" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel2" aria-hidden="true">
                    <div class="modal-dialog modal-xl">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h1 class="modal-title fs-5" id="staticBackdropLabel4">Cihaz Arıza Bildirim</h1>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <%--///////////////////--%>statik 44444444444

                             
                            </div>
                            <div class="modal-footer">
                                
<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                <asp:Button runat="server" Text="Kaydet" ID="Button4" class="btn btn-lg btn-primary" OnClick="btn_ckayit_Click"></asp:Button>
                            </div>
                        </div>
                    </div>
                </div>

                  <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop5">
                   POLNET-POLNET 4 Kullanıcı Hesabı Talep ve Sıfırlama
                </button>

                <div class="modal fade" id="staticBackdrop5" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel2" aria-hidden="true">
                    <div class="modal-dialog modal-xl">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h1 class="modal-title fs-5" id="staticBackdropLabel5">Cihaz Arıza Bildirim</h1>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <%--///////////////////--%>statik 555555555555

                             
                            </div>
                            <div class="modal-footer">
                                
<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                <asp:Button runat="server" Text="Kaydet" ID="Button5" class="btn btn-lg btn-primary" OnClick="btn_ckayit_Click"></asp:Button>
                            </div>
                        </div>
                    </div>
                </div>
                  <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop6">
                    POLNET-4 PTS Takip Kullanıcı Hesabı Talep
                </button>

                <div class="modal fade" id="staticBackdrop6" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel2" aria-hidden="true">
                    <div class="modal-dialog modal-xl">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h1 class="modal-title fs-5" id="staticBackdropLabel6">Cihaz Arıza Bildirim</h1>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <%--///////////////////--%>statik 666666666666

                             
                            </div>
                            <div class="modal-footer">
                                
<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                <asp:Button runat="server" Text="Kaydet" ID="Button6" class="btn btn-lg btn-primary" OnClick="btn_ckayit_Click"></asp:Button>
                            </div>
                        </div>
                    </div>
                </div>

                <br />
                <br />
                <br />
                <table border="1" style="border-style: solid; border-color: #000000; border-collapse: collapse; background-color: #FFFFFF; width:600px"" >
                    <tr __designer:mapid="e4c">
                        <td colspan="4" style="border-collapse: collapse; border-color: #000000; border-width: 1px" __designer:mapid="e4d"><strong >POLNET/İNTERNET/ETMYS/POLCEP/PTS YETKİ / ŞİFRE TALEP </strong>İ<span class="auto-style3">ŞLEMLERİ</span></td>
                    </tr>
                    <tr __designer:mapid="e4c">
                        <td colspan="4" style="border-collapse: collapse; border-color: #000000; border-width: 1px" __designer:mapid="e4d"><strong __designer:mapid="cc5">Kullanıcı Bilgileri</strong></td>
                    </tr>
                    <tr __designer:mapid="e50">
                        <td style="border-collapse: collapse; border-color: #000000; border-width: 1px" __designer:mapid="e51">Sicili</td>
                        <td style="border-collapse: collapse; border-color: #000000; border-width: 1px" __designer:mapid="e53">
                            <asp:TextBox class="form-control" required="" runat="server" ID="TextBox53"></asp:TextBox>
                        </td>
                        <td style="border-collapse: collapse; border-color: #000000; border-width: 1px" __designer:mapid="e54">Birimi</td>
                        <td style="border-collapse: collapse; border-color: #000000; border-width: 1px" __designer:mapid="e54">
                            <asp:Label ID="lbl_sifrebirim0" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr __designer:mapid="e56">
                        <td style="border-collapse: collapse; border-color: #000000; border-width: 1px" __designer:mapid="e57">Adı</td>
                        <td style="border-collapse: collapse; border-color: #000000; border-width: 1px" __designer:mapid="e58">
                            <asp:TextBox class="form-control" required="" runat="server" ID="TextBox54"></asp:TextBox>
                        </td>
                        <td style="border-collapse: collapse; border-color: #000000; border-width: 1px" __designer:mapid="e5a">
                            Cep Telefonu</td>
                        <td style="border-collapse: collapse; border-color: #000000; border-width: 1px" __designer:mapid="e5a">
                            <asp:TextBox class="form-control" required="" runat="server" ID="TextBox55"></asp:TextBox>
                        </td>
                    </tr>
                    <tr __designer:mapid="e5c">
                        <td style="border-collapse: collapse; border-color: #000000; border-width: 1px" __designer:mapid="e5d">Soyadı</td>
                        <td style="border-collapse: collapse; border-color: #000000; border-width: 1px" __designer:mapid="e5e">
                            <asp:TextBox class="form-control" required="" runat="server" ID="TextBox56"></asp:TextBox>
                        </td>
                        <td style="border-collapse: collapse; border-color: #000000; border-width: 1px" __designer:mapid="e60">
                            Harici/Dahili</td>
                        <td style="border-collapse: collapse; border-color: #000000; border-width: 1px" __designer:mapid="e60">
                            <asp:TextBox class="form-control" required="" runat="server" ID="TextBox57"></asp:TextBox>
                        </td>
                    </tr>
                    <tr __designer:mapid="e62">
                        <td style="border-collapse: collapse; border-color: #000000; border-width: 1px" __designer:mapid="e63">Rütbesi</td>
                        <td style="border-collapse: collapse; border-color: #000000; border-width: 1px" __designer:mapid="e64">
                            <asp:DropDownList class="form-control" required="" runat="server" ID="DropDownList25">
                                <asp:ListItem>Se&#231;iniz</asp:ListItem>
                                <asp:ListItem>2. Sınıf Emniyet M&#252;d&#252;r&#252;</asp:ListItem>
                                <asp:ListItem>3. Sınıf Emniyet M&#252;d&#252;r&#252;</asp:ListItem>
                                <asp:ListItem>4. Sınıf Emniyet M&#252;d&#252;r&#252;</asp:ListItem>
                                <asp:ListItem>Emniyet Amiri</asp:ListItem>
                                <asp:ListItem>Başkomiser</asp:ListItem>
                                <asp:ListItem>Komiser</asp:ListItem>
                                <asp:ListItem>Komiser Yardımcısı</asp:ListItem>
                                <asp:ListItem>Kıdemli Başpolis Memuru</asp:ListItem>
                                <asp:ListItem>Başpolis Memuru</asp:ListItem>
                                <asp:ListItem>Polis Memuru</asp:ListItem>
                                <asp:ListItem>&#199;arşı ve Mahalle Bek&#231;isi</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td style="border-collapse: collapse; border-color: #000000; border-width: 1px" __designer:mapid="e72">
                            Kurumsal Eposta</td>
                        <td style="border-collapse: collapse; border-color: #000000; border-width: 1px" __designer:mapid="e72">
                            <asp:TextBox class="form-control" required="" runat="server" ID="TextBox58"></asp:TextBox>
                        </td>
                    </tr>
                    <tr __designer:mapid="e74">
                        <td style="border-collapse: collapse; border-color: #000000; border-width: 1px" __designer:mapid="e75">Talep Şifre/Yetki</td>
                        <td style="border-collapse: collapse; border-color: #000000; border-width: 1px" __designer:mapid="e76" colspan="3">
                            <asp:DropDownList class="form-control" required="" ID="dd_tlpnevi" runat="server" DataSourceID="SqlDataSource16" DataTextField="nevi" DataValueField="nevi" AppendDataBoundItems="True" AutoPostBack="True" OnSelectedIndexChanged="dd_tlpnevi_SelectedIndexChanged">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource16" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [tbl_nevi]"></asp:SqlDataSource>
                        </td>
                    </tr>
                    </table>
                <br />
                <asp:Panel ID="pnl_polnetsifre" runat="server" Visible="False">
                    <table border="1" style="border-style: solid; border-color: #000000; border-collapse: collapse; width:600px; " >
                        <tr>
                            <td colspan="3" style="border-collapse: collapse; border-color: #000000; border-width: 1px; ">
                                <br />
                                <strong>POLNET(Bilgisayar Açılış) ŞİFRE İŞLEMLERİ</strong></td>
                        </tr>
                        <tr>
                            <td style="border-collapse: collapse; border-color: #000000; border-width: 1px; ">
                                <asp:CheckBox runat="server" Text="Yeni Şifre" ID="CheckBox72">
                                </asp:CheckBox>
                            </td>
                            <td style="border-collapse: collapse; border-color: #000000; border-width: 1px; ">
                                <asp:CheckBox runat="server" Text="Şifre İptali" ID="CheckBox73">
                                </asp:CheckBox>
                            </td>
                            <td style="border-collapse: collapse; border-color: #000000; border-width: 1px;  ">
                                <asp:CheckBox runat="server" Text="Şifre Dğişikliği" ID="CheckBox74">
                                </asp:CheckBox>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
                <br />
                <asp:Panel ID="pnl_intsifre" runat="server" Visible="False">
                    <table border="1" style="border-style: solid; border-color: #000000; border-collapse: collapse; width:600px; " >
                        <tr>
                            <td colspan="3" style="border-collapse: collapse; border-color: #000000; border-width: 1px; ">
                                <br />
                                <strong>İNTERNET ŞİFRE İŞLEMLERİ</strong></td>
                        </tr>
                        <tr>
                            <td style="border-collapse: collapse; border-color: #000000; border-width: 1px; ">
                                <asp:CheckBox runat="server" Text="Yeni Şifre" ID="CheckBox86">
                                </asp:CheckBox>
                            </td>
                            <td style="border-collapse: collapse; border-color: #000000; border-width: 1px; ">
                                <asp:CheckBox runat="server" Text="Şifre İptali" ID="CheckBox87">
                                </asp:CheckBox>
                            </td>
                            <td style="border-collapse: collapse; border-color: #000000; border-width: 1px; ">
                                <asp:CheckBox runat="server" Text="Şifre Dğişikliği" ID="CheckBox88">
                                </asp:CheckBox>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
                <br />
                <asp:Panel ID="pnl_intyetki" runat="server" Visible="False">
                    <table border="1" style="border-style: solid; border-color: #000000; border-collapse: collapse; width:600px"" >
                        <tr>
                            <td colspan="2" style="border-collapse: collapse; border-color: #000000; border-width: 1px; "><strong>İNTERNET YETKİ </strong>İ<span class="auto-style2">ŞLEMLERİ</span></td>
                        </tr>
                        <tr>
                            <td style="border-collapse: collapse; border-color: #000000; border-width: 1px; ">
                                <asp:CheckBox runat="server" Text="Standart Kullanıcı" ID="CheckBox75">
                                </asp:CheckBox>
                            </td>
                            <td style="border-collapse: collapse; border-color: #000000; border-width: 1px; ">
                                <asp:CheckBox runat="server" Text="Araştırmacı Kullanıcı" ID="CheckBox76">
                                </asp:CheckBox>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
                <br />
                <asp:Panel ID="pnl_etmysyetki" runat="server" Visible="False">
                    <table border="1" style="border-style: solid; border-color: #000000; border-collapse: collapse; ; width:600px;" >
                        <tr >
                            <td colspan="3" style="border-collapse: collapse; border-color: #000000; border-width: 1px" ><strong >ETMYS KULLANICI HESABI TALEP FORMU</strong></td>
                        </tr>
                        <tr>
                            <td style="border-collapse: collapse; border-color: #000000; border-width: 1px"><strong>Kullanıcı Bilgileri</strong></td>
                            <td style="border-collapse: collapse; border-color: #000000; border-width: 1px">&nbsp;</td>
                            <td style="border-collapse: collapse; border-color: #000000; border-width: 1px" class="auto-style5"><strong>Görevi</strong></td>
                        </tr>
                        <tr>
                            <td style="border-collapse: collapse; border-color: #000000; border-width: 1px">TC No</td>
                            <td style="border-collapse: collapse; border-color: #000000; border-width: 1px">
                                <asp:TextBox ID="TextBox59" runat="server"></asp:TextBox>
                            </td>
                            <td style="border-collapse: collapse; border-color: #000000; border-width: 1px" class="auto-style5">
                                <asp:CheckBox runat="server" Text="Birim Harcama Yetkilisi" ID="CheckBox1">
                                </asp:CheckBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="border-collapse: collapse; border-color: #000000; border-width: 1px">Değişiklik Sebebi</td>
                            <td style="border-collapse: collapse; border-color: #000000; border-width: 1px">
                                <asp:TextBox runat="server" ID="TextBox8"></asp:TextBox>
                            </td>
                            <td style="border-collapse: collapse; border-color: #000000; border-width: 1px" class="auto-style5">
                                <asp:CheckBox runat="server" Text="Taşınır Mal Saymanı" ID="CheckBox2">
                                </asp:CheckBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="border-collapse: collapse; border-color: #000000; border-width: 1px">Asil / Yedek</td>
                            <td style="border-collapse: collapse; border-color: #000000; border-width: 1px">
                                <asp:DropDownList runat="server" ID="DropDownList4">
                                    <asp:ListItem>Se&#231;iniz</asp:ListItem>
                                    <asp:ListItem>Asil</asp:ListItem>
                                    <asp:ListItem>Yedek</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td style="border-collapse: collapse; border-color: #000000; border-width: 1px" class="auto-style5">
                                <asp:CheckBox runat="server" Text="Taşınır Mal Hesap Sorumlusu" ID="CheckBox3">
                                </asp:CheckBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="border-collapse: collapse; border-color: #000000; border-width: 1px"><strong>İşlem Tipi</strong></td>
                            <td style="border-collapse: collapse; border-color: #000000; border-width: 1px">
                                <asp:CheckBox runat="server" Text="Yeni Kayıt" ID="CheckBox9">
                                </asp:CheckBox>
                            </td>
                            <td style="border-collapse: collapse; border-color: #000000; border-width: 1px" class="auto-style5">
                                <asp:CheckBox runat="server" Text="Taşınır Mal Sorumlusu" ID="CheckBox4">
                                </asp:CheckBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="border-collapse: collapse; border-color: #000000; border-width: 1px">&nbsp;</td>
                            <td style="border-collapse: collapse; border-color: #000000; border-width: 1px">&nbsp;</td>
                            <td style="border-collapse: collapse; border-color: #000000; border-width: 1px" class="auto-style5">
                                <asp:CheckBox runat="server" Text="Kullanıcı Birim Taşınır Mal Sorumlusu" ID="CheckBox5">
                                </asp:CheckBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="border-collapse: collapse; border-color: #000000; border-width: 1px">&nbsp;</td>
                            <td style="border-collapse: collapse; border-color: #000000; border-width: 1px">&nbsp;</td>
                            <td style="border-collapse: collapse; border-color: #000000; border-width: 1px" class="auto-style5">
                                <asp:CheckBox runat="server" Text="ETMYS Bilgi İşlem Y&#246;neticisi" ID="CheckBox6">
                                </asp:CheckBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="border-collapse: collapse; border-color: #000000; border-width: 1px">&nbsp;</td>
                            <td style="border-collapse: collapse; border-color: #000000; border-width: 1px">&nbsp;</td>
                            <td style="border-collapse: collapse; border-color: #000000; border-width: 1px" class="auto-style5">
                                <asp:CheckBox runat="server" Text="Taşınır Mal Saymanlığı Birim Amiri" ID="CheckBox7">
                                </asp:CheckBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="border-collapse: collapse; border-color: #000000; border-width: 1px">&nbsp;</td>
                            <td style="border-collapse: collapse; border-color: #000000; border-width: 1px">&nbsp;</td>
                            <td style="border-collapse: collapse; border-color: #000000; border-width: 1px" class="auto-style5">
                                <asp:CheckBox runat="server" Text="ETMYS Kullanıcı Birim Amiri" ID="CheckBox8">
                                </asp:CheckBox>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
                <br />
                <asp:Panel ID="pnl_polceputp" runat="server" Visible="False">
                    <table border="1" style="border-style: solid; border-color: #000000; border-collapse: collapse; width:600px"" >
                        <tr>
                            <td colspan="2" style="border-collapse: collapse; border-color: #000000; border-width: 1px"><strong>POLCEP/UTP YETKİ / ŞİFRE TALEP FORMU</strong></td>
                        </tr>
                        <tr>
                            <td colspan="2" style="border-collapse: collapse; border-color: #000000; border-width: 1px; ">
                                <br />
                                <strong>POLCEP/UTP MODÜLÜ (Uygulama Takip Projesi)</strong></td>
                        </tr>
                        <tr>
                            <td style="border-collapse: collapse; border-color: #000000; border-width: 1px; ">Mobil İşlemler Yetkisi Asayiş Şube Müdürlüğü tarafından tanımlanmaktadır.</td>
                            <td style="border-collapse: collapse; border-color: #000000; border-width: 1px; ">
                                <asp:CheckBox runat="server" Text="UTP G&#246;rev İşlemleri" ID="CheckBox44">
                                </asp:CheckBox>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
                <br />
                <asp:Panel ID="pnl_pol4" runat="server" Visible="False">
                    <table border="1" style="border-style: solid; border-color: #000000; border-collapse: collapse; width:600px; " >
                        <tr>
                            <td colspan="3" style="border-collapse: collapse; border-color: #000000; border-width: 1px"><strong>POLNET-4 / PTS / YETKİ VE ŞİFRE İŞLEMLERİ</strong></td>
                        </tr>
                        <tr>
                            <td colspan="3" style="border-collapse: collapse; border-color: #000000; border-width: 1px; ">
                                <br />
                                <strong>Plaka Takip Sistemi Şifre / Yetki İşlemleri</strong></td>
                        </tr>
                        <tr>
                            <td style="border-collapse: collapse; border-color: #000000; border-width: 1px; ">
                                <asp:CheckBox runat="server" Text="Yeni Kayıt" ID="CheckBox65">
                                </asp:CheckBox>
                                <br />
                                <asp:CheckBox runat="server" Text="Yetki İptali" ID="CheckBox66">
                                </asp:CheckBox>
                            </td>
                            <td style="border-collapse: collapse; border-color: #000000; border-width: 1px; ">
                                <asp:CheckBox runat="server" Text="Polnet4 Şifre Sıfırlama" ID="CheckBox67">
                                </asp:CheckBox>
                            </td>
                            <td style="border-collapse: collapse; border-color: #000000; border-width: 1px; ">
                                <asp:CheckBox runat="server" Text="PTS Takip İl Kullanıcısı-Adli Birim" ID="CheckBox68">
                                </asp:CheckBox>
                                <br />
                                <asp:CheckBox runat="server" Text="PTS Takip İl Kullanıcısı-Haberleşme" ID="CheckBox69">
                                </asp:CheckBox>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
                <br />
                <asp:Panel ID="pnl_pol5" runat="server" Visible="False">
                    <table border="1" style="border-style: solid; border-color: #000000; border-collapse: collapse; width:600px" >
                        <tr>
                            <td colspan="3" style="border-collapse: collapse; border-color: #000000; border-width: 1px"><strong>POLNET5 WEB NESNE TAKİP PROJESİ KULLANICI YETKİLENDİRME </strong>İ<span class="auto-style2">ŞLEMLERİ</span></td>
                        </tr>
                        <tr>
                            <td colspan="3" style="border-collapse: collapse; border-color: #000000; border-width: 1px; background-color: #FFFFFF;">
                                <br />
                                <strong>Plaka Takip Sistemi Şifre / Yetki İşlemleri</strong></td>
                        </tr>
                        <tr>
                            <td style="border-collapse: collapse; border-color: #000000; border-width: 1px; background-color: #FFFFFF;">
                                Yapılacak İşlem<br />
                                <br />
                                <br />
                            </td>
                            <td style="border-collapse: collapse; border-color: #000000; border-width: 1px; background-color: #FFFFFF;">
                                <asp:CheckBox ID="CheckBox83" runat="server" Text="Yeni Kayıt" />
                                <br />
                                <asp:CheckBox ID="CheckBox84" runat="server" Text="İptal" />
                                <br />
                                <br />
                            </td>
                            <td style="border-collapse: collapse; border-color: #000000; border-width: 1px; background-color: #FFFFFF;">
                                <asp:CheckBox ID="CheckBox80" runat="server" Text="İl İzleyici Rolü" />
                                <br />
                                <asp:CheckBox ID="CheckBox82" runat="server" Text="Birim İzleyici Rolü" />
                                <br />
                                <asp:CheckBox runat="server" Text="İlçe İzleyici Rolü" ID="CheckBox81">
                                </asp:CheckBox>
                                <br />
                                <asp:CheckBox ID="CheckBox79" runat="server" Text="Nesne Takip Birim Yöneticisi" />
                                <br />
                                <asp:CheckBox ID="CheckBox78" runat="server" Text="Nesne Takip İlçe Yöneticisi" />
                                <br />
                                <asp:CheckBox ID="CheckBox77" runat="server" Text="Grup İzleyici Rolü" />
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td style="border-collapse: collapse; border-color: #000000; border-width: 1px; background-color: #FFFFFF;">
                                &nbsp;</td>
                            <td style="border-collapse: collapse; border-color: #000000; border-width: 1px; background-color: #FFFFFF;">
                                <br />
                            </td>
                            <td style="border-collapse: collapse; border-color: #000000; border-width: 1px; background-color: #FFFFFF;">
                                <br />
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
                <br />
                <br />
             
                <table border="1" style="border-style: solid; border-color: #000000; border-collapse: collapse;" >
                    <tr __designer:mapid="d47">
                        <td style="border-collapse: collapse; border-color: #000000; border-width: 1px; " __designer:mapid="d48">
                            <table __designer:mapid="d49">
                                <tr __designer:mapid="d4a">
                                    <td __designer:mapid="d4b">&nbsp;</td>
                                </tr>
                                <tr __designer:mapid="d4c">
                                    <td __designer:mapid="d4d">1) KULLANICI<span __designer:mapid="d4e">&nbsp; </span>GÜVENLİK<span __designer:mapid="d4f">&nbsp; </span>TALİMATI</td>
                                </tr>
                                <tr __designer:mapid="d50">
                                    <td __designer:mapid="d51">* Kullanıcı sadece kendisine ait kod ve şifre ile sisteme bağlanacaktır. Kullanıcı kod ve şifresi kesinlikle bir başkası tarafından kullanılmamalı ve kullandırılmamalıdır.
                                        <br __designer:mapid="d5e" />* Görev değişikliği olan kullanıcının kod ve şifresinin yenilenmesi ve iptalinden kullanıcı sorumludur. Kullanıcının bu formda belirttiği bilgilerin veya görevinin değişmesi halinde bildirimde bulunması zorunludur.
                                        <br __designer:mapid="d5f" />* Uygulamalar kapsamındaki işlemler log&#39;larda kayıt altına alındığından yapılacak tüm işlemlerin adli ve idari tüm hukuki sorumluluğu projeye bağlanılan kod ve şifre sahibine aittir.
                                        <br __designer:mapid="d60" />* Uygulama kullanıcısı(UTP, ETMYS, PTS) PolNet4 kullanıcı yetkisine sahip olmalıdır. Uygulama, işlem bittikten sonra veya mobil cihaz terk edilmeden önce kapatılacaktır.
                                        <br __designer:mapid="d61" />* Kullanıcı, kendisine tanımlanan ‘kullanıcı hesabı’ ile gireceği ETMYS ETKİ ALANI içinde gerçekleştireceği tüm işlemlerden sorumludur. Tanımlanan ‘kullanıcı hesabı’nın bir başkası tarafından kullanılmış olması, bu durumu değiştirmeyeceği gibi, kullanan kişiyi de aynı derecede sorumluluk altına sokar. Kullanıcı kendisine tahsis edilen ilk şifreyi değiştirmek zorundadır.
                                        <br __designer:mapid="d62" />* İNTERNET kapsamındaki bilgisayarlar hiçbir surette başka bir bilgisayar ağına ( POLNET vs. ) bağlanamaz.
                                        <br __designer:mapid="d63" />* İNTERNET kapsamındaki bilgisayarlar mesai bitiminde tamamen kapalı ( Shut-Down ), mesai dâhilinde kilitli ( Lock )konumuna getirilmeden terk edilemez.
                                        <br __designer:mapid="d64" />* İnternet kapsamındaki uç kullanıcı bilgisayarlarında sadece TCP/IP protokolü kullanılacaktır. İnternet Uç Kullanıcıları İnternet Üzerinde yaptıkları işlemlerden ve kullanıcı hesaplarının güvenliğinden sorumludur.
                                        <br __designer:mapid="d65" />* İnternet Bilgisayarlarında gizlilik dereceli bilgi ve belge bulundurulmaz. Sistemde yapılan tüm işlemlerin, adli ve idari tüm hukuki sorumluluğu kullanıcı kodu sahibine aittir.
                                        <br __designer:mapid="d66" />* Kullanıcı kodlarının, asıl sahibinden farklı biri tarafından kullanıldığının tespit edilmesi halinde, kullanan kişi de aynı derecede sorumluluk sahibidir.
                                        <br __designer:mapid="d67" />* Polnet kapsamındaki hiçbir bilgisayarın mevcut sistem, iletişim ve yazılım konfigürasyonu değiştirilemez.
                                        <br __designer:mapid="d68" />* Şifre/Yetki Talep Formu ile üst yazının çelişmesi halinde Şifre/Yetki Talep Formu dikkate alınacaktır. Üst yazı ile Şifre/Yetki Talep Formunun doğruluğunun kontrolü talebi yapan birime aittir.
                                        <br __designer:mapid="d69" />* Kullanıcı, bu talep formunda belirttiği bilgilerin doğru olduğunu ve tüm bu maddeleri daha sonra hiçbir itiraza mahal vermeyecek şekilde okuduğunu, kabul ve taahhüt etmiştir.
                                        <br __designer:mapid="d6b" />* 27.10.2000 gün ve B.05.1.EGM.0.77.05.02-2809-10280-2000 sayılı genelgenin ihlalinde uygulanacak idari işlem ve Güvenlik talimatının ihlalinde uygulanacak
                                        <br __designer:mapid="d6a" />*İdari işlem Genel Kolluk Disiplin Hükümleri Hakkında KHK 8. Madde 5/Ç -11. fıkra ve adli işlem T.C.K. 132, 138, 243, 244 maddelerini kapsamaktadır. </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr __designer:mapid="d54">
                        <td style="border-collapse: collapse; border-color: #000000; border-width: 1px; text-align: center;" __designer:mapid="d55">
                            <asp:Button runat="server" Text="Onayla / &#199;ıktı Al" ID="Button2"></asp:Button>
                        </td>
                    </tr>
                </table>
                <br />

            </fieldset>
        </div>
    </div>

</asp:Content>

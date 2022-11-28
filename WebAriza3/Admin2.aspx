<%@ Page Title="" Language="C#" MasterPageFile="~/mp.Master" AutoEventWireup="true" CodeBehind="Admin2.aspx.cs" Inherits="WebAriza3.Admin2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 278px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />

    <ajaxToolkit:TabContainer ID="TabContainer1" runat="server" ActiveTabIndex="1" Width="100%">

        <ajaxToolkit:TabPanel runat="server" HeaderText="TabPanel1" ID="TabPanel1">
            <HeaderTemplate>
                Şifre / Yetki İşlemleri
            </HeaderTemplate>
            <ContentTemplate>
                <table>
                    <tr>
                        <td align="top" rowspan="2" style="vertical-align: top">
                            <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn btn-primary btn-smy" OnClick="LinkButton1_Click" PostBackUrl="~/Admin2.aspx" Width="150px">İşlem Bekleyenler</asp:LinkButton>
                            <br />
                            <asp:LinkButton ID="LinkButton2" runat="server" CssClass="btn btn-secondary btn-smy" OnClick="LinkButton2_Click" Width="150px">Arama</asp:LinkButton>
                            <br />
                            <asp:LinkButton ID="LinkButton3" runat="server" CssClass="btn btn-secondary btn-smy" OnClick="LinkButton3_Click1" Width="150px">Kullanıcı Ekle</asp:LinkButton>
                            <br />
                            <asp:LinkButton ID="LinkButton4" runat="server" CssClass="btn btn-secondary btn-smy" OnClick="LinkButton4_Click" Width="150px">Nevi Tanımla</asp:LinkButton>
                            <br />
                            <asp:LinkButton ID="LinkButton5" runat="server" CssClass="btn btn-secondary btn-smy" OnClick="LinkButton5_Click" Width="150px">Durum Tanımla</asp:LinkButton>
                            <br />
                        </td>
                        <td>
                            <asp:Panel ID="pnlarama" runat="server" Visible="False">
                                <table style="width: 100%">
                                    <tr>
                                        <td colspan="5">
                                            <h3>ARAMA İŞLEMLERİ </h3>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Birim<asp:DropDownList ID="dd_drm0" runat="server" AppendDataBoundItems="True" DataSourceID="SqlDataSource2" DataTextField="k_birim" DataValueField="k_birim">
                                        </asp:DropDownList>
                                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT k_birim FROM tbl_per GROUP BY k_birim"></asp:SqlDataSource>
                                        </td>
                                        <td>Durum<asp:DropDownList ID="dd_drm1" runat="server" AppendDataBoundItems="True" DataSourceID="SqlDataSource1" DataTextField="islem" DataValueField="islem">
                                        </asp:DropDownList>
                                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [tbl_drm]"></asp:SqlDataSource>
                                        </td>
                                        <td>Talep Tarih<asp:TextBox ID="dt_1" runat="server" TextMode="Date"></asp:TextBox>
                                            -<asp:TextBox ID="dt_2" runat="server" TextMode="Date"></asp:TextBox>
                                        </td>
                                        <td>Bitiş Tarihi<asp:TextBox ID="dt_3" runat="server" TextMode="Date"></asp:TextBox>
                                            -<asp:TextBox ID="dt_4" runat="server" TextMode="Date"></asp:TextBox>
                                        </td>
                                        <td class="auto-style3">
                                            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Listele" />
                                        </td>
                                    </tr>
                                </table>
                            </asp:Panel>
                            <asp:Panel ID="pnl_kullanici" runat="server" Visible="False">
                                <table style="width: 100%">
                                    <tr>
                                        <td colspan="2">
                                            <h3>KULLANICI İŞLEMLERİ </h3>
                                        </td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>Kullnıcı Sicil</td>
                                        <td>
                                            <asp:TextBox ID="txt_scl" runat="server" AutoPostBack="True" OnTextChanged="txt_scl_TextChanged"></asp:TextBox>
                                        </td>
                                        <td rowspan="6" style="vertical-align: top">
                                            <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" class="table table-striped" DataKeyNames="id" DataSourceID="SqlDataSource3">
                                                <Columns>
                                                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                                                    <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                                                    <asp:BoundField DataField="k_scl" HeaderText="k_scl" SortExpression="k_scl" />
                                                    <asp:BoundField DataField="k_adsad" HeaderText="k_adsad" SortExpression="k_adsad" />
                                                    <asp:BoundField DataField="k_sifre" HeaderText="k_sifre" SortExpression="k_sifre" />
                                                    <asp:BoundField DataField="k_rol" HeaderText="k_rol" SortExpression="k_rol" />
                                                    <asp:BoundField DataField="k_birim" HeaderText="k_birim" SortExpression="k_birim" />
                                                </Columns>
                                            </asp:GridView>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Kullanıcı Ad Soyad</td>
                                        <td>
                                            <asp:TextBox ID="txt_adsad" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Kullanıcı Şifre</td>
                                        <td>
                                            <asp:TextBox ID="txt_sfr" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Kullanıcı Rol</td>
                                        <td>
                                            <asp:DropDownList ID="dd_Rol" runat="server">
                                                <asp:ListItem>Seçin</asp:ListItem>
                                                <asp:ListItem Value="1">Admin</asp:ListItem>
                                                <asp:ListItem Value="2">Kullanıcı</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Kullanıcı Birim</td>
                                        <td>
                                            <asp:TextBox ID="txt_birim" runat="server" Width="319px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td>
                                            <asp:Button ID="btn_kk" runat="server" OnClick="btn_kk_Click1" Text="Kaydet" />
                                            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [tbl_per] WHERE [id] = ?" InsertCommand="INSERT INTO tbl_per( k_scl, k_adsad, k_sifre, k_rol, k_birim) VALUES (?, ?, ?, ?, ?)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [tbl_per]" UpdateCommand="UPDATE [tbl_per] SET [k_scl] = ?, [k_adsad] = ?, [k_sifre] = ?, [k_rol] = ?, [k_birim] = ? WHERE [id] = ?">
                                                <DeleteParameters>
                                                    <asp:Parameter Name="id" Type="Int32" />
                                                </DeleteParameters>
                                                <InsertParameters>
                                                    <asp:ControlParameter ControlID="txt_scl" Name="k_scl" PropertyName="Text" Type="Int32" />
                                                    <asp:ControlParameter ControlID="txt_adsad" Name="k_adsad" PropertyName="Text" Type="String" />
                                                    <asp:ControlParameter ControlID="txt_sfr" Name="k_sifre" PropertyName="Text" Type="String" />
                                                    <asp:ControlParameter ControlID="dd_Rol" Name="k_rol" PropertyName="SelectedValue" Type="Int32" />
                                                    <asp:ControlParameter ControlID="txt_birim" Name="k_birim" PropertyName="Text" Type="String" />
                                                </InsertParameters>
                                                <UpdateParameters>
                                                    <asp:Parameter Name="k_scl" Type="Int32" />
                                                    <asp:Parameter Name="k_adsad" Type="String" />
                                                    <asp:Parameter Name="k_sifre" Type="String" />
                                                    <asp:Parameter Name="k_rol" Type="Int32" />
                                                    <asp:Parameter Name="k_birim" Type="String" />
                                                    <asp:Parameter Name="id" Type="Int32" />
                                                </UpdateParameters>
                                            </asp:SqlDataSource>
                                        </td>
                                    </tr>
                                </table>
                            </asp:Panel>
                            <asp:Panel ID="pnl_nevi" runat="server" Visible="False">
                                <h3>NEVİ İŞLEMLERİ </h3>
                                <table style="width: 100%">
                                    <tr>
                                        <td style="vertical-align: top">Nevi<asp:TextBox ID="txt_nevi" runat="server"></asp:TextBox>
                                            &nbsp;Şifre Açıklama<asp:TextBox ID="txt_sifre" runat="server"></asp:TextBox>
                                            <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Kaydet" />
                                            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [tbl_nevi] WHERE [id] = ?" InsertCommand="INSERT INTO [tbl_nevi] ( [nevi], [osifre]) VALUES ( ?, ?)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [tbl_nevi]" UpdateCommand="UPDATE [tbl_nevi] SET [nevi] = ?, [osifre] = ? WHERE [id] = ?">
                                                <DeleteParameters>
                                                    <asp:Parameter Name="id" Type="Int32" />
                                                </DeleteParameters>
                                                <InsertParameters>
                                                    <asp:ControlParameter ControlID="txt_nevi" Name="nevi" PropertyName="Text" Type="String" />
                                                    <asp:ControlParameter ControlID="txt_sifre" Name="osifre" PropertyName="Text" Type="String" />
                                                </InsertParameters>
                                                <UpdateParameters>
                                                    <asp:Parameter Name="nevi" Type="String" />
                                                    <asp:Parameter Name="osifre" Type="String" />
                                                    <asp:Parameter Name="id" Type="Int32" />
                                                </UpdateParameters>
                                            </asp:SqlDataSource>
                                        </td>
                                        <td>
                                            <asp:GridView ID="GridView3" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" class="table table-striped" DataKeyNames="id" DataSourceID="SqlDataSource4" Width="100%">
                                                <Columns>
                                                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                                                    <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />
                                                    <asp:BoundField DataField="nevi" HeaderText="nevi" SortExpression="nevi" />
                                                    <asp:BoundField DataField="osifre" HeaderText="osifre" SortExpression="osifre" />
                                                </Columns>
                                            </asp:GridView>
                                        </td>
                                    </tr>
                                </table>
                            </asp:Panel>
                            <asp:Panel ID="pnl_drm" runat="server" Visible="False" Width="100%">
                                <h3>İŞLEM TANIMLAMA </h3>
                                <br />
                                <table style="width: 100%">
                                    <tr>
                                        <td style="vertical-align: top">İşlem<asp:TextBox ID="txt_islem" runat="server"></asp:TextBox>
                                            <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Kaydet" />
                                            <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [tbl_drm] WHERE [id] = ?" InsertCommand="INSERT INTO [tbl_drm] ( [islem]) VALUES ( ?)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [tbl_drm]" UpdateCommand="UPDATE [tbl_drm] SET [islem] = ? WHERE [id] = ?">
                                                <DeleteParameters>
                                                    <asp:Parameter Name="id" Type="Int32" />
                                                </DeleteParameters>
                                                <InsertParameters>
                                                    <asp:ControlParameter ControlID="txt_islem" Name="islem" PropertyName="Text" Type="String" />
                                                </InsertParameters>
                                                <UpdateParameters>
                                                    <asp:Parameter Name="islem" Type="String" />
                                                    <asp:Parameter Name="id" Type="Int32" />
                                                </UpdateParameters>
                                            </asp:SqlDataSource>
                                        </td>
                                        <td>
                                            <asp:GridView ID="GridView4" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" class="table table-striped" DataKeyNames="id" DataSourceID="SqlDataSource5">
                                                <Columns>
                                                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                                                    <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                                                    <asp:BoundField DataField="islem" HeaderText="islem" SortExpression="islem" />
                                                </Columns>
                                            </asp:GridView>
                                        </td>
                                    </tr>
                                </table>
                                <br />
                            </asp:Panel>
                            <asp:Panel ID="pnlupdate" runat="server" Visible="False">
                                <table style="width: 100%">
                                    <tr>
                                        <td colspan="7" style="vertical-align: top">
                                            <h3>GÜNCELLEME İŞLEMLERİ </h3>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="vertical-align: top">İd</td>
                                        <td style="vertical-align: top">
                                            <asp:Label ID="lbl_id" runat="server" ForeColor="Red"></asp:Label>
                                        </td>
                                        <td style="vertical-align: top">Durumu<asp:DropDownList ID="dd_drm" runat="server" AppendDataBoundItems="True" DataSourceID="SqlDataSource1" DataTextField="islem" DataValueField="islem">
                                        </asp:DropDownList>
                                        </td>
                                        <td style="vertical-align: top">Yapılan İşlem</td>
                                        <td style="vertical-align: top">
                                            <asp:TextBox ID="txt_ack" runat="server" Height="75px" TextMode="MultiLine" Width="214px"></asp:TextBox>
                                        </td>
                                        <td style="vertical-align: top">İşlem Tarihi:<asp:TextBox ID="dt_it" runat="server" TextMode="Date"></asp:TextBox>
                                            <ajaxToolkit:CalendarExtender ID="CalendarExtender1" runat="server" BehaviorID="_content_CalendarExtender1" Format="dd/MM/yyyy" PopupButtonID="imgPopup" TargetControlID="dt_it" />
                                        </td>
                                        <td style="vertical-align: top">
                                            <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary btn-smy" OnClick="Button1_Click" Text="Güncelle" />
                                        </td>
                                    </tr>
                                </table>
                            </asp:Panel>

                            <asp:GridView ID="GridView1" runat="server" class="table table-striped" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="100%">
                                <Columns>
                                    <asp:CommandField SelectText="İşleme Al" ShowSelectButton="True" />
                                </Columns>
                                <RowStyle Font-Size="10pt" />
                            </asp:GridView>
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                    </tr>
                </table>
            </ContentTemplate>
        </ajaxToolkit:TabPanel>
        <ajaxToolkit:TabPanel ID="TabPanel2" runat="server" HeaderText="TabPanel2">
            <HeaderTemplate>
                Cihaz İşlemleri
            </HeaderTemplate>
            <ContentTemplate>
                <ajaxToolkit:TabContainer ID="TabContainer2" runat="server" ActiveTabIndex="0" Width="100%">
                    <ajaxToolkit:TabPanel ID="TabPanel3" runat="server" HeaderText="TabPanel1">
                        <HeaderTemplate>
                            Cihaz Kayıt
                        </HeaderTemplate>
                        <ContentTemplate>
                            <table>
                                <tr>
                                    <td style="vertical-align: top">Cihaz Seri No:<asp:TextBox ID="txt_cseri" runat="server" class="form-control" placeholder="Seri No"></asp:TextBox>
                                    </td>
                                    <td style="vertical-align: top">Cihaz Adı:<asp:TextBox ID="txt_cad" runat="server" class="form-control" placeholder="Cihaz Adı"></asp:TextBox>
                                    </td>
                                    <td style="vertical-align: top">&nbsp;</td>
                                    <td style="vertical-align: top">&nbsp;</td>
                                    <td class="auto-style1" style="vertical-align: top">Geldiği Yer:<asp:DropDownList ID="dd_cgyer" runat="server" class="form-control" placeholder="" DataSourceID="SqlDataSource9" DataTextField="birim" DataValueField="birim">
                                        <asp:ListItem>Seçiniz</asp:ListItem>
                                        <asp:ListItem>Diğer</asp:ListItem>
                                        <asp:ListItem>Efeler İlçe Emniyet</asp:ListItem>
                                        <asp:ListItem>Asayiş Şube Müdürlüğü</asp:ListItem>
                                        </asp:DropDownList>
                                        <asp:SqlDataSource ID="SqlDataSource9" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [tbl_birim]"></asp:SqlDataSource>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="vertical-align: top">
                                        <br />
                                        Özellikleri:<asp:DropDownList ID="dd_cozllk" runat="server" AutoPostBack="True" class="form-control" DataSourceID="SqlDataSource7" DataTextField="tbl_ozl" DataValueField="tbl_ozl">
                                            <asp:ListItem>Seçiniz</asp:ListItem>
                                            <asp:ListItem>PC</asp:ListItem>
                                            <asp:ListItem>Tablet</asp:ListItem>
                                            <asp:ListItem>Yazıcı</asp:ListItem>
                                        </asp:DropDownList>
                                        <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [tbl_cozl]"></asp:SqlDataSource>
                                        <br />
                                        <br />
                                        <br />
                                    </td>
                                    <td style="vertical-align: top">
                                        <br />
                                        Cihaz Marka:<asp:DropDownList ID="dd_marka" runat="server" class="form-control" DataSourceID="SqlDataSource8" DataTextField="tbl_cmrk" DataValueField="tbl_cmrk" placeholder="Cihaz Adı">
                                            <asp:ListItem>Seçin</asp:ListItem>
                                            <asp:ListItem>Hp</asp:ListItem>
                                            <asp:ListItem>Lenova</asp:ListItem>
                                        </asp:DropDownList>
                                        <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [tbl_mrk]"></asp:SqlDataSource>
                                        İp No:<asp:TextBox ID="txt_cip" runat="server" class="form-control" placeholder="İp No"></asp:TextBox>
                                        <br />
                                        <br />
                                    </td>
                                    <td style="vertical-align: top">
                                        <br />
                                        HDD:<asp:DropDownList ID="dd_chdd" runat="server" class="form-control" placeholder="">
                                            <asp:ListItem>Seçiniz</asp:ListItem>
                                            <asp:ListItem>200 GB</asp:ListItem>
                                            <asp:ListItem>300 GB</asp:ListItem>
                                            <asp:ListItem>500 GB</asp:ListItem>
                                            <asp:ListItem>1 TB</asp:ListItem>
                                            <asp:ListItem>2 TB</asp:ListItem>
                                        </asp:DropDownList>
                                        <br />
                                        SSD:<asp:DropDownList ID="dd_cssd" runat="server" class="form-control" placeholder="">
                                            <asp:ListItem>Seçiniz</asp:ListItem>
                                            <asp:ListItem>240 GB</asp:ListItem>
                                            <asp:ListItem>480 GB</asp:ListItem>
                                            <asp:ListItem>500 GB</asp:ListItem>
                                            <asp:ListItem>1 TB</asp:ListItem>
                                        </asp:DropDownList>
                                        <br />
                                        RAM:<asp:DropDownList ID="dd_ram" runat="server" class="form-control" placeholder="">
                                            <asp:ListItem>Seçiniz</asp:ListItem>
                                            <asp:ListItem>4 GB</asp:ListItem>
                                            <asp:ListItem>8 GB</asp:ListItem>
                                            <asp:ListItem>16 GB</asp:ListItem>
                                        </asp:DropDownList>
                                        <br />
                                        Ekran Kartı:<asp:DropDownList ID="dd_ekart" runat="server" class="form-control" placeholder="">
                                            <asp:ListItem>Seçiniz</asp:ListItem>
                                            <asp:ListItem>Onboard</asp:ListItem>
                                            <asp:ListItem>256 GB</asp:ListItem>
                                            <asp:ListItem>512 GB</asp:ListItem>
                                            <asp:ListItem>1024 GB</asp:ListItem>
                                            <asp:ListItem>2048 GB</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td style="vertical-align: top">
                                        <br />
                                        -HDD-Seri No:<asp:TextBox ID="txt_cip0" runat="server" class="form-control" placeholder=""></asp:TextBox>
                                        <br />
                                        -SSD-Seri No:<asp:TextBox ID="txt_cip1" runat="server" class="form-control" placeholder=""></asp:TextBox>
                                    </td>
                                    <td class="auto-style1" style="vertical-align: top">Geldiği Tarih:<asp:TextBox ID="dt_cgtar" runat="server" class="form-control" placeholder="" TextMode="Date"></asp:TextBox>
                                        <br />
                                        Arıza Açıklama:<asp:TextBox ID="txt_cariza" runat="server" class="form-control" Height="84px" placeholder="" TextMode="MultiLine"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="vertical-align: top">Ebys No:<asp:TextBox ID="txt_ciebys" runat="server" class="form-control" placeholder="" Width="288px"></asp:TextBox>
                                    </td>
                                    <td style="vertical-align: top">&nbsp;</td>
                                    <td style="vertical-align: top">
                                        <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [tbl_chz] WHERE [id] = ?" InsertCommand="INSERT INTO tbl_chz
                         (chz_sn, chz_ad, chz_ip, chz_ozl,chz_mrk, chz_hdd, chz_ssd, chz_ram, chz_ek, chz_gy, chz_gtar, chz_ack,chz_iper,chz_ebys)
VALUES        (?,?,?,?,?,?,?,?,?,?,?,?,?,?)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [tbl_chz]" UpdateCommand="UPDATE [tbl_chz] SET [chz_sn] = ?, [chz_ad] = ?, [chz_ip] = ?, [chz_ozl] = ?, [chz_mrk] = ?, [chz_hdd] = ?, [chz_ssd] = ?, [chz_ram] = ?, [chz_ek] = ?, [chz_gy] = ?, [chz_gtar] = ?, [chz_ack] = ?, [chz_yi] = ?, [chz_itar] = ?, [chz_drm] = ?, [chz_cbrm] = ?, [chz_ctar] = ?, [chz_iper] = ?, [chz_ibtar] = ? WHERE [id] = ?">
                                            <DeleteParameters>
                                                <asp:Parameter Name="id" Type="Int32" />
                                            </DeleteParameters>
                                            <InsertParameters>
                                                <asp:ControlParameter ControlID="txt_cseri" Name="chz_sn" PropertyName="Text" Type="String" />
                                                <asp:ControlParameter ControlID="txt_cad" Name="chz_ad" PropertyName="Text" Type="String" />
                                                <asp:ControlParameter ControlID="txt_cip" Name="chz_ip" PropertyName="Text" Type="String" />
                                                <asp:ControlParameter ControlID="dd_cozllk" Name="chz_ozl" PropertyName="SelectedValue" Type="String" />
                                                <asp:ControlParameter ControlID="dd_marka" Name="chz_mrk" PropertyName="SelectedValue" Type="String" />
                                                <asp:ControlParameter ControlID="dd_chdd" DefaultValue="-" Name="chz_hdd" PropertyName="SelectedValue" Type="String" />
                                                <asp:ControlParameter ControlID="dd_cssd" DefaultValue="" Name="chz_ssd" PropertyName="SelectedValue" Type="String" />
                                                <asp:ControlParameter ControlID="dd_ram" Name="chz_ram" PropertyName="SelectedValue" Type="String" />
                                                <asp:ControlParameter ControlID="dd_ekart" Name="chz_ek" PropertyName="SelectedValue" Type="String" />
                                                <asp:ControlParameter ControlID="dd_cgyer" Name="chz_gy" PropertyName="SelectedValue" Type="String" />
                                                <asp:ControlParameter ControlID="dt_cgtar" Name="chz_gtar" PropertyName="Text" Type="DateTime" />
                                                <asp:ControlParameter ControlID="txt_cariza" Name="chz_ack" PropertyName="Text" />
                                                <asp:SessionParameter Name="chz_iper" SessionField="k_sicil" />
                                                <asp:ControlParameter ControlID="txt_ciebys" Name="chz_ebys" PropertyName="Text" />
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
                                    <td style="vertical-align: top">&nbsp;</td>
                                    <td class="auto-style1" style="vertical-align: top">
                                        <asp:Button ID="btn_ckayit" runat="server" class="form-control" OnClick="btn_ckayit_Click" placeholder="" Text="Kaydet" />
                                    </td>
                                </tr>
                            </table>
                            <br />
                        </ContentTemplate>
                    </ajaxToolkit:TabPanel>
                    <ajaxToolkit:TabPanel ID="TabPanel4" runat="server" HeaderText="TabPanel2">
                        <HeaderTemplate>
                            Sorgulama İşlemleri
                        </HeaderTemplate>
                        <ContentTemplate>
                            <table style="width: 100%">
                                <tr>
                                    <td style="vertical-align: top" class="auto-style2">
                                        <asp:LinkButton ID="LinkButton7" runat="server" CssClass="btn btn-primary btn-smy" Width="150px" OnClick="LinkButton7_Click">İşlem Bekleyenler</asp:LinkButton>
                                        <br />
                                        <asp:LinkButton ID="LinkButton8" runat="server" CssClass="btn btn-secondary btn-smy" OnClick="LinkButton8_Click" Width="150px">Arama</asp:LinkButton>
                                        <br />
                                        <asp:Panel ID="pnl_ciara" runat="server" Visible="False">
                                            <table>
                                                <tr>
                                                    <td>Cihaz Seri No<br />
                                                        <asp:TextBox class="form-control" placeholder="" ID="txt_caseri" runat="server"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Cihaz Adı<br />
                                                        <asp:TextBox class="form-control" placeholder=""  ID="txt_caad" runat="server"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Birim<br />
                                                        <asp:DropDownList class="form-control" placeholder="" ID="dd_cagyer" runat="server">
                                                            <asp:ListItem>Seçiniz</asp:ListItem>
                                                            <asp:ListItem>Diğer</asp:ListItem>
                                                            <asp:ListItem>Efeler İlçe Emniyet</asp:ListItem>
                                                            <asp:ListItem>Asayiş Şube Müdürlüğü</asp:ListItem>
                                                        </asp:DropDownList>
                                                        <br />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Durumu<br />
                                                        <asp:DropDownList class="form-control" placeholder="" ID="dd_cidrm0" runat="server">
                                                            <asp:ListItem>Seçiniz</asp:ListItem>
                                                            <asp:ListItem>Tamamlandı</asp:ListItem>
                                                            <asp:ListItem>Hek</asp:ListItem>
                                                            <asp:ListItem>İşlem Bekliyor</asp:ListItem>
                                                        </asp:DropDownList>
                                                        <br />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Geldiği Tarih<br />
                                                        <asp:TextBox class="form-control" placeholder="" ID="dt_cagt1" runat="server" TextMode="Date"></asp:TextBox>
                                                        <br />
                                                        <asp:TextBox class="form-control" placeholder="" ID="dt_cagt2" runat="server" TextMode="Date"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>İşlem Tarih<br />
                                                        <asp:TextBox class="form-control" placeholder="" ID="dt_cait1" runat="server" TextMode="Date"></asp:TextBox>
                                                        <br />
                                                        <asp:TextBox class="form-control" placeholder="" ID="dt_cait2" runat="server" TextMode="Date"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="text-align: center">
                                                        <asp:Button class="form-control" placeholder="" ID="Button6" runat="server" OnClick="Button6_Click" Text="Ara" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>&nbsp;</td>
                                                </tr>
                                            </table>
                                        </asp:Panel>
                                    </td>
                                    <td style="vertical-align: top">
                                        <asp:Panel ID="pnl_ciislem" runat="server" Visible="False">
                                            <table style="width: 100%">
                                                <tr>
                                                    <td class="auto-style17" style="vertical-align: top">&nbsp; Cihaz Seri No:</td>
                                                    <td class="auto-style7" style="vertical-align: top">
                                                        <asp:Label ID="lbl_ciserin" runat="server"></asp:Label>
                                                    </td>
                                                    <td class="auto-style22" style="vertical-align: top">Cihaz Adı:</td>
                                                    <td class="auto-style12" style="vertical-align: top">
                                                        <asp:TextBox class="form-control" placeholder="" ID="txt_ciad" runat="server"></asp:TextBox>
                                                        <br />
                                                    </td>
                                                    <td class="auto-style5" style="vertical-align: top">İp No:</td>
                                                    <td class="auto-style5" style="vertical-align: top">
                                                        <asp:TextBox class="form-control" placeholder="" ID="txt_ciipno" runat="server"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="auto-style28" style="vertical-align: top">&nbsp; Özellikleri:</td>
                                                    <td class="auto-style29" style="vertical-align: top">
                                                        <asp:Label ID="lbl_ciozllk" runat="server"></asp:Label>
                                                    </td>
                                                    <td class="auto-style30" style="vertical-align: top">Marka:<asp:Label ID="lbl_cimrk" runat="server"></asp:Label>
                                                    </td>
                                                    <td class="auto-style31" colspan="3" style="vertical-align: top">
                                                        <asp:Panel ID="Panel2" runat="server">
                                                            HDD:<asp:DropDownList class="form-control" placeholder="" ID="dd_cihdd" runat="server">
                                                                <asp:ListItem>Seçiniz</asp:ListItem>
                                                                <asp:ListItem>200 GB</asp:ListItem>
                                                                <asp:ListItem>300 GB</asp:ListItem>
                                                                <asp:ListItem>500 GB</asp:ListItem>
                                                                <asp:ListItem>1 TB</asp:ListItem>
                                                                <asp:ListItem>2 TB</asp:ListItem>
                                                            </asp:DropDownList>
                                                            &nbsp;-SSD:<asp:DropDownList class="form-control" placeholder="" ID="dd_cissd" runat="server">
                                                                <asp:ListItem>Seçiniz</asp:ListItem>
                                                                <asp:ListItem>240 GB</asp:ListItem>
                                                                <asp:ListItem>480 GB</asp:ListItem>
                                                                <asp:ListItem>500 GB</asp:ListItem>
                                                                <asp:ListItem>1 TB</asp:ListItem>
                                                            </asp:DropDownList>
                                                            &nbsp;RAM:<asp:DropDownList class="form-control" placeholder="" ID="dd_ciram" runat="server">
                                                                <asp:ListItem>Seçiniz</asp:ListItem>
                                                                <asp:ListItem>4 GB</asp:ListItem>
                                                                <asp:ListItem>8 GB</asp:ListItem>
                                                                <asp:ListItem>16 GB</asp:ListItem>
                                                            </asp:DropDownList>
                                                            -Ekran Kartı:<asp:DropDownList class="form-control" placeholder="" ID="dd_ciekart" runat="server">
                                                                <asp:ListItem>Seçiniz</asp:ListItem>
                                                                <asp:ListItem>Onboard</asp:ListItem>
                                                                <asp:ListItem>256 GB</asp:ListItem>
                                                                <asp:ListItem>512 GB</asp:ListItem>
                                                                <asp:ListItem>1024 GB</asp:ListItem>
                                                                <asp:ListItem>2048 GB</asp:ListItem>
                                                            </asp:DropDownList>
                                                            <br />
                                                        </asp:Panel>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="auto-style19" style="vertical-align: top">&nbsp; Geldiği Yer:</td>
                                                    <td class="auto-style9" style="vertical-align: top">
                                                        <asp:Label ID="lbl_cigyer" runat="server"></asp:Label>
                                                    </td>
                                                    <td class="auto-style24" style="vertical-align: top">Geldiği Tarih:</td>
                                                    <td class="auto-style14" style="vertical-align: top">
                                                        <asp:Label ID="lbl_cigtar" runat="server"></asp:Label>
                                                    </td>
                                                    <td class="auto-style4" style="vertical-align: top">Arıza Açıklama:</td>
                                                    <td class="auto-style4" style="vertical-align: top">
                                                        <asp:TextBox class="form-control" placeholder="" ID="txt_ciack" runat="server" Enabled="False" TextMode="MultiLine" Width="100%"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="auto-style19" style="vertical-align: top">&nbsp; EBYS</td>
                                                    <td class="auto-style9" colspan="3" style="vertical-align: top">
                                                        <asp:TextBox class="form-control" placeholder="" ID="txt_ciebys0" runat="server" Enabled="False" Width="288px"></asp:TextBox>
                                                    </td>
                                                    <td class="auto-style4" style="vertical-align: top">&nbsp;</td>
                                                    <td class="auto-style4" style="vertical-align: top">&nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td colspan="6" style="vertical-align: top">
                                                        <hr />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="auto-style20" style="vertical-align: top">&nbsp; Yapılan İşlem</td>
                                                    <td class="auto-style21" style="vertical-align: top">
                                                        <asp:TextBox class="form-control" placeholder="" ID="txt_ciyis" runat="server" TextMode="MultiLine" Width="100%"></asp:TextBox>
                                                    </td>
                                                    <td class="auto-style25" style="vertical-align: top">İşlem Tarihi:</td>
                                                    <td class="auto-style26" style="vertical-align: top">
                                                        <asp:TextBox class="form-control" placeholder="" ID="txt_ciyistar" runat="server" TextMode="Date"></asp:TextBox>
                                                        <br />
                                                    </td>
                                                    <td class="auto-style6" style="vertical-align: top">Durumu:</td>
                                                    <td class="auto-style6" style="vertical-align: top">
                                                        <asp:DropDownList class="form-control" placeholder="" ID="dd_cidrm" runat="server">
                                                            <asp:ListItem>Seçiniz</asp:ListItem>
                                                            <asp:ListItem>Tamamlandı</asp:ListItem>
                                                            <asp:ListItem>Hek</asp:ListItem>
                                                            <asp:ListItem>İşlem Bekliyor</asp:ListItem>
                                                        </asp:DropDownList>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="auto-style20" style="vertical-align: top">&nbsp;</td>
                                                    <td class="auto-style21" style="vertical-align: top">&nbsp;</td>
                                                    <td class="auto-style25" style="vertical-align: top">&nbsp;</td>
                                                    <td class="auto-style26" style="vertical-align: top">&nbsp;</td>
                                                    <td class="auto-style6" style="vertical-align: top">&nbsp;</td>
                                                    <td class="auto-style6" style="vertical-align: top">&nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td colspan="3" style="vertical-align: top">&nbsp;
                                                        <asp:Label ID="lbl_cidd" runat="server"></asp:Label>
                                                        <asp:Label ID="lbl_imsj0" runat="server" ForeColor="Red"></asp:Label>
                                                    </td>
                                                    <td class="auto-style27" style="vertical-align: top">&nbsp;</td>
                                                    <td style="vertical-align: top">&nbsp;</td>
                                                    <td style="vertical-align: top; text-align: right;">
                                                        <asp:Button ID="btn_cikyt" runat="server" OnClick="btn_cikyt_Click" Text="Kaydet" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td colspan="6" style="vertical-align: top">&nbsp;</td>
                                                </tr>
                                            </table>
                                        </asp:Panel>
                                        <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" DataKeyNames="TakipNo" class="table table-striped" OnSelectedIndexChanged="GridView5_SelectedIndexChanged" Width="100%">
                                            <Columns>
                                                <asp:CommandField ShowSelectButton="True" />
                                                <asp:BoundField DataField="TakipNo" HeaderText="TakipNo" InsertVisible="False" ReadOnly="True" SortExpression="TakipNo" />
                                                <asp:BoundField DataField="SeriNo" HeaderText="SeriNo" SortExpression="SeriNo" />
                                                <asp:BoundField DataField="Cihaz Adı" HeaderText="Cihaz Adı" SortExpression="Cihaz Adı" />
                                                <asp:BoundField DataField="Cihaz İp" HeaderText="Cihaz İp" SortExpression="Cihaz İp" />
                                                <asp:BoundField DataField="Tip" HeaderText="Tip" SortExpression="Tip" />
                                                <asp:BoundField DataField="Marka" HeaderText="Marka" SortExpression="Marka" />
                                                <asp:BoundField DataField="HDD" HeaderText="HDD" SortExpression="HDD" />
                                                <asp:BoundField DataField="SSD" HeaderText="SSD" SortExpression="SSD" />
                                                <asp:BoundField DataField="RAM" HeaderText="RAM" SortExpression="RAM" />
                                                <asp:BoundField DataField="Ekran Kartı" HeaderText="Ekran Kartı" SortExpression="Ekran Kartı" />
                                                <asp:BoundField DataField="Birim" HeaderText="Birim" SortExpression="Birim" />
                                                <asp:BoundField DataField="Geldiği Tarih" HeaderText="Geldiği Tarih" SortExpression="Geldiği Tarih" ReadOnly="True" />
                                                <asp:BoundField DataField="Açıklama" HeaderText="Açıklama" SortExpression="Açıklama" />
                                                <asp:BoundField DataField="İşlem Tarihi" HeaderText="İşlem Tarihi" SortExpression="İşlem Tarihi" ReadOnly="True" />
                                                <asp:BoundField DataField="Yapılan İşlem" HeaderText="Yapılan İşlem" SortExpression="Yapılan İşlem" />
                                                <asp:BoundField DataField="Personel" HeaderText="Personel" SortExpression="Personel" />
                                                <asp:BoundField DataField="Durumu" HeaderText="Durumu" SortExpression="Durumu" />
                                            </Columns>
                                        </asp:GridView>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">&nbsp;</td>
                                </tr>
                            </table>
                        </ContentTemplate>
                    </ajaxToolkit:TabPanel>
                </ajaxToolkit:TabContainer>
            </ContentTemplate>
        </ajaxToolkit:TabPanel>

    </ajaxToolkit:TabContainer>
</asp:Content>

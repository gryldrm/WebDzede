<%@ Page Title="" Language="C#" MasterPageFile="~/mp.Master" AutoEventWireup="true" CodeBehind="Admin2.aspx.cs" Inherits="WebAriza3.Admin2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <ajaxToolkit:TabContainer ID="TabContainer1" runat="server" ActiveTabIndex="1" Width="100%">

        <ajaxToolkit:TabPanel runat="server" HeaderText="TabPanel1" ID="TabPanel1">
            <HeaderTemplate>
                Şifre / Yetki İşlemleri
            </HeaderTemplate>
            <ContentTemplate>
                <table>
                    <tr>
                        <td align="top" rowspan="2" style="vertical-align: top">
                            <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn btn-primary btn-smy" OnClick="LinkButton1_Click" PostBackUrl="~/Admin2.aspx" Width="100%">İşlem Bekleyenler</asp:LinkButton>
                            <br />
                            <asp:LinkButton ID="LinkButton2" runat="server" CssClass="btn btn-secondary btn-smy" OnClick="LinkButton2_Click" Width="100%">Arama</asp:LinkButton>
                            <br />
                        
                            <asp:Panel ID="pnlarama" runat="server" Visible="False">
                                <table>
                                    <tr>
                                        <td>
                                            <h3>ARAMA İŞLEMLERİ </h3>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="vertical-align: top">Birim:<asp:DropDownList ID="dd_drm0" runat="server" AppendDataBoundItems="True" class="form-select" DataSourceID="SqlDataSource2" DataTextField="k_birim" DataValueField="k_birim">
                                            </asp:DropDownList>
                                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT k_birim FROM tbl_per GROUP BY k_birim"></asp:SqlDataSource>
                                            <br />
                                            Durum:<asp:DropDownList ID="dd_drm1" runat="server" AppendDataBoundItems="True" class="form-select" DataSourceID="SqlDataSource1" DataTextField="islem" DataValueField="islem">
                                            </asp:DropDownList>
                                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [tbl_drm]"></asp:SqlDataSource>
                                            Talep Tarih<asp:TextBox ID="dt_1" runat="server" class="form-control" placeholder="" TextMode="Date"></asp:TextBox>
                                            -<asp:TextBox ID="dt_2" runat="server" class="form-control" placeholder="" TextMode="Date"></asp:TextBox>
                                            <br />
                                            Bitiş Tarihi<asp:TextBox ID="dt_3" runat="server" class="form-control" TextMode="Date"></asp:TextBox>
                                            -<asp:TextBox ID="dt_4" runat="server" class="form-control" TextMode="Date"></asp:TextBox>
                                            <br />
                                            <asp:Button ID="Button3" runat="server" CssClass="btn btn-primary btn-smy" OnClick="Button3_Click" Text="Listele" />
                                        </td>
                                    </tr>
                                </table>
                            </asp:Panel>
                            <br />
                        </td>
                        <td style="vertical-align: top">
                            <asp:Panel ID="pnlupdate" runat="server" Visible="False">
                                <table class="auto-style1" >
                                    <tr>
                                        <td colspan="5" style="vertical-align: top">
                                            <h3 style="vertical-align: top">GÜNCELLEME İŞLEMLERİ </h3>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="vertical-align: top">İd:<asp:Label ID="lbl_id" runat="server" ForeColor="Red"></asp:Label>
                                        </td>
                                        <td style="vertical-align: top">Durumu<asp:DropDownList class="form-select" ID="dd_drm" runat="server" AppendDataBoundItems="True" DataSourceID="SqlDataSource2" DataTextField="islem" DataValueField="islem">
                                        </asp:DropDownList>
                                        </td>
                                        <td style="vertical-align: top">Yapılan İşlem:<asp:TextBox ID="txt_ack" runat="server" class="form-control" Height="75px" TextMode="MultiLine" Width="214px"></asp:TextBox>
                                        </td>
                                        <td style="vertical-align: top">
                                            İşlem Tarihi:<asp:TextBox ID="dt_it" runat="server" class="form-control" TextMode="Date"></asp:TextBox>
                                            <ajaxToolkit:CalendarExtender ID="CalendarExtender1" runat="server" BehaviorID="_content_CalendarExtender1" Format="dd/MM/yyyy" PopupButtonID="imgPopup" TargetControlID="dt_it" />
                                        </td>
                                        <td style="vertical-align: top">
                                            <br />
                                            <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary btn-smy" OnClick="Button1_Click" Text="Güncelle" />
                                        </td>
                                    </tr>
                                </table>
                            </asp:Panel>

                            <asp:GridView ID="GridView1" runat="server" class="table table-striped" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" >
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
                <ajaxToolkit:TabContainer ID="TabContainer2" runat="server" ActiveTabIndex="1" Width="100%">
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
                                        Özellikleri:<asp:DropDownList ID="dd_cozllk" runat="server" AutoPostBack="True" class="form-control" DataSourceID="SqlDataSource7" DataTextField="tbl_ozl" DataValueField="tbl_ozl" OnSelectedIndexChanged="dd_cozllk_SelectedIndexChanged">
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
                                        -HDD-Seri No:<asp:TextBox ID="txt_chdds" runat="server" class="form-control" placeholder=""></asp:TextBox>
                                        <br />
                                        -SSD-Seri No:<asp:TextBox ID="txt_ssds" runat="server" class="form-control" placeholder=""></asp:TextBox>
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
                                        &nbsp;</td>
                                    <td style="vertical-align: top"> </td>
                                    <td class="auto-style1" style="vertical-align: top; text-align: center;">
                                        <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [tbl_chz] WHERE [id] = ?" InsertCommand="INSERT INTO tbl_chz
                         (chz_sn, chz_ad, chz_ip, chz_ozl,chz_mrk, chz_hdd, chz_ssd, chz_ram, chz_ek, chz_gy, chz_gtar, chz_ack,chz_iper,chz_ebys,chz_shdd,chz_sssd)
VALUES        (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [tbl_chz]" UpdateCommand="UPDATE [tbl_chz] SET [chz_sn] = ?, [chz_ad] = ?, [chz_ip] = ?, [chz_ozl] = ?, [chz_mrk] = ?, [chz_hdd] = ?, [chz_ssd] = ?, [chz_ram] = ?, [chz_ek] = ?, [chz_gy] = ?, [chz_gtar] = ?, [chz_ack] = ?, [chz_yi] = ?, [chz_itar] = ?, [chz_drm] = ?, [chz_cbrm] = ?, [chz_ctar] = ?, [chz_iper] = ?, [chz_ibtar] = ? WHERE [id] = ?">
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
                                                <asp:ControlParameter ControlID="txt_chdds" Name="chz_shdd" PropertyName="Text" />
                                                <asp:ControlParameter ControlID="txt_ssds" Name="chz_sssd" PropertyName="Text" />
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
                                        <asp:Button ID="btn_ckayit" runat="server"  OnClick="btn_ckayit_Click"  Text="Kaydet" class="btn btn-lg btn-primary" />
                                    </td>
                                </tr>
                            </table>
                            <asp:Label ID="lbl_ckmsj" runat="server"></asp:Label>
                            <br />
                        </ContentTemplate>
                    </ajaxToolkit:TabPanel>
                    <ajaxToolkit:TabPanel ID="TabPanel4" runat="server" HeaderText="TabPanel2">
                        <HeaderTemplate>
                            Sorgulama İşlemleri
                        </HeaderTemplate>
                        <ContentTemplate>
                            <table  >
                                <tr>
                                    <td style="vertical-align: top" >
                                        <asp:LinkButton ID="LinkButton7" runat="server" CssClass="btn btn-primary btn-smy" Width="150px" OnClick="LinkButton7_Click">İşlem Bekleyenler</asp:LinkButton>
                                        <br />
                                        <asp:LinkButton ID="LinkButton8" runat="server" CssClass="btn btn-secondary btn-smy" OnClick="LinkButton8_Click" Width="150px">Arama</asp:LinkButton>
                                        <br />
                                        <asp:Panel ID="pnl_ciara" runat="server" Visible="False">
                                            <table style="width:100%">
                                                <tr>
                                                    <td>Takip No:<br />
                                                        <asp:TextBox ID="txtctkpno" runat="server" class="form-control" placeholder="Takip No"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Cihaz Seri No<br />
                                                        <asp:TextBox ID="txt_caseri" runat="server" class="form-control" placeholder=""></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Cihaz Adı<br />
                                                        <asp:TextBox class="form-control" placeholder="" ID="txt_caad" runat="server"></asp:TextBox>
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
                                                        <asp:DropDownList class="form-control" placeholder="" ID="dd_cidrm0" runat="server" AppendDataBoundItems="True" DataSourceID="SqlDataSource14" DataTextField="islem" DataValueField="islem">
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
                                            <table style="width:100%" >
                                                <tr>
                                                    <td class="auto-style1" style="vertical-align: top">Geldiği Yer:<h2><asp:Label ID="lbl_cigyer" runat="server"></asp:Label></h2>
                                                        <br />
                                                        <br />
                                                        Geldiği Tarih:<h2><asp:Label ID="lbl_cigtar" runat="server"></asp:Label></h2>
                                                        <br />
                                                        <br />
                                                        Cihaz Seri No:<h2><asp:Label ID="lbl_ciserin" runat="server"></asp:Label></h2>
                                                        <br />
                                                        <br />
                                                        Özellikleri:<h2><asp:Label ID="lbl_ciozllk" runat="server"></asp:Label></h2>
                                                        <br />
                                                      
                                                    </td>
                                                    <td  style="vertical-align: top">
                                                        Cihaz Adı:<asp:TextBox ID="txt_ciad" runat="server" class="form-control" placeholder=""></asp:TextBox>
                                                        <br />
                                                        Marka:<asp:Label ID="lbl_cimrk" runat="server"></asp:Label>
                                                        <br />
                                                        <br />
                                                        İp No:<br />
                                                        <asp:TextBox ID="txt_ciipno" runat="server" class="form-control" placeholder=""></asp:TextBox>
                                                        <br />
                                                        EBYS:<br />
                                                        <asp:TextBox ID="txt_ciebys0" runat="server" class="form-control" Enabled="False" placeholder="" ></asp:TextBox>
                                                        <br />
                                                        Arıza Açıklama:<br />
                                                        <asp:TextBox ID="txt_ciack" runat="server" class="form-control" Enabled="False" placeholder="" TextMode="MultiLine" ></asp:TextBox>
                                                        <br />
                                                    </td>
                                                    <td  style="vertical-align: top">
                                                        HDD:<asp:DropDownList ID="dd_cihdd" runat="server" class="form-control" placeholder="">
                                                            <asp:ListItem>Seçiniz</asp:ListItem>
                                                            <asp:ListItem>200 GB</asp:ListItem>
                                                            <asp:ListItem>300 GB</asp:ListItem>
                                                            <asp:ListItem>500 GB</asp:ListItem>
                                                            <asp:ListItem>1 TB</asp:ListItem>
                                                            <asp:ListItem>2 TB</asp:ListItem>
                                                        </asp:DropDownList>
                                                        <asp:TextBox ID="txthdds" runat="server"></asp:TextBox>
                                                        <br />
                                                        SSD:<asp:DropDownList ID="dd_cissd" runat="server" class="form-control" placeholder="">
                                                            <asp:ListItem>Seçiniz</asp:ListItem>
                                                            <asp:ListItem>240 GB</asp:ListItem>
                                                            <asp:ListItem>256 GB</asp:ListItem>
                                                            <asp:ListItem>480 GB</asp:ListItem>
                                                            <asp:ListItem>500 GB</asp:ListItem>
                                                            <asp:ListItem>512 GB</asp:ListItem>
                                                            <asp:ListItem>1 TB</asp:ListItem>
                                                        </asp:DropDownList>
                                                        <asp:TextBox ID="txtssds" runat="server"></asp:TextBox>
                                                        <br />
                                                        RAM:<asp:DropDownList ID="dd_ciram" runat="server" class="form-control" placeholder="">
                                                            <asp:ListItem>Seçiniz</asp:ListItem>
                                                            <asp:ListItem>4 GB</asp:ListItem>
                                                            <asp:ListItem>8 GB</asp:ListItem>
                                                            <asp:ListItem>16 GB</asp:ListItem>
                                                        </asp:DropDownList>
                                                        Ekran Kartı:<asp:DropDownList ID="dd_ciekart" runat="server" class="form-control" placeholder="">
                                                            <asp:ListItem>Seçiniz</asp:ListItem>
                                                            <asp:ListItem>Onboard</asp:ListItem>
                                                            <asp:ListItem>256 GB</asp:ListItem>
                                                            <asp:ListItem>512 GB</asp:ListItem>
                                                            <asp:ListItem>1024 GB</asp:ListItem>
                                                            <asp:ListItem>2048 GB</asp:ListItem>
                                                        </asp:DropDownList>
                                                    </td>
                                                    <td style="vertical-align: top; background-color: #CCCCCC;">Yapılan İşlem<asp:TextBox ID="txt_ciyis" runat="server" class="form-control" placeholder="" TextMode="MultiLine" ></asp:TextBox>
                                                        <br />
                                                        Durumu:<asp:DropDownList ID="dd_cidrm" runat="server" class="form-control" placeholder="" AppendDataBoundItems="True" DataSourceID="SqlDataSource14" DataTextField="islem" DataValueField="islem">
                                                        </asp:DropDownList>
                                                        <asp:SqlDataSource ID="SqlDataSource14" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [tbl_drm]"></asp:SqlDataSource>
                                                        <br />
                                                        İşlem Tarihi:<asp:TextBox ID="txt_ciyistar" runat="server" class="form-control" placeholder="" TextMode="Date"></asp:TextBox>
                                                        <br />
                                                        <asp:Button ID="btn_cikyt" runat="server" OnClick="btn_cikyt_Click" Text="Kaydet" class="form-control" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td colspan="4" style="vertical-align: top">
                                                        Takip No:<asp:Label ID="lbl_cidd" runat="server"></asp:Label>
                                                        <asp:Label ID="lbl_imsj0" runat="server" ForeColor="Red"></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td colspan="4" style="vertical-align: top">&nbsp;</td>
                                                </tr>
                                            </table>
                                        </asp:Panel>
                                        <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" class="table table-striped" DataKeyNames="TakipNo" OnSelectedIndexChanged="GridView5_SelectedIndexChanged" Width="100%">
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
                                                <asp:BoundField DataField="Geldiği Tarih" HeaderText="Geldiği Tarih" ReadOnly="True" SortExpression="Geldiği Tarih" />
                                                <asp:BoundField DataField="Açıklama" HeaderText="Açıklama" SortExpression="Açıklama" />
                                                <asp:BoundField DataField="İşlem Tarihi" HeaderText="İşlem Tarihi" ReadOnly="True" SortExpression="İşlem Tarihi" />
                                                <asp:BoundField DataField="Yapılan İşlem" HeaderText="Yapılan İşlem" SortExpression="Yapılan İşlem" />
                                                <asp:BoundField DataField="Personel" HeaderText="Personel" SortExpression="Personel" />
                                                <asp:BoundField DataField="Durumu" HeaderText="Durumu" SortExpression="Durumu" />
                                            </Columns>
                                        </asp:GridView>
                                        <br />
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

        <ajaxToolkit:TabPanel ID="TabPanel33" runat="server" HeaderText="TabPanel3">
            <HeaderTemplate>
                Birim Tanımlama
            </HeaderTemplate>
            <ContentTemplate>
                <table class="w-100">
                    <tr>
                        <td>Birim Adı:<asp:TextBox ID="TextBox1" runat="server" Width="530px"></asp:TextBox>
                            <asp:Button ID="Button9" runat="server" OnClick="Button9_Click" Text="Kaydet" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:GridView ID="GridView7" class="table table-striped"  runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource12">
                                <Columns>
                                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                                    <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                                    <asp:BoundField DataField="pid" HeaderText="pid" SortExpression="pid" />
                                    <asp:BoundField DataField="birim" HeaderText="birim" SortExpression="birim" />
                                </Columns>
                            </asp:GridView>
                        </td>
                    </tr>
                </table>
                <br />
                <asp:SqlDataSource ID="SqlDataSource12" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [tbl_birim] WHERE [id] = ?" InsertCommand="INSERT INTO [tbl_birim] ( [birim]) VALUES ( ?)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [tbl_birim]" UpdateCommand="UPDATE [tbl_birim] SET [pid] = ?, [birim] = ? WHERE [id] = ?">
                    <DeleteParameters>
                        <asp:Parameter Name="id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:ControlParameter ControlID="TextBox1" Name="birim" PropertyName="Text" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="pid" Type="Int32" />
                        <asp:Parameter Name="birim" Type="String" />
                        <asp:Parameter Name="id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </ContentTemplate>
        </ajaxToolkit:TabPanel>
        <ajaxToolkit:TabPanel ID="TabPanel43" runat="server" HeaderText="TabPanel4">
            <HeaderTemplate>
                Kullanıcı Ekle
            </HeaderTemplate>
            <ContentTemplate>
                <table style="width:100%">
                    <tr>
                        <td colspan="2">
                            <h3>KULLANICI İŞLEMLERİ </h3>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>Kullnıcı Sicil</td>
                        <td>
                            <asp:TextBox ID="txt_scl" runat="server" AutoPostBack="True" class="form-control" OnTextChanged="txt_scl_TextChanged" placeholder="sicil"></asp:TextBox>
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
                            <asp:TextBox ID="txt_adsad" runat="server" class="form-control" placeholder="kullanıcı adı"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Kullanıcı Şifre</td>
                        <td>
                            <asp:TextBox ID="txt_sfr" runat="server" class="form-control" placeholder="kullanıcı şifre"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Kullanıcı Rol</td>
                        <td>
                            <asp:DropDownList ID="dd_Rol" runat="server" class="form-select">
                                <asp:ListItem>Seçin</asp:ListItem>
                                <asp:ListItem Value="1">Admin</asp:ListItem>
                                <asp:ListItem Value="2">Kullanıcı</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td>Kullanıcı Birim</td>
                        <td>
                            <asp:DropDownList ID="dd_drm2" runat="server" AppendDataBoundItems="True" class="form-select" DataSourceID="SqlDataSource3" DataTextField="k_birim" DataValueField="k_birim">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource10" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT k_birim FROM tbl_per GROUP BY k_birim"></asp:SqlDataSource>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <asp:Button ID="btn_kk" runat="server" CssClass="btn btn-primary btn-smy" OnClick="btn_kk_Click1" Text="Kaydet" />
                            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [tbl_per] WHERE [id] = ?" InsertCommand="INSERT INTO tbl_per( k_scl, k_adsad, k_sifre, k_rol, k_birim) VALUES (?, ?, ?, ?, ?)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [tbl_per]" UpdateCommand="UPDATE [tbl_per] SET [k_scl] = ?, [k_adsad] = ?, [k_sifre] = ?, [k_rol] = ?, [k_birim] = ? WHERE [id] = ?">
                                <DeleteParameters>
                                    <asp:Parameter Name="id" Type="Int32" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:ControlParameter ControlID="txt_scl" Name="k_scl" PropertyName="Text" Type="Int32" />
                                    <asp:ControlParameter ControlID="txt_adsad" Name="k_adsad" PropertyName="Text" Type="String" />
                                    <asp:ControlParameter ControlID="txt_sfr" Name="k_sifre" PropertyName="Text" Type="String" />
                                    <asp:ControlParameter ControlID="dd_Rol" Name="k_rol" PropertyName="SelectedValue" Type="Int32" />
                                    <asp:ControlParameter ControlID="dd_drm2" Name="k_birim" PropertyName="SelectedValue" Type="String" />
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
            </ContentTemplate>
        </ajaxToolkit:TabPanel>
        <ajaxToolkit:TabPanel ID="TabPanel5" runat="server" HeaderText="TabPanel5">
            <HeaderTemplate>
                Arıza Nevi Ekle
            </HeaderTemplate>
            <ContentTemplate>
                NEVİ İŞLEMLERİ
                <br />
                <table style="width:100%">
                    <tr>
                        <td style="vertical-align: top">Nevi:<asp:TextBox ID="txt_nevi" runat="server" class="form-control"></asp:TextBox>
                            &nbsp;Açıklama:<asp:TextBox ID="txt_sifre" runat="server" class="form-control"></asp:TextBox>
                            <asp:Button ID="Button4" runat="server" CssClass="btn btn-primary btn-smy" OnClick="Button4_Click" Text="Kaydet" />
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
                <br />
            </ContentTemplate>
        </ajaxToolkit:TabPanel>
        <ajaxToolkit:TabPanel ID="TabPanel6" runat="server" HeaderText="TabPanel6">
            <HeaderTemplate>
                İşlem Durum Ekle
            </HeaderTemplate>
            <ContentTemplate>
                İŞLEM TANIMLAMA
                <br />
                <table style="width:100%">
                    <tr>
                        <td style="vertical-align: top">İşlem:<asp:TextBox ID="txt_islem" runat="server" class="form-control"></asp:TextBox>
                            <asp:Button ID="Button5" runat="server" CssClass="btn btn-primary btn-smy" OnClick="Button5_Click" Text="Kaydet" />
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
            </ContentTemplate>
        </ajaxToolkit:TabPanel>
        <ajaxToolkit:TabPanel ID="TabPanel7" runat="server" HeaderText="TabPanel7">
            <HeaderTemplate>
                Cihaz Ekleme
            </HeaderTemplate>
            <ContentTemplate>
                <table class="w-100">
                    <tr>
                        <td>Özellik:<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                            <asp:Button ID="Button7" runat="server" Text="Kaydet" OnClick="Button7_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:GridView ID="GridView6" class="table table-striped" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource11">
                                <Columns>
                                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                                    <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                                    <asp:BoundField DataField="tbl_ozl" HeaderText="tbl_ozl" SortExpression="tbl_ozl" />
                                </Columns>
                            </asp:GridView>
                        </td>
                    </tr>
                </table>
                <asp:SqlDataSource ID="SqlDataSource11" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [tbl_cozl] WHERE [id] = ?" InsertCommand="INSERT INTO [tbl_cozl] ([tbl_ozl]) VALUES ( ?)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [tbl_cozl]" UpdateCommand="UPDATE [tbl_cozl] SET [tbl_ozl] = ? WHERE [id] = ?">
                    <DeleteParameters>
                        <asp:Parameter Name="id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:ControlParameter ControlID="TextBox2" Name="tbl_ozl" PropertyName="Text" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="tbl_ozl" Type="String" />
                        <asp:Parameter Name="id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </ContentTemplate>
        </ajaxToolkit:TabPanel>
        <ajaxToolkit:TabPanel ID="TabPanel8" runat="server" HeaderText="TabPanel8">
            <HeaderTemplate>
                Cihaz Marka Ekle
            </HeaderTemplate>
            <ContentTemplate>
                Marka:<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                <asp:Button ID="Button8" runat="server" Text="Kaydet" OnClick="Button8_Click" />
                <br />
                <asp:GridView ID="GridView8" class="table table-striped" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource13">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                        <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                        <asp:BoundField DataField="tbl_cmrk" HeaderText="tbl_cmrk" SortExpression="tbl_cmrk" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource13" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [tbl_mrk] WHERE [id] = ?" InsertCommand="INSERT INTO [tbl_mrk] ( [tbl_cmrk]) VALUES ( ?)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [tbl_mrk]" UpdateCommand="UPDATE [tbl_mrk] SET [tbl_cmrk] = ? WHERE [id] = ?">
                    <DeleteParameters>
                        <asp:Parameter Name="id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:ControlParameter ControlID="TextBox3" Name="tbl_cmrk" PropertyName="Text" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="tbl_cmrk" Type="String" />
                        <asp:Parameter Name="id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </ContentTemplate>
        </ajaxToolkit:TabPanel>

    </ajaxToolkit:TabContainer>


</asp:Content>

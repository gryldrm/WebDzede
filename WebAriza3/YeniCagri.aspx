﻿<%@ Page Title="" Language="C#" MasterPageFile="~/mp.Master" AutoEventWireup="true" CodeBehind="YeniCagri.aspx.cs" Inherits="WebAriza3.YeniCagri" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <div class="container-md">
        <div class="col align-self-center">
            <fieldset class="border p-2">
                <legend class="float-none w-auto p-2">Yeni Çağrı</legend>


                <!-- Button trigger modal -->
                <button type="button" ID="btn_kaydet2"  class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
                    Ariza Nevi Talep
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
                                            <asp:AccessDataSource runat="server" DataFile="~/App_Data/aydinbth1.accdb" SelectCommand="SELECT * FROM [tbl_nevi]" ID="AccessDataSource2"></asp:AccessDataSource>
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
                                            <asp:TextBox required=""  runat="server"  ID="txt_ebys" class="form-control" ></asp:TextBox>
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

                                <asp:Button  runat="server" Text="KAYDET" ID="btn_kaydet" AutoPostBack="True" class="btn btn-primary" data-bs-target="#myModal" data-bs-toggle="modal" OnClick="btn_kaydet_Click"></asp:Button>

                            </div>
                        </div>
                    </div>
                </div>

                <!-- Button trigger modal -->
                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop2">
                    Cihaz Arıza Talep
                </button>

                <!-- Modal -->
                <div class="modal " id="staticBackdrop2" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel2" aria-hidden="true">
                    <div class="modal-dialog modal-xl">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h1 class="modal-title fs-5" id="staticBackdropLabel2">Cihaz Arıza Bildirim</h1>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <table>
                                    <tr>
                                        <td style="vertical-align: top">Cihaz Seri No:<asp:TextBox required="" runat="server" ID="txt_cseri" class="form-control" placeholder="Seri No"></asp:TextBox>

                                        </td>
                                        <td style="vertical-align: top">Cihaz Adı:<asp:TextBox required="" runat="server" ID="txt_cad" class="form-control" placeholder="Cihaz Adı"></asp:TextBox>

                                        </td>
                                        <td style="vertical-align: top"></td>
                                        <td style="vertical-align: top"></td>
                                        <td  style="vertical-align: top">Geldiği Yer:<asp:DropDownList required="Seçiniz" runat="server" DataTextField="birim" DataValueField="birim" DataSourceID="SqlDataSource9" ID="dd_cgyer" class="form-control" placeholder="">
                                            <asp:ListItem>Seçiniz</asp:ListItem>
                                            <asp:ListItem>Diğer</asp:ListItem>
                                            <asp:ListItem>Efeler İlçe Emniyet</asp:ListItem>
                                            <asp:ListItem>Asayiş Şube Müdürlüğü</asp:ListItem>
                                        </asp:DropDownList>

                                            <asp:SqlDataSource runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [tbl_birim]" ID="SqlDataSource9"></asp:SqlDataSource>

                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="vertical-align: top">
                                            <br />
                                            Özellikleri:<asp:DropDownList required="Seçiniz" runat="server" AutoPostBack="True" DataTextField="tbl_ozl" DataValueField="tbl_ozl" DataSourceID="SqlDataSource7" ID="dd_cozllk" class="form-control" OnSelectedIndexChanged="dd_cozllk_SelectedIndexChanged">
                                                <asp:ListItem>Seçiniz</asp:ListItem>
                                                <asp:ListItem>PC</asp:ListItem>
                                                <asp:ListItem>Tablet</asp:ListItem>
                                                <asp:ListItem>Yazıcı</asp:ListItem>
                                            </asp:DropDownList>

                                            <asp:SqlDataSource runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [tbl_cozl]" ID="SqlDataSource7"></asp:SqlDataSource>


                                        </td>
                                        <td style="vertical-align: top">
                                            <br />
                                            Cihaz Marka:<asp:DropDownList required="Seçin" runat="server" DataTextField="tbl_cmrk" DataValueField="tbl_cmrk" DataSourceID="SqlDataSource8" ID="dd_marka" class="form-control" placeholder="Cihaz Adı">
                                                <asp:ListItem>Seçin</asp:ListItem>
                                                <asp:ListItem>Hp</asp:ListItem>
                                                <asp:ListItem>Lenova</asp:ListItem>
                                            </asp:DropDownList>

                                            <asp:SqlDataSource runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [tbl_mrk]" ID="SqlDataSource8"></asp:SqlDataSource>

                                            İp No:<asp:TextBox required="" runat="server" ID="txt_cip" class="form-control" placeholder="İp No"></asp:TextBox>

                                            <br />
                                            <br />
                                        </td>
                                        <td style="vertical-align: top">
                                            <br />
                                            HDD:<asp:DropDownList required="Seçiniz" runat="server" ID="dd_chdd" class="form-control" placeholder="">
                                                <asp:ListItem>Seçiniz</asp:ListItem>
                                                <asp:ListItem>200 GB</asp:ListItem>
                                                <asp:ListItem>300 GB</asp:ListItem>
                                                <asp:ListItem>500 GB</asp:ListItem>
                                                <asp:ListItem>1 TB</asp:ListItem>
                                                <asp:ListItem>2 TB</asp:ListItem>
                                            </asp:DropDownList>

                                            <br />
                                            SSD:<asp:DropDownList required="Seçiniz" runat="server" ID="dd_cssd" class="form-control" placeholder="">
                                                <asp:ListItem>Seçiniz</asp:ListItem>
                                                <asp:ListItem>240 GB</asp:ListItem>
                                                <asp:ListItem>480 GB</asp:ListItem>
                                                <asp:ListItem>500 GB</asp:ListItem>
                                                <asp:ListItem>1 TB</asp:ListItem>
                                            </asp:DropDownList>

                                            <br />
                                            RAM:<asp:DropDownList required="Seçiniz" runat="server" ID="dd_ram" class="form-control" placeholder="">
                                                <asp:ListItem>Seçiniz</asp:ListItem>
                                                <asp:ListItem>4 GB</asp:ListItem>
                                                <asp:ListItem>8 GB</asp:ListItem>
                                                <asp:ListItem>16 GB</asp:ListItem>
                                            </asp:DropDownList>

                                            <br />
                                            Ekran Kartı:<asp:DropDownList required="Seçiniz" runat="server" ID="dd_ekart" class="form-control" placeholder="">
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
                                            -HDD-Seri No:<asp:TextBox required="" runat="server" ID="txt_chdds" class="form-control" placeholder=""></asp:TextBox>

                                            <br />
                                            -SSD-Seri No:<asp:TextBox required="" runat="server" ID="txt_ssds" class="form-control" placeholder=""></asp:TextBox>

                                        </td>
                                        <td  style="vertical-align: top" >Geldiği Tarih:<asp:TextBox required="" runat="server" TextMode="Date" ID="dt_cgtar" class="form-control" placeholder=""></asp:TextBox>

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
                         (chz_sn, chz_ad, chz_ip, chz_ozl,chz_mrk, chz_hdd, chz_ssd, chz_ram, chz_ek, chz_gy, chz_gtar, chz_ack,chz_iper,chz_ebys,chz_shdd,chz_sssd)
VALUES        (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"
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
                                                    <asp:ControlParameter ControlID="dd_chdd" PropertyName="SelectedValue" DefaultValue="-" Name="chz_hdd" Type="String"></asp:ControlParameter>
                                                    <asp:ControlParameter ControlID="dd_cssd" PropertyName="SelectedValue" DefaultValue="" Name="chz_ssd" Type="String"></asp:ControlParameter>
                                                    <asp:ControlParameter ControlID="dd_ram" PropertyName="SelectedValue" Name="chz_ram" Type="String"></asp:ControlParameter>
                                                    <asp:ControlParameter ControlID="dd_ekart" PropertyName="SelectedValue" Name="chz_ek" Type="String"></asp:ControlParameter>
                                                    <asp:ControlParameter ControlID="dd_cgyer" PropertyName="SelectedValue" Name="chz_gy" Type="String"></asp:ControlParameter>
                                                    <asp:ControlParameter ControlID="dt_cgtar" PropertyName="Text" Name="chz_gtar" Type="DateTime"></asp:ControlParameter>
                                                    <asp:ControlParameter ControlID="txt_cariza" PropertyName="Text" Name="chz_ack"></asp:ControlParameter>
                                                    <asp:SessionParameter SessionField="k_sicil" Name="chz_iper"></asp:SessionParameter>
                                                    <asp:ControlParameter ControlID="txt_ciebys" PropertyName="Text" Name="chz_ebys"></asp:ControlParameter>
                                                    <asp:ControlParameter ControlID="txt_chdds" PropertyName="Text" Name="chz_shdd"></asp:ControlParameter>
                                                    <asp:ControlParameter ControlID="txt_ssds" PropertyName="Text" Name="chz_sssd"></asp:ControlParameter>
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
                                        <td style="vertical-align: top">&nbsp;</td>
                                        <td style="vertical-align: top">&nbsp;</td>
                                        <td style="vertical-align: top">&nbsp;</td>
                                        <td class="auto-style1" style="vertical-align: top; text-align: center;">&nbsp;</td>
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

            </fieldset>
        </div>
    </div>

</asp:Content>

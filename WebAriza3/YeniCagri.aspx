<%@ Page Title="" Language="C#" MasterPageFile="~/mp.Master" AutoEventWireup="true" CodeBehind="YeniCagri.aspx.cs" Inherits="WebAriza3.YeniCagri" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            background-color: #C0C0C0;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <div class="container-md">
        <div class="col align-self-center">
            <fieldset class="border p-2">
                <legend class="float-none w-auto p-2">Yeni Çağrı</legend>
               gr<table align="center" class="auto-style1">
                    <tr>
                        <td>sdf</td>
                    </tr>
                </table>
                ry
                <br />
                <table style="text-align: left; table-layout: auto;">
                    <tr>
                        <td>TALEP EDEN BİRİM ADI</td>
                        <td>:</td>
                        <td>
                            <asp:Label ID="lblbirim" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>KULLANICININ ADI SOYADI</td>
                        <td>:</td>
                        <td>
                            <asp:TextBox ID="txt_adsad" runat="server" class="form-control" Enabled="False"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>SİCİLİ</td>
                        <td>:</td>
                        <td>
                            <asp:TextBox ID="txt_scl" runat="server" Enabled="False" class="form-control"></asp:TextBox>
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
                            <asp:DropDownList ID="dd_nevi" runat="server" DataSourceID="AccessDataSource2" DataTextField="nevi" DataValueField="nevi" class="form-select" AppendDataBoundItems="True" AutoPostBack="True">
                            </asp:DropDownList>
                            <asp:AccessDataSource ID="AccessDataSource2" runat="server" DataFile="~/App_Data/aydinbth1.accdb" SelectCommand="SELECT * FROM [tbl_nevi]"></asp:AccessDataSource>
                        </td>
                    </tr>
                    <tr>
                        <td>ARIZA / TALEP İLE İLGİLİ KULLANICI ŞİKAYETİ</td>
                        <td>:</td>
                        <td>
                            <asp:TextBox ID="txt_ariza" runat="server" TextMode="MultiLine" class="form-control"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td  >TALEP YAZISI EBYS NO</td>
                        <td  >:</td>
                        <td  >
                            <asp:TextBox ID="txt_ebys" runat="server" Width="250px" class="form-control"></asp:TextBox>
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
                        <td>
                            <asp:Button ID="btn_kaydet" AutoPostBack="True" runat="server" OnClick="btn_kaydet_Click" Text="KAYDET" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#myModal" />
                        </td>
                    </tr>
                </table>
            </fieldset>
        </div>
    </div>






</asp:Content>

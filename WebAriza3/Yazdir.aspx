<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Yazdir.aspx.cs" Inherits="WebAriza3.Yazdir" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 977px;
        }
        .auto-style2 {
            text-align: center;
            font-size: xx-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:DataList ID="DataList1" runat="server" DataKeyField="id" DataSourceID="SqlDataSource1">
            <ItemTemplate>
                &nbsp;<table class="auto-style1">
                    <tr>
                        <td class="auto-style2" colspan="3">ARİZA / TALEP BİLDİRİM FORMU</td>
                    </tr>
                    <tr>
                        <td>Arıza Takip No</td>
                        <td>:<asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>Talep Eden Birim Adı</td>
                        <td>:<asp:Label ID="chz_gyLabel" runat="server" Text='<%# Eval("chz_gy") %>' />
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>Kullanıcının Adı Soyadı</td>
                        <td>:<asp:Label ID="lbladsoyad" runat="server"></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>Kullanıcının Rütbesi</td>
                        <td>:</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>Kullanıcının Sicili</td>
                        <td>:<asp:Label ID="lblsicil" runat="server"></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>Kullanıcının Cep Telefonu / Dahili No</td>
                        <td>:</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>Arıza Talep Nevi</td>
                        <td>:<strong><asp:Label ID="chz_ozlLabel" runat="server" Text='<%# Eval("chz_ozl") %>' />
                            </strong></td>
                        <td><strong>
                            <asp:Label ID="chz_mrkLabel" runat="server" Text='<%# Eval("chz_mrk") %>' />
                            </strong></td>
                    </tr>
                    <tr>
                        <td>Arızalı Cihazın</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>Seri Nosu:<strong><asp:Label ID="chz_snLabel" runat="server" Text='<%# Eval("chz_sn") %>' />
                            </strong></td>
                        <td>PC Adı:<strong><asp:Label ID="chz_adLabel" runat="server" Text='<%# Eval("chz_ad") %>' />
                            </strong></td>
                        <td>IP No:<strong><asp:Label ID="chz_ipLabel" runat="server" Text='<%# Eval("chz_ip") %>' />
                            </strong></td>
                    </tr>
                    <tr>
                        <td>Arıza / Talep İle İlgili Kullanıcı Şikayeti:</td>
                        <td>
                            <asp:Label ID="chz_ackLabel" runat="server" Text='<%# Eval("chz_ack") %>' />
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>Talep Tarihi:</td>
                        <td>
                            <asp:Label ID="chz_gtarLabel" runat="server" Text='<%# Eval("chz_gtar") %>' />
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>EBYS No:</td>
                        <td>
                            <asp:Label ID="chz_ebysLabel" runat="server" Text='<%# Eval("chz_ebys") %>' />
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="3">Bilgi Teknolojileri ve Haberleşme Şube Müdürlüğünce Yapılan İşlem</td>
                    </tr>
                    <tr>
                        <td>Yapılan İşlem:<strong><asp:Label ID="chz_yiLabel" runat="server" Text='<%# Eval("chz_yi") %>' />
                            </strong></td>
                        <td>İşlem Tarihi:<strong><asp:Label ID="chz_itarLabel" runat="server" Text='<%# Eval("chz_itar") %>' />
                            </strong></td>
                        <td>Durumu:<strong><asp:Label ID="chz_drmLabel" runat="server" Text='<%# Eval("chz_drm") %>' />
                            </strong></td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
                <br />
&nbsp;<br />
<br />
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [tbl_chz] WHERE ([id] = ?)">
            <SelectParameters>
                <asp:SessionParameter Name="id" SessionField="yzdr" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>

<%@ Page Language="C#"  AutoEventWireup="true" CodeBehind="Yazdir.aspx.cs" Inherits="WebAriza3.Yazdir" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta http-equiv="Content-Type" content="text/html; charset=windows-1254" />
    
  
    
    <style type="text/css">
        .auto-style1 {
            font-size: x-large;
        }
        .auto-style2 {
            font-size: xx-large;
        }
    </style>
    
  
    
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:DataList ID="DataList1" runat="server" DataKeyField="id" CellPadding="4" Width="100%" >
         
            <ItemTemplate>
               <table border="1" style="border-style: solid; border-color: #000000; border-collapse: collapse; width:100%" >
                    <tr>
                        <td  colspan="3" style="text-align: center; " class="auto-style2"><strong style="border-color: #000000; border-collapse: collapse">ARİZA / TALEP BİLDİRİM FORMU</strong></td>
                    </tr>
                    <tr>
                        <td style="border-color: #000000; border-collapse: collapse">Arıza Takip No</td>
                        <td colspan="2" style="border-color: #000000; border-collapse: collapse">:<asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td style="border-color: #000000; border-collapse: collapse">Talep Eden Birim Adı</td>
                        <td colspan="2" style="border-color: #000000; border-collapse: collapse">:<asp:Label ID="chz_gyLabel" runat="server" Text='<%# Eval("chz_gy") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td style="border-color: #000000; border-collapse: collapse">Kullanıcının Adı Soyadı</td>
                        <td colspan="2" style="border-color: #000000; border-collapse: collapse">:<asp:Label ID="lbladsoyad" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="border-color: #000000; border-collapse: collapse">Kullanıcının Rütbesi</td>
                        <td colspan="2" style="border-color: #000000; border-collapse: collapse">:</td>
                    </tr>
                    <tr>
                        <td style="border-color: #000000; border-collapse: collapse">Kullanıcının Sicili</td>
                        <td colspan="2" style="border-color: #000000; border-collapse: collapse">:<asp:Label ID="lblsicil" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="border-color: #000000; border-collapse: collapse">Kullanıcının Cep Telefonu / Dahili No</td>
                        <td colspan="2" style="border-color: #000000; border-collapse: collapse">:</td>
                    </tr>
                    <tr>
                        <td style="border-color: #000000; border-collapse: collapse">&nbsp;</td>
                        <td colspan="2" style="border-color: #000000; border-collapse: collapse">&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="border-color: #000000; border-collapse: collapse">Arıza Talep Nevi</td>
                        <td style="border-color: #000000; border-collapse: collapse">:<strong><asp:Label ID="chz_ozlLabel" runat="server" Text='<%# Eval("chz_ozl") %>' />
                            </strong></td>
                        <td style="border-color: #000000; border-collapse: collapse"><strong>
                            <asp:Label ID="chz_mrkLabel" runat="server" Text='<%# Eval("chz_mrk") %>' />
                            </strong></td>
                    </tr>
                    <tr>
                        <td colspan="3" class="auto-style1" style="border-color: #000000; border-collapse: collapse"><strong>Arızalı Cihazın</strong></td>
                    </tr>
                    <tr>
                        <td style="border-color: #000000; border-collapse: collapse">Seri Nosu:<strong><asp:Label ID="chz_snLabel" runat="server" Text='<%# Eval("chz_sn") %>' />
                            </strong></td>
                        <td style="border-color: #000000; border-collapse: collapse">PC Adı:<strong><asp:Label ID="chz_adLabel" runat="server" Text='<%# Eval("chz_ad") %>' />
                            </strong></td>
                        <td style="border-color: #000000; border-collapse: collapse">IP No:<strong><asp:Label ID="chz_ipLabel" runat="server" Text='<%# Eval("chz_ip") %>' />
                            </strong></td>
                    </tr>
                    <tr>
                        <td style="border-color: #000000; border-collapse: collapse">Arıza / Talep İle İlgili Kullanıcı Şikayeti:</td>
                        <td colspan="2" style="border-color: #000000; border-collapse: collapse">
                            <asp:Label ID="chz_ackLabel" runat="server" Text='<%# Eval("chz_ack") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td style="border-color: #000000; border-collapse: collapse">Talep Tarihi:</td>
                        <td colspan="2" style="border-color: #000000; border-collapse: collapse">
                            <asp:Label ID="chz_gtarLabel" runat="server" Text='<%# Eval("chz_gtar") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td style="border-color: #000000; border-collapse: collapse">EBYS No:</td>
                        <td colspan="2" style="border-color: #000000; border-collapse: collapse">
                            <asp:Label ID="chz_ebysLabel" runat="server" Text='<%# Eval("chz_ebys") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3" style="border-color: #000000; border-collapse: collapse">&nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="3" style="border-color: #000000; border-collapse: collapse">Bilgi Teknolojileri ve Haberleşme Şube Müdürlüğünce Yapılan İşlem</td>
                    </tr>
                    <tr>
                        <td style="border-color: #000000; border-collapse: collapse">Yapılan İşlem:<strong><asp:Label ID="chz_yiLabel" runat="server" Text='<%# Eval("chz_yi") %>' />
                            </strong></td>
                        <td style="border-color: #000000; border-collapse: collapse">İşlem Tarihi:<strong><asp:Label ID="chz_itarLabel" runat="server" Text='<%# Eval("chz_itar") %>' />
                            </strong></td>
                        <td style="border-color: #000000; border-collapse: collapse">Durumu:<strong><asp:Label ID="chz_drmLabel" runat="server" Text='<%# Eval("chz_drm") %>' />
                            </strong></td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </ItemTemplate>
            <SelectedItemStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        </asp:DataList>
    </form>
</body>
</html>

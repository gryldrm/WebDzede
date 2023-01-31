<%@ Page Language="C#"  AutoEventWireup="true" CodeBehind="Yazdir.aspx.cs" Inherits="WebAriza3.Yazdir" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta http-equiv="Content-Type" content="text/html; charset=windows-1254" />
    
  
    
    <style type="text/css">
        .auto-style1 {
            height: 24px;
        }
        .auto-style2 {
            height: 78px;
        }
        .auto-style3 {
            height: 49px;
            text-align: center;
        }
        .auto-style4 {
            height: 25px;
        }
        .auto-style5 {
            height: 26px;
        }
        .auto-style7 {
            height: 98px;
        }
    </style>
    
  
    
</head>
<body>
    <form id="form1" runat="server">
        <asp:DataList ID="DataList1" runat="server" DataKeyField="id" CellPadding="4"  >
         
            <ItemTemplate>
               <table border="1" style="border-style: solid; border-color: #000000; border-collapse: collapse; " >
                    <tr>
                        <td  colspan="4" style="text-align: center; " class="auto-style2"><strong style="border-color: #000000; border-collapse: collapse">ARİZA / TALEP BİLDİRİM FORMU<br />
                            <br />
                            </strong></td>
                    </tr>
                    <tr>
                        <td style="border-color: #000000; border-collapse: collapse">Arıza Takip No</td>
                        <td colspan="3" style="border-color: #000000; border-collapse: collapse">:<asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                            <br />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td style="border-color: #000000; border-collapse: collapse">Talep Eden Birim Adı</td>
                        <td colspan="3" style="border-color: #000000; border-collapse: collapse">:<asp:Label ID="chz_gyLabel" runat="server" Text='<%# Eval("chz_gy") %>' />
                            <br />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td style="border-color: #000000; border-collapse: collapse">Kullanıcının Adı Soyadı</td>
                        <td colspan="3" style="border-color: #000000; border-collapse: collapse">:<asp:Label ID="lbladsoyad" runat="server" Text='<%# Eval("chz_tadsoyad") %>'></asp:Label>
                            <br />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td style="border-color: #000000; border-collapse: collapse">Kullanıcının Rütbesi</td>
                        <td colspan="3" style="border-color: #000000; border-collapse: collapse">:</td>
                    </tr>
                    <tr>
                        <td style="border-color: #000000; border-collapse: collapse">Kullanıcının Sicili</td>
                        <td colspan="3" style="border-color: #000000; border-collapse: collapse">:<asp:Label ID="lblsicil" runat="server" Text='<%# Eval("chz_tscl") %>'></asp:Label>
                            <br />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td style="border-color: #000000; border-collapse: collapse">Kullanıcının Cep Telefonu / Dahili No</td>
                        <td colspan="3" style="border-color: #000000; border-collapse: collapse">:</td>
                    </tr>
                    <tr>
                        <td style="border-color: #000000; border-collapse: collapse">&nbsp;</td>
                        <td colspan="3" style="border-color: #000000; border-collapse: collapse">&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="border-color: #000000; border-collapse: collapse; vertical-align: top;" class="auto-style5">Arıza Talep Nevi</td>
                        <td style="border-color: #000000; border-collapse: collapse" class="auto-style5" colspan="2">:<strong style="vertical-align: top"><asp:Label ID="chz_ozlLabel" runat="server" Text='<%# Eval("chz_ozl") %>' />
                            <br />
                            <br />
                            </strong></td>
                        <td style="border-color: #000000; border-collapse: collapse" class="auto-style5"><strong style="vertical-align: text-top">
                            <asp:Label ID="chz_mrkLabel" runat="server" Text='<%# Eval("chz_mrk") %>' />
                            <br />
                            <br />
                            </strong></td>
                    </tr>
                    <tr>
                        <td colspan="4" class="auto-style1" style="border-color: #000000; border-collapse: collapse"><strong>
                            <br />
                            <br />
                            Arızalı Cihazın</strong></td>
                    </tr>
                    <tr>
                        <td style="border-color: #000000; border-collapse: collapse">Seri Nosu:<strong><br /> <asp:Label ID="chz_snLabel" runat="server" Text='<%# Eval("chz_sn") %>' />
                            </strong></td>
                        <td style="border-color: #000000; border-collapse: collapse" colspan="2">PC Adı:<strong><br /> <asp:Label ID="chz_adLabel" runat="server" Text='<%# Eval("chz_ad") %>' />
                            </strong></td>
                        <td style="border-color: #000000; border-collapse: collapse">IP No:<strong><br /> <asp:Label ID="chz_ipLabel" runat="server" Text='<%# Eval("chz_ip") %>' />
                            </strong></td>
                    </tr>
                    <tr>
                        <td style="border-color: #000000; border-collapse: collapse; vertical-align: top;" class="auto-style4">Arıza / Talep İle İlgili Kullanıcı Şikayeti:</td>
                        <td colspan="3" style="border-color: #000000; border-collapse: collapse; vertical-align: top;" class="auto-style4">
                            <asp:Label ID="chz_ackLabel" runat="server" Text='<%# Eval("chz_ack") %>' />
                            <br />
                            <br />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td style="border-color: #000000; border-collapse: collapse">Talep Tarihi:</td>
                        <td colspan="3" style="border-color: #000000; border-collapse: collapse">
                            <asp:Label ID="chz_gtarLabel" runat="server" Text='<%# Eval("chz_gtar") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td style="border-color: #000000; border-collapse: collapse">EBYS No:</td>
                        <td colspan="3" style="border-color: #000000; border-collapse: collapse">
                            <asp:Label ID="chz_ebysLabel" runat="server" Text='<%# Eval("chz_ebys") %>' />
                        </td>
                    </tr>
                    <tr>
                         

                        <td style="border-color: #FFFFFF; border-collapse: collapse">&nbsp;</td>
                        <td style="border-color: #FFFFFF; border-collapse: collapse" colspan="2">&nbsp;</td>
                        <td style="border-color: #FFFFFF; text-align: center;"text-align: center; " border-collapse: collapse">
                            <br />
                            <br />
                            <asp:Panel ID="Panel2" runat="server" CssClass="auto-style13" Font-Size="X-Small" ForeColor="Silver">
                                İmza<br /> BirimAmiriAdSoyad<br /> Ünvanı<br /> Rütbesi
                            </asp:Panel>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="4" style="border-color: #000000; border-collapse: collapse" class="auto-style3"><strong>
                            
                            Bilgi Teknolojileri ve Haberleşme Şube Müdürlüğünce Yapılan İşlem</strong></td>
                    </tr>
                    <tr>
                        <td style="border-color: #000000; border-collapse: collapse">Yapılan İşlem:</td>
                        <td style="border-color: #000000; border-collapse: collapse" colspan="2">İşlem Tarihi:</td>
                        <td style="border-color: #000000; border-collapse: collapse">Durumu:</td>
                    </tr>
                    <tr>
                        <td class="auto-style7"><strong>
                            <asp:Label ID="chz_yiLabel" runat="server" Text='<%# Eval("chz_yi") %>' />
                            </strong></td>
                        <td class="auto-style7" colspan="2"><strong>
                            <asp:Label ID="chz_itarLabel" runat="server" Text='<%# Eval("chz_itar") %>' />
                            </strong></td>
                        <td class="auto-style7">
                            <strong>
                            <asp:Label ID="chz_drmLabel" runat="server" Text='<%# Eval("chz_drm") %>' />
                            </strong>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td   colspan="2">İşlem Tamamlama Tarihi:<strong><asp:Label ID="chz_itar0" runat="server" Text='<%# Eval("chz_itar") %>' />
                            <br />
                            <br />
                            <br />
                            </strong></td>
                        <td colspan="2">İşlem Yapan Personel:<strong><asp:Label ID="chz_iper1" runat="server" Text='<%# Eval("chz_iper") %>' />
                            <br />
                            <br />
                            <br />
                            </strong></td>
                    </tr>
                    <tr>
                        <td colspan="4">
                            <asp:Panel ID="Panel1" runat="server" Font-Size="XX-Small">
                                UYARILAR:
                                <br />
                                *Arıza/Talep formsuz hiçbir cihaza bakım yapılmayacaktır. Bu form sistem üzerinden boş olarak çıkartılıp eksiksiz doldurulacaktır.
                                <br />
                                *Bakım ve onarım için gelen cihazlarda gerekli bilgi ve belge yedeklerini şubeler kendi bünyesinde almalıdır. Aksi takdirde meydana gelebilecek bilgi ve belge kayıplarından şubemiz sorumlu değildir. *Herhangi bir sorunda Pol-Net sistemi yüklü bilgisayarlara hiçbir şekilde kullanıcı tarafından müdahale edilmeyecektir.
                                <br />
                                *Pol-Net sistemi yüklü bilgisayarlarda harici FLASH BELLEK VS. kullanılması yasaktır.
                                <br />
                                *Pol-Net sitemi yüklü bilgisayarlara ASLA İNTERNET KABLOSU TAKILMAYACAKTIR.
                                <br />
                                *Virüs bulaşması ihtimali veya internet kablosu, flash bellek vs. takılması sonucu Pol-Net sistemine virüs bulaşması halinde derhal Pol-Net kablosu çekilerek Bilgi İşlem Şube Müdürlüğü ile irtibata geçilmelidir.
                            </asp:Panel>
                                              
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
            <SelectedItemStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        </asp:DataList>
    </form>
</body>
</html>

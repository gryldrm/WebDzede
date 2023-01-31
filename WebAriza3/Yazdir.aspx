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
                        <td  colspan="4" style="text-align: center; " class="auto-style2"><strong style="border-color: #000000; border-collapse: collapse">AR�ZA / TALEP B�LD�R�M FORMU<br />
                            <br />
                            </strong></td>
                    </tr>
                    <tr>
                        <td style="border-color: #000000; border-collapse: collapse">Ar�za Takip No</td>
                        <td colspan="3" style="border-color: #000000; border-collapse: collapse">:<asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                            <br />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td style="border-color: #000000; border-collapse: collapse">Talep Eden Birim Ad�</td>
                        <td colspan="3" style="border-color: #000000; border-collapse: collapse">:<asp:Label ID="chz_gyLabel" runat="server" Text='<%# Eval("chz_gy") %>' />
                            <br />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td style="border-color: #000000; border-collapse: collapse">Kullan�c�n�n Ad� Soyad�</td>
                        <td colspan="3" style="border-color: #000000; border-collapse: collapse">:<asp:Label ID="lbladsoyad" runat="server" Text='<%# Eval("chz_tadsoyad") %>'></asp:Label>
                            <br />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td style="border-color: #000000; border-collapse: collapse">Kullan�c�n�n R�tbesi</td>
                        <td colspan="3" style="border-color: #000000; border-collapse: collapse">:</td>
                    </tr>
                    <tr>
                        <td style="border-color: #000000; border-collapse: collapse">Kullan�c�n�n Sicili</td>
                        <td colspan="3" style="border-color: #000000; border-collapse: collapse">:<asp:Label ID="lblsicil" runat="server" Text='<%# Eval("chz_tscl") %>'></asp:Label>
                            <br />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td style="border-color: #000000; border-collapse: collapse">Kullan�c�n�n Cep Telefonu / Dahili No</td>
                        <td colspan="3" style="border-color: #000000; border-collapse: collapse">:</td>
                    </tr>
                    <tr>
                        <td style="border-color: #000000; border-collapse: collapse">&nbsp;</td>
                        <td colspan="3" style="border-color: #000000; border-collapse: collapse">&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="border-color: #000000; border-collapse: collapse; vertical-align: top;" class="auto-style5">Ar�za Talep Nevi</td>
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
                            Ar�zal� Cihaz�n</strong></td>
                    </tr>
                    <tr>
                        <td style="border-color: #000000; border-collapse: collapse">Seri Nosu:<strong><br /> <asp:Label ID="chz_snLabel" runat="server" Text='<%# Eval("chz_sn") %>' />
                            </strong></td>
                        <td style="border-color: #000000; border-collapse: collapse" colspan="2">PC Ad�:<strong><br /> <asp:Label ID="chz_adLabel" runat="server" Text='<%# Eval("chz_ad") %>' />
                            </strong></td>
                        <td style="border-color: #000000; border-collapse: collapse">IP No:<strong><br /> <asp:Label ID="chz_ipLabel" runat="server" Text='<%# Eval("chz_ip") %>' />
                            </strong></td>
                    </tr>
                    <tr>
                        <td style="border-color: #000000; border-collapse: collapse; vertical-align: top;" class="auto-style4">Ar�za / Talep �le �lgili Kullan�c� �ikayeti:</td>
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
                                �mza<br /> BirimAmiriAdSoyad<br /> �nvan�<br /> R�tbesi
                            </asp:Panel>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="4" style="border-color: #000000; border-collapse: collapse" class="auto-style3"><strong>
                            
                            Bilgi Teknolojileri ve Haberle�me �ube M�d�rl���nce Yap�lan ��lem</strong></td>
                    </tr>
                    <tr>
                        <td style="border-color: #000000; border-collapse: collapse">Yap�lan ��lem:</td>
                        <td style="border-color: #000000; border-collapse: collapse" colspan="2">��lem Tarihi:</td>
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
                        <td   colspan="2">��lem Tamamlama Tarihi:<strong><asp:Label ID="chz_itar0" runat="server" Text='<%# Eval("chz_itar") %>' />
                            <br />
                            <br />
                            <br />
                            </strong></td>
                        <td colspan="2">��lem Yapan Personel:<strong><asp:Label ID="chz_iper1" runat="server" Text='<%# Eval("chz_iper") %>' />
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
                                *Ar�za/Talep formsuz hi�bir cihaza bak�m yap�lmayacakt�r. Bu form sistem �zerinden bo� olarak ��kart�l�p eksiksiz doldurulacakt�r.
                                <br />
                                *Bak�m ve onar�m i�in gelen cihazlarda gerekli bilgi ve belge yedeklerini �ubeler kendi b�nyesinde almal�d�r. Aksi takdirde meydana gelebilecek bilgi ve belge kay�plar�ndan �ubemiz sorumlu de�ildir. *Herhangi bir sorunda Pol-Net sistemi y�kl� bilgisayarlara hi�bir �ekilde kullan�c� taraf�ndan m�dahale edilmeyecektir.
                                <br />
                                *Pol-Net sistemi y�kl� bilgisayarlarda harici FLASH BELLEK VS. kullan�lmas� yasakt�r.
                                <br />
                                *Pol-Net sitemi y�kl� bilgisayarlara ASLA �NTERNET KABLOSU TAKILMAYACAKTIR.
                                <br />
                                *Vir�s bula�mas� ihtimali veya internet kablosu, flash bellek vs. tak�lmas� sonucu Pol-Net sistemine vir�s bula�mas� halinde derhal Pol-Net kablosu �ekilerek Bilgi ��lem �ube M�d�rl��� ile irtibata ge�ilmelidir.
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

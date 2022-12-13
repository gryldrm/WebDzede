<%@ Page Title="" Language="C#" MasterPageFile="~/mp.Master" AutoEventWireup="true" CodeBehind="Anasayfa.aspx.cs" Inherits="WebAriza3.Anasayfa1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
             
            <asp:GridView ID="GridView1" runat="server" class="table table-striped" Width="100%" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Takip No" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:TemplateField HeaderText="Takip No" InsertVisible="False" SortExpression="Takip No">
                        <EditItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("[Takip No]") %>'></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("[Takip No]") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="Birim" HeaderText="Birim" SortExpression="Birim" />
                    <asp:BoundField DataField="Sicil" HeaderText="Sicil" SortExpression="Sicil" />
                    <asp:BoundField DataField="Ad Soyad" HeaderText="Ad Soyad" SortExpression="Ad Soyad" />
                    <asp:BoundField DataField="Nevi" HeaderText="Nevi" SortExpression="Nevi" />
                    <asp:BoundField DataField="Arıza Açıklama" HeaderText="Arıza Açıklama" SortExpression="Arıza Açıklama" />
                    <asp:BoundField DataField="Talep Tarihi" HeaderText="Talep Tarihi" SortExpression="Talep Tarihi" />
                    <asp:BoundField DataField="Yapılan İşlem" HeaderText="Yapılan İşlem" SortExpression="Yapılan İşlem" />
                    <asp:BoundField DataField="Arıza Durumu" HeaderText="Arıza Durumu" SortExpression="Arıza Durumu" />
                    <asp:BoundField DataField="Tamamlanma Tarihi" HeaderText="Tamamlanma Tarihi" SortExpression="Tamamlanma Tarihi" />
                    <asp:CommandField SelectText="Şifre Göster" ShowSelectButton="True" />
                </Columns>
            </asp:GridView>
             
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT TOP 10 id AS [Takip No], birim AS Birim, sicil AS Sicil, adisoyadi AS [Ad Soyad], nevi AS Nevi, ariza AS [Arıza Açıklama], tlptar AS [Talep Tarihi], isl_aciklama AS [Yapılan İşlem], durumu AS [Arıza Durumu], isl_bitis AS [Tamamlanma Tarihi] FROM tbl_ariza WHERE (sicil = ?) ORDER BY id DESC">
                <SelectParameters>
                    <asp:SessionParameter Name="?" SessionField="k_sicil" />
                </SelectParameters>
            </asp:SqlDataSource>
             
            <br />
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource2" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="Seri No" HeaderText="Seri No" SortExpression="Seri No" />
                    <asp:BoundField DataField="Cihazın Adı" HeaderText="Cihazın Adı" SortExpression="Cihazın Adı" />
                    <asp:BoundField DataField="İp No" HeaderText="İp No" SortExpression="İp No" />
                    <asp:BoundField DataField="Özellik" HeaderText="Özellik" SortExpression="Özellik" />
                    <asp:BoundField DataField="Marka" HeaderText="Marka" SortExpression="Marka" />
                    <asp:BoundField DataField="Geldiği Tarih" HeaderText="Geldiği Tarih" SortExpression="Geldiği Tarih" />
                    <asp:BoundField DataField="Açıklama" HeaderText="Açıklama" SortExpression="Açıklama" />
                    <asp:BoundField DataField="Yapılan İşlem" HeaderText="Yapılan İşlem" SortExpression="Yapılan İşlem" />
                    <asp:BoundField DataField="İşlem Tarihi" HeaderText="İşlem Tarihi" SortExpression="İşlem Tarihi" />
                    <asp:BoundField DataField="Durumu" HeaderText="Durumu" SortExpression="Durumu" />
                    <asp:BoundField DataField="EBYS" HeaderText="EBYS" SortExpression="EBYS" />
                    <asp:CommandField ShowSelectButton="True" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT id, chz_sn AS [Seri No], chz_ad AS [Cihazın Adı], chz_ip AS [İp No], chz_ozl AS Özellik, chz_mrk AS Marka, chz_gtar AS [Geldiği Tarih], chz_ack AS Açıklama, chz_yi AS [Yapılan İşlem], chz_itar AS [İşlem Tarihi], chz_drm AS Durumu, chz_ebys AS EBYS FROM tbl_chz ORDER BY id DESC"></asp:SqlDataSource>
             
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

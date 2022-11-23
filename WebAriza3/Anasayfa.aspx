<%@ Page Title="" Language="C#" MasterPageFile="~/mp.Master" AutoEventWireup="true" CodeBehind="Anasayfa.aspx.cs" Inherits="WebAriza3.Anasayfa1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>

     
             
            <asp:GridView ID="GridView1" runat="server" class="table table-striped" Width="100%" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Takip No" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:BoundField DataField="Takip No" HeaderText="Takip No" InsertVisible="False" ReadOnly="True" SortExpression="Takip No" />
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
     
            
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT TOP 10 id AS [Takip No], birim AS Birim, sicil AS Sicil, adisoyadi AS [Ad Soyad], nevi AS Nevi, ariza AS [Arıza Açıklama], tlptar AS [Talep Tarihi], isl_aciklama AS [Yapılan İşlem], durumu AS [Arıza Durumu], isl_bitis AS [Tamamlanma Tarihi] FROM tbl_ariza WHERE (sicil = ?) ORDER BY id DESC">
                <SelectParameters>
                    <asp:SessionParameter Name="?" SessionField="k_sicil" />
                </SelectParameters>
            </asp:SqlDataSource>
     
            
            <br />
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/yonetici paneli/yonetici.master" AutoEventWireup="true" CodeFile="HakimizdaGuncelle.aspx.cs" Inherits="yonetici_paneli_HakimizdaGuncelle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <table class="auto-style1" style="color: #FFFFFF">
        <tr>
            <td class="auto-style3" style="text-align: right">&nbsp;</td>
            <td>
               
            </td>
        </tr>
        <tr>
            <td class="auto-style3" style="text-align: right"> DEFTERDAR:</td>
            <td>
                <asp:TextBox ID="TextdefGuncelleAd" runat="server" CssClass="auto-style1" Height="100px" TextMode="MultiLine" Width="530px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3" style="text-align: right">HAKIMIZDA :</td>
            <td>
                <asp:TextBox ID="TextHakguncelleOzet" runat="server" CssClass="textbooxs" TextMode="MultiLine" Height="100px" Width="530px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3" style="text-align: right">GOREV VE MİSYON </td>
            <td> 
                <asp:TextBox ID="TextGorguncelleOzet0" runat="server" CssClass="textbooxs" TextMode="MultiLine" Height="100px" Width="530px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3" style="text-align: right">RESİM : </td>
            <td>
                <asp:FileUpload ID="FileUpdefffotoGuncelle" runat="server" CssClass="auto-style1" />
            </td>
        </tr>
        <tr>
            <td class="auto-style3" style="text-align: right">&nbsp;</td>
            <td>
                <asp:Button ID="Btnhakguncelle" runat="server" Text="GÜNCELLE" BackColor="#CC0000" CssClass="butonGoresel" ForeColor="White" OnClick="Button1_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style3" style="text-align: right">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3" style="text-align: right">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>


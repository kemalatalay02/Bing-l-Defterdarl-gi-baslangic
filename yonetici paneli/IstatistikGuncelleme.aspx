<%@ Page Title="" Language="C#" MasterPageFile="~/yonetici paneli/yonetici.master" AutoEventWireup="true" CodeFile="IstatistikGuncelleme.aspx.cs" Inherits="yonetici_paneli_IstatistikGuncelleme" %>

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
            <td class="auto-style3" style="text-align: right">İSTATİSİTK ADI :</td>
            <td>
                <asp:TextBox ID="TextIstGuncelleAd" runat="server" CssClass="auto-style1" Height="100px" TextMode="MultiLine" Width="530px"></asp:TextBox>
            </td>
        </tr>
        
        <tr>
            <td class="auto-style3" style="text-align: right">İSTATİSTİK : </td>
            <td>
                <asp:FileUpload ID="FileUpIstGuncelle" runat="server" CssClass="auto-style1" />
            </td>
        </tr>
        <tr>
            <td class="auto-style3" style="text-align: right">&nbsp;</td>
            <td>
                <asp:Button ID="BtnIstGuncelle" runat="server" Text="Guncelle" BackColor="#CC0000" CssClass="butonGoresel" ForeColor="White" OnClick="BtnIstGuncelle_Click" />
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


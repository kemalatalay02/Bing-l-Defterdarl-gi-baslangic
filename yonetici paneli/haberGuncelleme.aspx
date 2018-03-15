<%@ Page Title="" Language="C#" MasterPageFile="~/yonetici paneli/yonetici.master" AutoEventWireup="true" CodeFile="haberGuncelleme.aspx.cs" Inherits="yonetici_paneli_haberGuncelleme" %>
<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
    <style type="text/css">
        .auto-style3 {
            width: 128px;
        }
    </style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1" style="color: #FFFFFF">
        <tr>
            <td class="auto-style3" style="text-align: right">&nbsp;</td>
            <td>
               
            </td>
        </tr>
        <tr>
            <td class="auto-style3" style="text-align: right">HABER ADİ :</td>
            <td>
                <asp:TextBox ID="TextHaberGuncelleAd" runat="server" CssClass="auto-style1" Height="100px" TextMode="MultiLine" Width="530px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3" style="text-align: right">HABER OZETİ :</td>
            <td>
                <asp:TextBox ID="TextHaberguncelleOzet" runat="server" CssClass="textbooxs" TextMode="MultiLine" Height="100px" Width="530px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3" style="text-align: right">HABER İÇERİK </td>
            <td> <CKEditor:CKEditorControl ID="CKid"  runat="server" Height="196px" Width="531px"></CKEditor:CKEditorControl>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3" style="text-align: right">RESİM : </td>
            <td>
                <asp:FileUpload ID="FileUpGuncelle" runat="server" CssClass="auto-style1" />
            </td>
        </tr>
        <tr>
            <td class="auto-style3" style="text-align: right">&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Button" BackColor="#CC0000" CssClass="butonGoresel" ForeColor="White" OnClick="Button1_Click" />
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


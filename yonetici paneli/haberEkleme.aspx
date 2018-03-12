<%@ Page Title="" Language="C#" MasterPageFile="~/yonetici paneli/yonetici.master" AutoEventWireup="true" CodeFile="haberEkleme.aspx.cs" Inherits="yonetici_paneli_haberEkleme" %>
<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style4 {
            width: 101px;
        }
        .auto-style5 {
            width: 175px;
            height: 21px;
        }
        .auto-style6 {
            width: 356px;
            height: 21px;
        }
        .auto-style7 {
            width: 100px;
            height: 21px;
        }
    </style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <div style="height:5px;width:650px;"></div>
        <div style="height:25px;width:650px; color:white; ">
            &nbsp;&nbsp;<asp:Button ID="ButArti" runat="server" BackColor="Red" ForeColor="White" Height="25px" OnClick="ButArti_Click" Text="+" Width="25px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="BTNeksi" runat="server" BackColor="Red" ForeColor="White" Height="25px" OnClick="BTNeksi_Click" Text="-" Width="25px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            HABER EKLEME PANELİ

        </div>
        <asp:Panel ID="pnlHaberEkleme" runat="server" BackColor="#669999" ForeColor="White">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style4" style="text-align: right">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4" style="text-align: right">Haber Adı: </td>
                    <td>
                        <asp:TextBox ID="TextHEA" runat="server" Width="550px" CssClass="textbooxs" TextMode="MultiLine" Height="100px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4" style="text-align: right">Haber Özeti:</td>
                    <td>
                        <asp:TextBox ID="TextHEO" runat="server"  Width="550px" TextMode="MultiLine" Height="100px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4" style="text-align:  right;width:550px;">Haber İçeriği:</td>
                    <td>
                        <CKEditor:CKEditorControl ID="CKid"  runat="server"></CKEditor:CKEditorControl>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4" style="text-align: right">&nbsp;Resim:</td>
                    <td>
                        <asp:FileUpload ID="FileUpHabEkleme" runat="server" CssClass="textbooxs" Width="550px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4" style="text-align: right">&nbsp;</td>
                    <td>
                        <asp:Button ID="BtnHaberEkleme" runat="server" Text="EKLE" CssClass="butonGoresel" Width="84px" BackColor="#FF3300" OnClick="BtnHaberEkleme_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4" style="text-align: right">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>

        </asp:Panel>
        <div style="height:5px;width:650px;"></div>
        <div style="width: 650px; height: 15px; background-color: red;"></div>
         <div style="height:5px;width:650px;"></div>
        <div style="height:25px;width:650px; color:white; ">
            &nbsp;&nbsp;<asp:Button ID="BtnHaberDuzArti" runat="server" BackColor="Red" ForeColor="White" Height="25px"  Text="+" Width="25px" OnClick="BtnHaberDuzArti_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="BtnHaberDuzEksi" runat="server" BackColor="Red" ForeColor="White" Height="25px"  Text="-" Width="25px" OnClick="BtnHaberDuzEksi_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            HABER DÜZENLEME PANELİ

        </div>
        <asp:Panel ID="PnlHaberDuz" runat="server" BackColor="#669999" ForeColor="White">
            <asp:DataList ID="DataHaberGetir" runat="server" Width="650px">
                <HeaderTemplate>
                    <table class="textbooxs">
                        <tr >
                            <td class="auto-style6"  >&nbsp;HABAER ADI</td>
                            <td class="auto-style5">&nbsp;&nbsp; GÜNCELLE</td>
                            <td class="auto-style7">&nbsp;&nbsp; SİL&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                        </tr>
                    </table>
                </HeaderTemplate>
                <ItemTemplate>
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style6">&nbsp;&nbsp;<asp:Literal ID="Literal1" runat="server" Text='<%# Eval("habarAdi") %>'></asp:Literal>
                            </td>
                            <td class="auto-style5">GÜNCELLE</td>
                            <td> <a href="haberEkleme.aspx?haberID=<%#Eval("haberID")%>&islem=sil">SİL</a> </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
            

        </asp:Panel>
        <div style="height:5px;width:650px;"></div>
        <div style="width: 650px; height: 15px; background-color: red;"></div>
    </div>
</asp:Content>


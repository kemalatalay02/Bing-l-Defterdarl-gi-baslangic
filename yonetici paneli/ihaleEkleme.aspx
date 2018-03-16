<%@ Page Title="" Language="C#" MasterPageFile="~/yonetici paneli/yonetici.master" AutoEventWireup="true" CodeFile="ihaleEkleme.aspx.cs" Inherits="yonetici_paneli_ihaleEkleme" %>
<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <div style="height:5px;width:650px;"></div>
        <div style="height:25px;width:650px; color:white; ">
            &nbsp;&nbsp;<asp:Button ID="ButIhaleArti" runat="server" BackColor="Red" ForeColor="White" Height="25px"  Text="+" Width="25px" OnClick="ButIhaleArti_Click1"   />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="BTNIhaleeksi" runat="server" BackColor="Red" ForeColor="White" Height="25px" Text="-" Width="25px" OnClick="BTNIhaleeksi_Click1" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            İHALE EKLEME PANELİ

        </div>
         <div style="height:5px;width:650px;"></div>
        <asp:Panel ID="pnlIhaleEkleme" runat="server" BackColor="#669999" ForeColor="White">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style4" style="text-align: right">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4" style="text-align: right">İhale Adı: </td>
                    <td>
                        <asp:TextBox ID="TextIEA" runat="server" Width="550px" CssClass="textbooxs" TextMode="MultiLine" Height="100px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4" style="text-align: right">İhale Özeti:</td>
                    <td>
                        <asp:TextBox ID="TextIEO" runat="server"  Width="550px" TextMode="MultiLine" Height="100px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4" style="text-align:  right;width:550px;">Duyuru İçeriği:</td>
                    <td>
                        <CKEditor:CKEditorControl ID="CKid"  runat="server"></CKEditor:CKEditorControl>
                    </td>
                </tr>
                
                <tr>
                    <td class="auto-style4" style="text-align: right">&nbsp;</td>
                    <td>
                        <asp:Button ID="BtnDuyruEkleme" runat="server" Text="EKLE" CssClass="butonGoresel" Width="84px" BackColor="#FF3300" OnClick="BtnDuyruEkleme_Click"   />
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
            &nbsp;&nbsp;<asp:Button ID="BtnIhaleDuzArti" runat="server" BackColor="Red" ForeColor="White" Height="25px"  Text="+" Width="25px" OnClick="BtnIhaleDuzArti_Click"   />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="BtnİhaleDuzEksi" runat="server" BackColor="Red" ForeColor="White" Height="25px"  Text="-" Width="25px" OnClick="BtnİhaleDuzEksi_Click"   />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; İHALE&nbsp; DÜZENLEME PANELİ

        </div>
         <div style="height:5px;width:650px;"></div>
      
        <div style="width: 650px; height: 15px; background-color: red;"></div>
         <asp:Panel ID="PnlIhaleDuz" runat="server" BackColor="#669999" ForeColor="White">
            
             <asp:DataList ID="DataIhaleDuz" runat="server" Width="650px">
                 <HeaderTemplate>
                    <table class="textbooxs">
                        <tr >
                            <td class="haberadi"  >&nbsp;İHALE   ADI  </td>
                            <td class="guncelle">GÜNCELLEME</td>
                            <td class="sil">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; SİL&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                        </tr>
                    </table>
                </HeaderTemplate>
                <ItemTemplate>
                    <table class="auto-style1">
                        <tr>
                            <td class="haberadi">&nbsp;&nbsp;<asp:Literal ID="Literal1" runat="server" Text='<%# Eval("ihaleAdi") %>'></asp:Literal>
                            </td>
                            <td class="guncelle">
                                
                             
                                <a href="IhaleGuncelleme.aspx?ihaleID=<%#Eval("ihaleID")%>" class="guncelle">GÜNCELLEME</a>
                            </td>
                            
                            <td class="sil"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="ihaleEkleme.aspx?ihaleID=<%#Eval("ihaleID")%>&islem=sil" class="butonGoresel">SİL</a> </td>
                        
                        </tr>
                    </table>
                </ItemTemplate>
             </asp:DataList>
             
             </asp:Panel>
    </div>
</asp:Content>
<%@ Page Title="" Language="C#" MasterPageFile="~/yonetici paneli/yonetici.master" AutoEventWireup="true" CodeFile="hakimizde.aspx.cs" Inherits="yonetici_paneli_hakimizde" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
            height: 27px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <div>
        <div style="height:5px;width:650px;"></div>
        <div style="height:25px;width:650px; color:white; ">
            &nbsp;&nbsp;<asp:Button ID="ButhakArti" runat="server" BackColor="Red" ForeColor="White" Height="25px" Text="+" Width="25px" OnClick="ButhakArti_Click"  />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="BtnHakeksi" runat="server" BackColor="Red" ForeColor="White" Height="25px"  Text="-" Width="25px" OnClick="BtnHakeksi_Click"  />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           HAKIMIZDA BİLGİ EKLEME PANELİ

        </div>
        <asp:Panel ID="pnlHakEkleme" runat="server" BackColor="#669999" ForeColor="White">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style4" style="text-align: right">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4" style="text-align: right">HAKIMIZDA: </td>
                    <td>
                        <asp:TextBox ID="TextHakEA" runat="server" Width="550px" CssClass="textH" TextMode="MultiLine" Height="100px"></asp:TextBox>
                    
                    </td>
                </tr>
               <tr>
                    <td class="auto-style4" style="text-align: right">GÖREV VE MİSYON:</td>
                    <td>
                        <asp:TextBox ID="TextGEO" runat="server"  Width="550px" TextMode="MultiLine" Height="100px"></asp:TextBox>
                    </td>
                </tr>
                <tr>

                    
                    <td class="auto-style4" style="text-align:  right;width:550px;">DEFTERDAR:</td>
                   <td class="auto-style4" style="text-align:  right;width:550px;">
                        <asp:TextBox ID="TextDef" runat="server" Width="550px" CssClass="textbooxs" TextMode="MultiLine" Height="100px"></asp:TextBox>
                    
                   </td>
                </tr>
               
                <tr>
                    <td class="auto-style4" style="text-align: right">&nbsp;RESİM EKLE:</td>
                    <td>
                        <asp:FileUpload ID="FileUpDefEkleme" runat="server" CssClass="textbooxs" Width="550px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3" style="text-align: right"></td>
                    <td class="auto-style3">
                        <asp:Button ID="FileUpHabEkleme" runat="server" Text="EKLE" CssClass="butonGoresel" Width="84px" BackColor="#FF3300" OnClick="FileUpHabEkleme_Click"  />
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
            &nbsp;&nbsp;<asp:Button ID="BtnHAKDuzArti" runat="server" BackColor="Red" ForeColor="White" Height="25px"  Text="+" Width="25px" OnClick="BtnHAKDuzArti_Click"  />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="BtnHakDuzEksi" runat="server" BackColor="Red" ForeColor="White" Height="25px"  Text="-" Width="25px" OnClick="BtnHakDuzEksi_Click"  />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            HAKIMIZDA BİLGİ DÜZENLEME PANELİ

        </div>
        <asp:Panel ID="PnlHakDuz" runat="server" BackColor="#669999" ForeColor="White">
            <asp:DataList ID="DataHaKGetir" runat="server" Width="650px">
                <HeaderTemplate>
                    <table class="textbooxs">
                        <tr >
                            <td class="haberadi"  >&nbsp;HAKIMIZDA</td>
                            <td class="guncelle">GÜNCELLEME</td>
                            <td class="sil">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; SİL&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                        </tr>
                    </table>
                </HeaderTemplate>
                <ItemTemplate>
                    <table class="auto-style1">
                        <tr>
                            <td class="haberadi">&nbsp;&nbsp;<asp:Literal ID="Literal1" runat="server" Text='<%# Eval("hakimizda") %>'></asp:Literal>
                            </td>
                            <td class="guncelle">
                                
                             
                                <a href="hakimizdaGuncelle.aspx?hakimizdaID=<%#Eval("hakimizdaID")%>" class="guncelle">GÜNCELLEME</a>
                            </td>
                            
                            <td class="sil"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="Hakimizde.aspx?hakimizdaID=<%#Eval("hakimizdaID")%>&islem=sil" class="butonGoresel">SİL</a>  </td>
                        
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
            

        </asp:Panel>
        <div style="height:5px;width:650px;"></div>
        <div style="width: 650px; height: 15px; background-color: red;"></div>
    </div>
</asp:Content>


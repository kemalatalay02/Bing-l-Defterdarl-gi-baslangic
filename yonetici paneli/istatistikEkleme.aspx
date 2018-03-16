<%@ Page Title="" Language="C#" MasterPageFile="~/yonetici paneli/yonetici.master" AutoEventWireup="true" CodeFile="istatistikEkleme.aspx.cs" Inherits="yonetici_paneli_istatistikEkleme" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
       <div style="height:5px;width:650px;"></div>
        <div style="height:25px;width:650px; color:white; ">
            &nbsp;&nbsp;<asp:Button ID="ButIstaArti" runat="server" BackColor="Red" ForeColor="White" Height="25px" Text="+" Width="25px" OnClick="ButFArti_Click"  />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="BTNIstaeksi" runat="server" BackColor="Red" ForeColor="White" Height="25px"  Text="-" Width="25px" OnClick="BTNFeksi_Click"  />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            EKLEME PANELİ

        </div>
        <asp:Panel ID="pnlIstaEkleme" runat="server" BackColor="#669999" ForeColor="White">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style4" style="text-align: right">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4" style="text-align: right">FORM Adı: </td>
                    <td>
                        <asp:TextBox ID="TextIEA" runat="server" Width="550px" CssClass="textbooxs" TextMode="MultiLine" Height="100px"></asp:TextBox>
                    </td>
                </tr>
              
               
               
                <tr>
                    <td class="auto-style4" style="text-align: right">&nbsp;DOSYA EKLE:</td>
                    <td>
                        <asp:FileUpload ID="FileUpstaEkleme" runat="server" CssClass="textbooxs" Width="550px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4" style="text-align: right">&nbsp;</td>
                    <td>
                        <asp:Button ID="istaEkleme" runat="server" Text="EKLE" CssClass="butonGoresel" Width="84px" BackColor="#FF3300" OnClick="istaEkleme_Click"   />
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
            &nbsp;&nbsp;<asp:Button ID="BtnFormDuzArti" runat="server" BackColor="Red" ForeColor="White" Height="25px"  Text="+" Width="25px" OnClick="BtnFormDuzArti_Click"   />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="BtnFormDuzEksi" runat="server" BackColor="Red" ForeColor="White" Height="25px"  Text="-" Width="25px" OnClick="BtnFormDuzEksi_Click"   />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            İSTATİSTİK DÜZENLEME PANELİ

        </div>
         
        <asp:Panel ID="PnlIstaDuz" runat="server" BackColor="#669999" ForeColor="White">
            <asp:DataList ID="DataIstaGetir" runat="server" Width="650px">
                <HeaderTemplate>
                    <table class="textbooxs">
                        <tr >
                            <td class="haberadi"  >&nbsp;İSTATİSİTK ADI</td>
                            <td class="guncelle">GÜNCELLEME</td>
                            <td class="sil">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; SİL&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                        </tr>
                    </table>
                </HeaderTemplate>
                <ItemTemplate>
                    <table class="auto-style1">
                        <tr>
                            <td class="haberadi">&nbsp;&nbsp;<asp:Literal ID="Literal1" runat="server" Text='<%# Eval("IstaAdi") %>'></asp:Literal>
                            </td>
                            <td class="guncelle">
                                
                             
                                <a href="IstatistikGuncelleme.aspx?IstaID=<%#Eval("IstaID")%>" class="guncelle">GÜNCELLEME</a>
                            </td>
                            
                            <td class="sil"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="istatistikEkleme.aspx?IstaID=<%#Eval("IstaID")%>&islem=sil" class="butonGoresel">SİL</a> </td>
                        
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
            

        </asp:Panel>
        <div style="height:5px;width:650px;"></div>
        <div style="width: 650px; height: 15px; background-color: red;"></div>
    </div>
</asp:Content>
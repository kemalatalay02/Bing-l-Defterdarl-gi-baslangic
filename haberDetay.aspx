<%@ Page Title="" Language="C#" MasterPageFile="~/AnaMaster.master" AutoEventWireup="true" CodeFile="haberDetay.aspx.cs" Inherits="haberDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <marquee align="middle" scrollamount="1" position: absolute; height="400px" width="100%" direction="up" scrolldelay="1" onmouseover="this.stop();" onmouseout="this.start();">
            
     <asp:DataList ID="DataHabDetay" runat="server">
        <ItemTemplate>
                 
             <table class="auto-style8" style="color:white; background-color:#2a595c">
                <tr>
                    <td style="text-align:center;">
                        <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("habarAdi") %>' ></asp:Literal>
                    </td>
                </tr>
                <tr>
                    <td>

                    <%--    <asp:Literal ID="Literal4" runat="server" Text='<%# Eval("haberResim") %>'></asp:Literal>--%>
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("haberResim") %>' Height="250px" Width="540px" />
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        <asp:Literal ID="Literal2" runat="server" Text='<%# Eval("haberIcerik") %>'></asp:Literal>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: right">
                        <asp:Literal ID="Literal3" runat="server" Text='<%# Eval("haberTarih") %>'></asp:Literal>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
        
    </asp:DataList>
    </marquee>
</asp:Content>


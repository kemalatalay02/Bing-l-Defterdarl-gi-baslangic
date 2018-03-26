<%@ Page Title="" Language="C#" MasterPageFile="~/AnaMaster.master" AutoEventWireup="true" CodeFile="Gorev.aspx.cs" Inherits="Gorev" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
       <asp:DataList ID="DataLGorevbilgi" runat="server" Height="398px" >
                        <ItemTemplate>
                           
                            
                            <table class="auto-style8">
                               
                                <tr>
                                   <td class="auto-style9" style="color:white;"> 
                                        <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("GorevMisyon") %>'></asp:Literal>
                                    </td>
                                </tr>
                            </table>
                           
                            
                        </ItemTemplate>
                        
                           
                    </asp:DataList>
</asp:Content>


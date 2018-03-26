<%@ Page Title="" Language="C#" MasterPageFile="~/AnaMaster.master" AutoEventWireup="true" CodeFile="hakimizdada.aspx.cs" Inherits="hakimizdada" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <asp:DataList ID="DataLHAKbilgi" runat="server" Height="398px" >
                        <ItemTemplate>
                           
                            
                            <table class="auto-style8">
                               
                                <tr>
                                   <td class="auto-style9" style="color:white;"> 
                                        <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("hakimizda") %>'></asp:Literal>
                                    </td>
                                </tr>
                            </table>
                           
                            
                        </ItemTemplate>
                        
                           
                    </asp:DataList>
</asp:Content>


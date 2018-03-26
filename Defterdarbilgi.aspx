<%@ Page Title="" Language="C#" MasterPageFile="~/AnaMaster.master" AutoEventWireup="true" CodeFile="Defterdarbilgi.aspx.cs" Inherits="Defterdarbilgi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style9 {
            height: 16px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <asp:DataList ID="DataLDefbilgi" runat="server" Height="398px" >
                        <ItemTemplate>
                           
                            
                            <table class="auto-style8">
                                <tr>
                                    <td class="auto-style9">
                                        <asp:Image ID="Image1" runat="server" Height="200px" ImageUrl='<%# Eval("resim") %>' Width="540px" />
                                    </td>
                                   
                                </tr>
                                <tr>
                                   <td class="auto-style9" style="color:white;"> 
                                        <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("defterdarimiz") %>'></asp:Literal>
                                    </td>
                                </tr>
                            </table>
                           
                            
                        </ItemTemplate>
                        
                           
                    </asp:DataList>
</asp:Content>


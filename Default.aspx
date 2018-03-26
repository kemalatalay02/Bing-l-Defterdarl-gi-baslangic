<%@ Page Title="" Language="C#" MasterPageFile="~/AnaMaster.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="amazingslider-wrapper-1" style="display: block; position: relative; max-width: 550px; margin: 0px auto 60px;">
        <div id="amazingslider-1" style="display: block; position: relative; margin: 0 auto;">
            <ul class="amazingslider-slides" style="display: none;">

                <asp:DataList ID="DataLHabercekme" runat="server">

                    <ItemTemplate>
                        <li>
                            <a href="haberDetay.aspx?haberID=<%#Eval("haberID") %>"><img src="<%#Eval("haberResim") %>" alt="<%#Eval("habarAdi") %>"  /> </a>   
                        </li>       
                    </ItemTemplate>
                </asp:DataList>


            </ul>
            <ul class="amazingslider-thumbnails" style="display: none;">
            </ul>
        </div>
    </div>

</asp:Content>

<%--  --%>
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="yoneticiDefault.aspx.cs" Inherits="yonetici_paneli_yoneticiDefault" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   <style type="text/css">

       * {
           margin:0;
           padding:0;
           border:0;
       }
   </style>
</head>
<body style="background-color:  #e1e1e1;" >
    <form id="form1" runat="server">
    <div style="height: 61px ;background-color:#2a595c;">
    
      <div style="color:white; float:left; width:334px; height: 59px; margin-top:0px; font-family:Verdana;font-size:15px;">
          <br />
&nbsp; Kullanıcı Adı :<asp:TextBox ID="TextYKA" runat="server" Height="24px"></asp:TextBox>
        </div> 
        <div style="color:white; float:left;width:245px; height: 59px; margin-top:0px; font-family:Verdana;font-size:15px;">
            <br />
&nbsp; Şifre :<asp:TextBox ID="TexYKS" runat="server" Height="24px" Width="168px" TextMode="Password"></asp:TextBox>
        </div> 
        <div style="color:white ;float:left;width:210px; height: 59px; margin-top:0px; font-family:Verdana;font-size:15px;"> 
            <br />
&nbsp; <asp:Button ID="BtnYKG" runat="server" Height="24px" Text="GİRİŞ" Width="71px" ForeColor="#2a595c" BackColor="White" />
        </div> 
    
    </div>
    </form>
</body>
</html>

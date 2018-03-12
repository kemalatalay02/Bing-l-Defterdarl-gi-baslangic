using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class yonetici_paneli_yoneticiDefault : System.Web.UI.Page
{
    veri   baglan = new veri();
   
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    
    protected void BtnYKG_Click(object sender, EventArgs e)
    {
        SqlCommand cmdyonetici = new SqlCommand("Select * from yoneticiTbl where kullaniciAdi='" + TextYKA.Text+ "' and sifre='" + TexYKS.Text+"'", baglan.baglan());
        SqlDataReader cmdYonOku = cmdyonetici.ExecuteReader();
        if (cmdYonOku.Read())
        {

            Response.Redirect("yoneticipanel.aspx");
            
        }
        else
        {
            Label1.Text = "Hatalı Giriş Yaptınız";
        }
    }
}
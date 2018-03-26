using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class yonetici_paneli_HakimizdaGuncelle : System.Web.UI.Page
{
    veri baglan = new veri();
    string hakimizdaID = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        hakimizdaID = Request.QueryString["hakimizdaID"];

        if (Page.IsPostBack == false)
        {
            SqlCommand cmdkguncelle = new SqlCommand("select * from  hakimizdaTbl where hakimizdaID='" + hakimizdaID + "'", baglan.baglan());
            SqlDataReader drkguncelle = cmdkguncelle.ExecuteReader();
            DataTable dtkguncelle = new DataTable("tablo");
            dtkguncelle.Load(drkguncelle);
            //if (dt != null && dt.Rows.Count > 0) { 
            DataRow row = dtkguncelle.Rows[0];
            TextdefGuncelleAd.Text = row["defterdarimiz"].ToString();
            TextHakguncelleOzet.Text = row["hakimizda"].ToString();
            TextGorguncelleOzet0.Text = row["GorevMisyon"].ToString();
            //}
            //  else
            //  {
            //          Button1.Text = "SATIR YOK";
            //  }
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (FileUpdefffotoGuncelle.HasFile)
        {
            FileUpdefffotoGuncelle.SaveAs(Server.MapPath("/resimler/" + FileUpdefffotoGuncelle.FileName));
            SqlCommand Habguncelle = new SqlCommand("Update hakimizdaTbl set  defterdarimiz='" + TextdefGuncelleAd.Text + "', hakimizda='" + TextHakguncelleOzet.Text + "' , resim='/resimler/" + FileUpdefffotoGuncelle.FileName + "', GorevMisyon='" + TextGorguncelleOzet0.Text + "' where hakimizdaID='" + hakimizdaID + "'", baglan.baglan());
            Habguncelle.ExecuteNonQuery();
            Response.Redirect("yoneticipanel.aspx");
        }
        else
        {
            SqlCommand Haberguncelle = new SqlCommand("Update hakimizdaTbl set  defterdarimiz='" + TextdefGuncelleAd.Text + "', hakimizda='" + TextHakguncelleOzet.Text + "',  resim='" + TextGorguncelleOzet0.Text + "' where hakimizdaID='" + hakimizdaID + "'", baglan.baglan());
            Haberguncelle.ExecuteNonQuery();
            Response.Redirect("yoneticipanel.aspx");
        }
    }
}
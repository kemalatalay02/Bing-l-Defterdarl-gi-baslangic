using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class yonetici_paneli_haberGuncelleme : System.Web.UI.Page
{
    veri baglan = new veri();
    string haberID = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        haberID = Request.QueryString["haberID"];

        if (Page.IsPostBack == false)
        {
            SqlCommand cmdkguncelle = new SqlCommand("select * from  haberTbl where haberID='" + haberID + "'", baglan.baglan());
            SqlDataReader drkguncelle = cmdkguncelle.ExecuteReader();
            DataTable dtkguncelle = new DataTable("tablo");
            dtkguncelle.Load(drkguncelle);
            //if (dt != null && dt.Rows.Count > 0) { 
            DataRow row = dtkguncelle.Rows[0];
            TextHaberGuncelleAd.Text = row["habarAdi"].ToString();
            TextHaberguncelleOzet.Text = row["haberOzeti"].ToString();
            CKid.Text = row["haberIcerik"].ToString();
      //}
      //  else
      //  {
      //          Button1.Text = "SATIR YOK";
      //  }
        }

    }





    protected void Button1_Click(object sender, EventArgs e)
    {
        if (FileUpGuncelle.HasFile)
        {
            FileUpGuncelle.SaveAs(Server.MapPath("/resimler/" + FileUpGuncelle.FileName));
            SqlCommand Habguncelle = new SqlCommand("Update haberTbl set  habarAdi='" + TextHaberGuncelleAd.Text + "', haberOzeti='" + TextHaberguncelleOzet.Text + "' , haberResim='/resimler/" + FileUpGuncelle.FileName + "', haberIcerik='" + CKid.Text + "' where haberID='" + haberID + "'", baglan.baglan());
            Habguncelle.ExecuteNonQuery();
            Response.Redirect("yoneticipanel.aspx");
        }
        else
        {
            SqlCommand Haberguncelle = new SqlCommand("Update haberTbl set  habarAdi='" + TextHaberGuncelleAd.Text + "', haberOzeti='" + TextHaberguncelleOzet.Text + "',  haberIcerik='" + CKid.Text + "' where haberID='" + haberID + "'", baglan.baglan());
            Haberguncelle.ExecuteNonQuery();
            Response.Redirect("yoneticipanel.aspx");
        }
    }
}
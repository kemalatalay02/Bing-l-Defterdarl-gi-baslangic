using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class yonetici_paneli_ickontrolGuncelleme : System.Web.UI.Page
{

    veri baglan = new veri();
    string icKontrolID = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        icKontrolID = Request.QueryString["icKontrolID"];
        if (Page.IsPostBack == false)
        {
            SqlCommand cmdkguncelle = new SqlCommand("select * from  icKontrolTbl where icKontrolID='" + icKontrolID + "'", baglan.baglan());
            SqlDataReader drkguncelle = cmdkguncelle.ExecuteReader();
            DataTable dtkguncelle = new DataTable("tablo");
            dtkguncelle.Load(drkguncelle);

            DataRow row = dtkguncelle.Rows[0];
            TextKGuncelleAd.Text = row["kontrolAdi"].ToString();

        }

    }



    protected void BtnKGuncelle_Click(object sender, EventArgs e)
    {
        if (FileUpKGuncelle.HasFile)
        {
            FileUpKGuncelle.SaveAs(Server.MapPath("/dosyalar/" + FileUpKGuncelle.FileName));
            SqlCommand fromguncelle = new SqlCommand("Update icKontrolTbl set  kontrolAdi='" + TextKGuncelleAd.Text + "',  icerik='/dosyalar/" + FileUpKGuncelle.FileName + "'  where icKontrolID = '" + icKontrolID + "'", baglan.baglan());
            fromguncelle.ExecuteNonQuery();
            Response.Redirect("yoneticipanel.aspx");
        }
        else
        {
            SqlCommand Haberguncelle = new SqlCommand("Update icKontrolTbl set  kontrolAdi='" + TextKGuncelleAd.Text + "' where icKontrolID='" + icKontrolID + "'", baglan.baglan());
            Haberguncelle.ExecuteNonQuery();
            Response.Redirect("yoneticipanel.aspx");
        }
    }
}

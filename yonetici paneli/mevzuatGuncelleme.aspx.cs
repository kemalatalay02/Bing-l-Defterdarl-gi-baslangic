using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class yonetici_paneli_mevzuatGuncelleme : System.Web.UI.Page
{
    veri baglan = new veri();
    string mezuatID = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        mezuatID = Request.QueryString["mezuatID"];
        if (Page.IsPostBack == false)
        {
            SqlCommand cmdkguncelle = new SqlCommand("select * from  mevzuatTbl where mezuatID='" + mezuatID + "'", baglan.baglan());
            SqlDataReader drkguncelle = cmdkguncelle.ExecuteReader();
            DataTable dtkguncelle = new DataTable("tablo");
            dtkguncelle.Load(drkguncelle);

            DataRow row = dtkguncelle.Rows[0];
            TextMGuncelleAd.Text = row["mevzuatAdi"].ToString();

        }

    }

    protected void BtnMGuncelle_Click(object sender, EventArgs e)
    {
        if (FileUpMGuncelle.HasFile)
        {
            FileUpMGuncelle.SaveAs(Server.MapPath("/dosyalar/" + FileUpMGuncelle.FileName));
            SqlCommand fromguncelle = new SqlCommand("Update mevzuatTbl set  mevzuatAdi='" + TextMGuncelleAd.Text + "',  icerik='/dosyalar/" + FileUpMGuncelle.FileName + "'  where mezuatID = '" + mezuatID + "'", baglan.baglan());
            fromguncelle.ExecuteNonQuery();
            Response.Redirect("yoneticipanel.aspx");
        }
        else
        {
            SqlCommand Haberguncelle = new SqlCommand("Update mevzuatTbl set  mevzuatAdi='" + TextMGuncelleAd.Text + "' where mezuatID='" + mezuatID + "'", baglan.baglan());
            Haberguncelle.ExecuteNonQuery();
            Response.Redirect("yoneticipanel.aspx");
        }
    }
}
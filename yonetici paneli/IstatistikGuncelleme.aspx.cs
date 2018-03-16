using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class yonetici_paneli_IstatistikGuncelleme : System.Web.UI.Page
{
    veri baglan = new veri();
    string IstaID = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        IstaID = Request.QueryString["IstaID"];
        if (Page.IsPostBack == false)
        {
            SqlCommand cmdkguncelle = new SqlCommand("select * from  IstatistikTbl where IstaID='" + IstaID + "'", baglan.baglan());
            SqlDataReader drkguncelle = cmdkguncelle.ExecuteReader();
            DataTable dtkguncelle = new DataTable("tablo");
            dtkguncelle.Load(drkguncelle);

            DataRow row = dtkguncelle.Rows[0];
            TextIstGuncelleAd.Text = row["IstaAdi"].ToString();

        }

    }

    protected void BtnIstGuncelle_Click(object sender, EventArgs e)
    {

        if (FileUpIstGuncelle.HasFile)
        {
            FileUpIstGuncelle.SaveAs(Server.MapPath("/dosyalar/" + FileUpIstGuncelle.FileName));
            SqlCommand fromguncelle = new SqlCommand("Update IstatistikTbl set  IstaAdi='" + TextIstGuncelleAd.Text + "',  IstaDosya='/dosyalar/" + FileUpIstGuncelle.FileName + "'  where IstaID = '" + IstaID + "'", baglan.baglan());
            fromguncelle.ExecuteNonQuery();
            Response.Redirect("yoneticipanel.aspx");
        }
        else
        {
            SqlCommand Haberguncelle = new SqlCommand("Update IstatistikTbl set  IstaAdi='" + TextIstGuncelleAd.Text + "' where IstaID='" + IstaID + "'", baglan.baglan());
            Haberguncelle.ExecuteNonQuery();
            Response.Redirect("yoneticipanel.aspx");
        }
    }
}
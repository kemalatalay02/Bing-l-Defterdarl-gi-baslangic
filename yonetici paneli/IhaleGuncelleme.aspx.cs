using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class yonetici_paneli_IhaleGuncelleme : System.Web.UI.Page
{
    veri baglan = new veri();
    string ihaleID = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        ihaleID = Request.QueryString["ihaleID"];

        if (Page.IsPostBack == false)
        {
            SqlCommand cmdkguncelle = new SqlCommand("select * from  ihaleTbl where ihaleID='" + ihaleID + "'", baglan.baglan());
            SqlDataReader drkguncelle = cmdkguncelle.ExecuteReader();
            DataTable dtkguncelle = new DataTable("tablo");
            dtkguncelle.Load(drkguncelle);

            DataRow row = dtkguncelle.Rows[0];
            TextIhGuncelleAd.Text = row["ihaleAdi"].ToString();
            TextIhguncelleOzet.Text = row["ihaleOzet"].ToString();
            CKid.Text = row["ihaleIcerik"].ToString();

        }

    }




    

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand Duyguncelle = new SqlCommand("Update ihaleTbl set  ihaleAdi='" + TextIhGuncelleAd.Text + "', ihaleOzet='" + TextIhguncelleOzet.Text + "' , ihaleIcerik='" + CKid.Text + "' where ihaleID='" + ihaleID + "'", baglan.baglan());
            Duyguncelle.ExecuteNonQuery();
            Response.Redirect("yoneticipanel.aspx");


    }
}
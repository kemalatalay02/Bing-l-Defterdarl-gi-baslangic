using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class yonetici_paneli_DuyruGuncelleme : System.Web.UI.Page
{
    veri baglan = new veri();
    string duyruID = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        duyruID = Request.QueryString["duyruID"];

        if (Page.IsPostBack == false)
        {
            SqlCommand cmdkguncelle = new SqlCommand("select * from  duyruTbl where duyruID='" + duyruID + "'", baglan.baglan());
            SqlDataReader drkguncelle = cmdkguncelle.ExecuteReader();
            DataTable dtkguncelle = new DataTable("tablo");
            dtkguncelle.Load(drkguncelle);
         
            DataRow row = dtkguncelle.Rows[0];
            TextDuyGuncelleAd.Text = row["duyruAdi"].ToString();
            TextDuyguncelleOzet.Text = row["duyruOzet"].ToString();
            CKid.Text = row["duyruIcerik"].ToString();
            
        }

    }




    protected void Button1_Click(object sender, EventArgs e)
    {
       
            SqlCommand Duyguncelle = new SqlCommand("Update duyruTbl set  duyruAdi='" + TextDuyGuncelleAd.Text + "', duyruOzet='" + TextDuyguncelleOzet.Text + "' , duyruIcerik='" + CKid.Text + "' where duyruID='" + duyruID + "'", baglan.baglan());
            Duyguncelle.ExecuteNonQuery();
            Response.Redirect("yoneticipanel.aspx");
       
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class yonetici_paneli_FormGuncelleme : System.Web.UI.Page
{
    veri baglan = new veri();
    string formID = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        formID = Request.QueryString["formID"];
        if (Page.IsPostBack == false)
        {
            SqlCommand cmdkguncelle = new SqlCommand("select * from  formTbl where formID='" + formID + "'", baglan.baglan());
            SqlDataReader drkguncelle = cmdkguncelle.ExecuteReader();
            DataTable dtkguncelle = new DataTable("tablo");
            dtkguncelle.Load(drkguncelle);

            DataRow row = dtkguncelle.Rows[0];
            TextFormGuncelleAd.Text = row["formAdi"].ToString();

        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       

        if (FileUpformGuncelle.HasFile)
        {
            FileUpformGuncelle.SaveAs(Server.MapPath("/dosyalar/" + FileUpformGuncelle.FileName));
            SqlCommand fromguncelle = new SqlCommand("Update formTbl set  formAdi='" + TextFormGuncelleAd.Text + "',  formIcerigi='/dosyalar/" + FileUpformGuncelle.FileName + "'  where formID = '" + formID + "'", baglan.baglan());
            fromguncelle.ExecuteNonQuery();
            Response.Redirect("yoneticipanel.aspx");
        }
        else
        {
            SqlCommand Haberguncelle = new SqlCommand("Update formTbl set  formAdi='" + TextFormGuncelleAd.Text + "' where formID='" + formID + "'", baglan.baglan());
            Haberguncelle.ExecuteNonQuery();
            Response.Redirect("yoneticipanel.aspx");
        }
    }
}
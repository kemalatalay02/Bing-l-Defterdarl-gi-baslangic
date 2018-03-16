using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class yonetici_paneli_DuyruEkleme : System.Web.UI.Page
{
    veri baglan = new veri();
    string duyruID = "";
    string islem = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        duyruID = Request.QueryString["duyruID"];
        islem = Request.QueryString["islem"];

        if (islem == "sil")
        {
            SqlCommand cmdsil = new SqlCommand("delete  from duyruTbl where duyruID='" + duyruID + "'", baglan.baglan());
            cmdsil.ExecuteNonQuery();
        }
        if (Page.IsPostBack == false)
        {
            pnlDuyruEkleme.Visible = false;
            PnlDuyruDuz.Visible = false;
        }
        // haber getirme
        SqlCommand cmdDuyrugetir = new SqlCommand("select * from duyruTbl", baglan.baglan());
        SqlDataReader drDuygetir = cmdDuyrugetir.ExecuteReader();
        DataDuyDuz.DataSource = drDuygetir;
        DataDuyDuz.DataBind();
    }

    protected void ButArti_Click(object sender, EventArgs e)
    {
        pnlDuyruEkleme.Visible = true;
    }

    protected void BTNeksi_Click(object sender, EventArgs e)
    {
        pnlDuyruEkleme.Visible = false;
    }

    protected void BtnDuyruEkleme_Click(object sender, EventArgs e)
    {
       
            SqlCommand cmdhaberEkle = new SqlCommand("insert into duyruTbl(duyruAdi,duyruOzet,duyruIcerik) values('" + TextDEA.Text + "','" + TextDEO.Text + "','" + CKid.Text + "')", baglan.baglan());
            cmdhaberEkle.ExecuteNonQuery();
            Response.Redirect("DuyruEkleme.aspx");

      
    }

    protected void BtnDuyruDuzArti_Click(object sender, EventArgs e)
    {
        PnlDuyruDuz.Visible = true;

    }

    protected void BtnDuyruDuzEksi_Click(object sender, EventArgs e)
    {
        PnlDuyruDuz.Visible = false;
    }
}
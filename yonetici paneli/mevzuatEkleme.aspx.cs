using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class yonetici_paneli_mevzuatEkleme : System.Web.UI.Page
{
    veri baglan = new veri();
    string mezuatID = "";
    string islem = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        mezuatID = Request.QueryString["mezuatID"];
        islem = Request.QueryString["islem"];

        if (islem == "sil")
        {
            SqlCommand cmdsil = new SqlCommand("delete  from mevzuatTbl where mezuatID='" + mezuatID + "'", baglan.baglan());
            cmdsil.ExecuteNonQuery();
        }
        // mevzuat getirme
        SqlCommand cmdformgetir = new SqlCommand("select * from mevzuatTbl", baglan.baglan());
        SqlDataReader drformgetir = cmdformgetir.ExecuteReader();
        DataMevzuatGetir.DataSource = drformgetir;
        DataMevzuatGetir.DataBind();

        if (Page.IsPostBack == false)
        {
            PnlMevzuatDuz.Visible = false;

            pnlMevzuatEkleme.Visible = false;

        }

    }

    protected void ButMArti_Click(object sender, EventArgs e)
    {
        pnlMevzuatEkleme.Visible = true;
        
    }

    protected void BTNMeksi_Click(object sender, EventArgs e)
    {
        pnlMevzuatEkleme.Visible = false;
        
    }

    protected void BtnMevzuatEkleme_Click(object sender, EventArgs e)
    {
       
        if (FileUpMEkleme.HasFile)
        {
            FileUpMEkleme.SaveAs(Server.MapPath("/dosyalar/" + FileUpMEkleme.FileName));
            SqlCommand cmdhaberEkle = new SqlCommand("insert into mevzuatTbl(mevzuatAdi,icerik) values('" + TextMEA.Text + "','/dosyalar" + FileUpMEkleme.FileName + "')", baglan.baglan());
            cmdhaberEkle.ExecuteNonQuery();
            Response.Redirect("yoneticipanel.aspx");

        }
        else
        {
            BtnMevzuatEkleme.Text = "Lütfen Dosya Ekleyiniz...";
        }
    }

    protected void BtnKDuzArti_Click(object sender, EventArgs e)
    {
        PnlMevzuatDuz.Visible = true;

    }

    protected void BtnKDuzEksi_Click(object sender, EventArgs e)
    {
        PnlMevzuatDuz.Visible = false;
    }
}
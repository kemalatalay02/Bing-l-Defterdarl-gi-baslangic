using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class yonetici_paneli_istatistikEkleme : System.Web.UI.Page
{
    veri baglan = new veri();
    string IstaID = "";
    string islem = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            pnlIstaEkleme.Visible = false;
            PnlIstaDuz.Visible = false;


        }
        IstaID = Request.QueryString["IstaID"];
        islem = Request.QueryString["islem"];

        if (islem == "sil")
        {
            SqlCommand cmdsil = new SqlCommand("delete  from IstatistikTbl where IstaID='" + IstaID + "'", baglan.baglan());
            cmdsil.ExecuteNonQuery();
        }
        // İSTATİSTİK getirme
        SqlCommand cmdIsgetir = new SqlCommand("select * from IstatistikTbl", baglan.baglan());
        SqlDataReader drformgetir = cmdIsgetir.ExecuteReader();
        DataIstaGetir.DataSource = drformgetir;
        DataIstaGetir.DataBind();
    }

    protected void ButFArti_Click(object sender, EventArgs e)
    {
        pnlIstaEkleme.Visible = true;
    }

    protected void BTNFeksi_Click(object sender, EventArgs e)
    {
        pnlIstaEkleme.Visible = false;
        
    }

    protected void istaEkleme_Click(object sender, EventArgs e)
    {
        if (FileUpstaEkleme.HasFile)
        {
            FileUpstaEkleme.SaveAs(Server.MapPath("/dosyalar/" + FileUpstaEkleme.FileName));
            SqlCommand cmdhaberEkle = new SqlCommand("insert into IstatistikTbl(IstaAdi,IstaDosya) values('" + TextIEA.Text + "','/dosyalar" + FileUpstaEkleme.FileName + "')", baglan.baglan());
            cmdhaberEkle.ExecuteNonQuery();
            Response.Redirect("yoneticipanel.aspx");

        }
        else
        {
            istaEkleme.Text = "Lütfen Dosya Ekleyiniz...";
        }
    }

    protected void BtnFormDuzArti_Click(object sender, EventArgs e)
    {
        PnlIstaDuz.Visible = true;
    }

    protected void BtnFormDuzEksi_Click(object sender, EventArgs e)
    {
        PnlIstaDuz.Visible = false;
    }
}
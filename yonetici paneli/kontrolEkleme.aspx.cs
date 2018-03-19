using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class yonetici_paneli_kontrolEkleme : System.Web.UI.Page
{
    veri baglan = new veri();
    string icKontrolID = "";
    string islem = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        icKontrolID = Request.QueryString["icKontrolID"];
        islem = Request.QueryString["islem"];

        if (islem == "sil")
        {
            SqlCommand cmdsil = new SqlCommand("delete  from icKontrolTbl where icKontrolID='" + icKontrolID + "'", baglan.baglan());
            cmdsil.ExecuteNonQuery();
        }
        // ickontrol getirme
        SqlCommand cmdformgetir = new SqlCommand("select * from icKontrolTbl", baglan.baglan());
        SqlDataReader drformgetir = cmdformgetir.ExecuteReader();
        DataKontrolGetir.DataSource = drformgetir;
        DataKontrolGetir.DataBind();

        if (Page.IsPostBack == false)
        {
            pnlKontrolEkleme.Visible = false;

            PnlKontrolDuz.Visible = false;

        }
    }

   

    protected void ButKArti_Click(object sender, EventArgs e)
    {
 pnlKontrolEkleme.Visible = true;
    }

    protected void BTNKeksi_Click(object sender, EventArgs e)
    {
        pnlKontrolEkleme.Visible = false;
    }





    

    protected void BtnKontrolEkleme_Click(object sender, EventArgs e)
    {

        if (FileUpKEkleme.HasFile)
        {
            FileUpKEkleme.SaveAs(Server.MapPath("/dosyalar/" + FileUpKEkleme.FileName));
            SqlCommand cmdhaberEkle = new SqlCommand("insert into icKontrolTbl(kontrolAdi,icerik) values('" + TextKEA.Text + "','/dosyalar" + FileUpKEkleme.FileName + "')", baglan.baglan());
            cmdhaberEkle.ExecuteNonQuery();
            Response.Redirect("yoneticipanel.aspx");

        }
        else
        {
            BtnKontrolEkleme.Text = "Lütfen Resim Ekleyiniz...";
        }
    }

    protected void BtnKDuzArti_Click(object sender, EventArgs e)
    {
        PnlKontrolDuz.Visible = true;
    }

    protected void BtnKDuzEksi_Click(object sender, EventArgs e)
    {
        PnlKontrolDuz.Visible = false;
    }
}
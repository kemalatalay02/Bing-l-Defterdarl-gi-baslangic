using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class yonetici_paneli_haberEkleme : System.Web.UI.Page
{
    veri baglan = new veri();
    string haberID = "";
    string islem = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        haberID = Request.QueryString["haberID"];
        islem = Request.QueryString["islem"];

        if (islem == "sil")
        {
            SqlCommand cmdsil = new SqlCommand("delete  from haberTbl where haberID='" + haberID + "'",baglan.baglan());
            cmdsil.ExecuteNonQuery();
        }
        if (Page.IsPostBack==false)
        {
            pnlHaberEkleme.Visible = false;
            PnlHaberDuz.Visible = false;
        }

        // haber getirme
        SqlCommand cmdhabergetir = new SqlCommand("select * from haberTbl",baglan.baglan());
        SqlDataReader drhabergetir = cmdhabergetir.ExecuteReader();
        DataHaberGetir.DataSource = drhabergetir;
        DataHaberGetir.DataBind();

        
    }

  

    protected void BtnHaberEkleme_Click(object sender, EventArgs e)
    {
        if (FileUpFormEkleme.HasFile)
        {
            FileUpFormEkleme.SaveAs(Server.MapPath("/resimler/" + FileUpFormEkleme.FileName));
            SqlCommand cmdhaberEkle = new SqlCommand("insert into haberTbl(habarAdi,haberOzeti,haberResim,haberIcerik) values('" + TextHEA.Text + "','" + TextHEO.Text + "','/resimler" + FileUpFormEkleme.FileName + "','"+CKid.Text+"')", baglan.baglan());
            cmdhaberEkle.ExecuteNonQuery();
            Response.Redirect("haberEkleme.aspx");

        }
        else
        {
            FileUpHabEkleme.Text = "Lütfen Resim Ekleyiniz...";
        }
    }

    protected void BtnHaberDuzArti_Click(object sender, EventArgs e)
    {
        PnlHaberDuz.Visible = true;
    }

    protected void BtnHaberDuzEksi_Click(object sender, EventArgs e)
    {

        PnlHaberDuz.Visible = false;
    }

    protected void ButArti_Click1(object sender, EventArgs e)
    {
        pnlHaberEkleme.Visible = true;
    }

    protected void BTNeksi_Click1(object sender, EventArgs e)
    {
        pnlHaberEkleme.Visible = false;
    }
}
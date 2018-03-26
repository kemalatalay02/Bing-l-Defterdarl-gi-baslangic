using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class yonetici_paneli_hakimizde : System.Web.UI.Page
{
    veri baglan = new veri();
    string hakimizdaID = "";
    string islem = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        hakimizdaID = Request.QueryString["hakimizdaID"];
        islem = Request.QueryString["islem"];

        if (islem == "sil")
        {
            SqlCommand cmdsil = new SqlCommand("delete  from hakimizdaTbl where hakimizdaID='" + hakimizdaID + "'", baglan.baglan());
            cmdsil.ExecuteNonQuery();
        }
        if (Page.IsPostBack == false)
        {
            pnlHakEkleme.Visible = false;
            PnlHakDuz.Visible = false;
        }

        // hakimizda getirme
        SqlCommand cmdhabergetir = new SqlCommand("select * from hakimizdaTbl", baglan.baglan());
        SqlDataReader drhabergetir = cmdhabergetir.ExecuteReader();
        DataHaKGetir.DataSource = drhabergetir;
        DataHaKGetir.DataBind();


    }





    protected void FileUpHabEkleme_Click(object sender, EventArgs e)
    {
        if (FileUpDefEkleme.HasFile)
        {
            FileUpDefEkleme.SaveAs(Server.MapPath("/resimler/" + FileUpDefEkleme.FileName));
            SqlCommand cmdhaberEkle = new SqlCommand("insert into hakimizdaTbl(defterdarimiz,hakimizda,GorevMisyon,resim) values('" + TextHakEA.Text + "','" + TextGEO.Text + "','" + TextDef.Text + "','/resimler/" + FileUpDefEkleme.FileName + "')", baglan.baglan());
            cmdhaberEkle.ExecuteNonQuery();
            Response.Redirect("yoneticipanel.aspx");

        }
        else
        {
            FileUpHabEkleme.Text = "Lütfen Resim Ekleyiniz...";
        }
    }

    protected void ButhakArti_Click(object sender, EventArgs e)
    {
        pnlHakEkleme.Visible = true;
    }

    protected void BtnHakeksi_Click(object sender, EventArgs e)
    {
        pnlHakEkleme.Visible = false;
    }

    protected void BtnHAKDuzArti_Click(object sender, EventArgs e)
    {
        PnlHakDuz.Visible = true;
    }

    protected void BtnHakDuzEksi_Click(object sender, EventArgs e)
    {
        PnlHakDuz.Visible = false;
    }
}



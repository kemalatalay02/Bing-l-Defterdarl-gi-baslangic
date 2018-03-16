using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class yonetici_paneli_formEkleme : System.Web.UI.Page
{
    veri baglan = new veri();
    string formID = "";
    string islem = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        formID = Request.QueryString["formID"];
        islem = Request.QueryString["islem"];

        if (islem == "sil")
        {
            SqlCommand cmdsil = new SqlCommand("delete  from formTbl where formID='" + formID + "'", baglan.baglan());
            cmdsil.ExecuteNonQuery();
        }
        if (Page.IsPostBack == false)
        {
            pnlformEkleme.Visible = false;
            PnlFormDuz.Visible = false;


        }
        // form getirme
        SqlCommand cmdformgetir = new SqlCommand("select * from formTbl", baglan.baglan());
        SqlDataReader drformgetir = cmdformgetir.ExecuteReader();
        DataFofmGetir.DataSource = drformgetir;
        DataFofmGetir.DataBind();
    }



    protected void FileUpFormEkleme_Click(object sender, EventArgs e)
    {
        if (FileUpFEkleme.HasFile)
        {
            FileUpFEkleme.SaveAs(Server.MapPath("/dosyalar/" + FileUpFEkleme.FileName));
            SqlCommand cmdhaberEkle = new SqlCommand("insert into formTbl(formAdi,formIcerigi) values('" + TextfEA.Text + "','/dosyalar" + FileUpFEkleme.FileName + "')", baglan.baglan());
            cmdhaberEkle.ExecuteNonQuery();
            Response.Redirect("yoneticipanel.aspx");

        }
        else
        {
            FileUpFormEkleme.Text = "Lütfen Resim Ekleyiniz...";
        }
    }


    protected void ButFArti_Click(object sender, EventArgs e)
    {
        pnlformEkleme.Visible = true;
    }

    protected void BTNFeksi_Click(object sender, EventArgs e)
    {
        pnlformEkleme.Visible = false;
    }

    protected void BtnFormDuzEksi_Click(object sender, EventArgs e)
    {
        PnlFormDuz.Visible = false;
    }

    protected void BtnFormDuzArti_Click(object sender, EventArgs e)
    {
        PnlFormDuz.Visible = true;
    }
}

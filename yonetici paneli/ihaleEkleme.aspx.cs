using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class yonetici_paneli_ihaleEkleme : System.Web.UI.Page
{
    veri baglan = new veri();
    string ihaleID = "";
    string islem = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        ihaleID = Request.QueryString["ihaleID"];
        islem = Request.QueryString["islem"];

        if (islem == "sil")
        {
            SqlCommand cmdsil = new SqlCommand("delete  from ihaleTbl where ihaleID='" + ihaleID + "'", baglan.baglan());
            cmdsil.ExecuteNonQuery();
        }
        if (Page.IsPostBack == false)
        {
           
            pnlIhaleEkleme.Visible = false;
            PnlIhaleDuz.Visible = false;    

        }
        // haber getirme
        SqlCommand cmdDuyrugetir = new SqlCommand("select * from ihaleTbl", baglan.baglan());
        SqlDataReader drDuygetir = cmdDuyrugetir.ExecuteReader();
        DataIhaleDuz.DataSource = drDuygetir;
        DataIhaleDuz.DataBind();
    }




  

    protected void BtnDuyruEkleme_Click(object sender, EventArgs e)
    {
        SqlCommand cmdIhaleEkle = new SqlCommand("insert into ihaleTbl(ihaleAdi,ihaleOzet,ihaleIcerik) values('" + TextIEA.Text + "','" + TextIEO.Text + "','" + CKid.Text + "')", baglan.baglan());
        cmdIhaleEkle.ExecuteNonQuery();
        Response.Redirect("DuyruEkleme.aspx");

    }

    protected void BtnIhaleDuzArti_Click(object sender, EventArgs e)
    {
        PnlIhaleDuz.Visible = true;
    }

    protected void BtnİhaleDuzEksi_Click(object sender, EventArgs e)
    {
        PnlIhaleDuz.Visible = false;
    }

   

    protected void ButIhaleArti_Click1(object sender, EventArgs e)
    {
        pnlIhaleEkleme.Visible = true;

    }

    protected void BTNIhaleeksi_Click1(object sender, EventArgs e)
    {
        pnlIhaleEkleme.Visible = false;

    }
}
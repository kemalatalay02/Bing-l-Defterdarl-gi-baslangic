using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class DuyruDetay : System.Web.UI.Page
{
    veri baglan = new veri();
    String duyruID = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        duyruID = Request.QueryString["duyruID"];
        SqlCommand habdetay = new SqlCommand("select * from duyruTbl where  duyruID='" + duyruID + "'", baglan.baglan());
        SqlDataReader drhabdet = habdetay.ExecuteReader();
        DataDuyruDetay.DataSource = drhabdet;
        DataDuyruDetay.DataBind();

    }
}
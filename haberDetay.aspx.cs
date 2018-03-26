using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class haberDetay : System.Web.UI.Page
{
    veri baglan = new veri();
    String haberID = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        haberID = Request.QueryString["haberID"];
        SqlCommand habdetay = new SqlCommand("select * from haberTbl where  haberID='" + haberID + "'", baglan.baglan());
        SqlDataReader drhabdet = habdetay.ExecuteReader();
        DataHabDetay.DataSource = drhabdet;
        DataHabDetay.DataBind();
        
    }
}
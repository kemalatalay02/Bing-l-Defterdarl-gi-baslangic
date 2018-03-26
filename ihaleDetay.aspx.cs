using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class ihaleDetay : System.Web.UI.Page
{
    veri baglan = new veri();
    String ihaleID = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        ihaleID = Request.QueryString["ihaleID"];
        SqlCommand habdetay = new SqlCommand("select * from ihaleTbl where  ihaleID='" + ihaleID + "'", baglan.baglan());
        SqlDataReader drhabdet = habdetay.ExecuteReader();
        DataIhaleDetay.DataSource = drhabdet;
        DataIhaleDetay.DataBind();

    }
}
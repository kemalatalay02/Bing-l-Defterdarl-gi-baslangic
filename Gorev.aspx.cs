using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Gorev : System.Web.UI.Page
{
    veri baglan = new veri();
    protected void Page_Load(object sender, EventArgs e)
    {

        SqlCommand defG = new SqlCommand(" select * from hakimizdaTbl", baglan.baglan());
        SqlDataReader drdefG = defG.ExecuteReader();
        DataLGorevbilgi.DataSource = drdefG;
        DataLGorevbilgi.DataBind();
    }
}
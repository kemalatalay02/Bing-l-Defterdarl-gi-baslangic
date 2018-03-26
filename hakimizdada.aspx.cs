using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class hakimizdada : System.Web.UI.Page
{
    veri baglan = new veri();
    protected void Page_Load(object sender, EventArgs e)
    {

        SqlCommand defHAK = new SqlCommand(" select * from hakimizdaTbl", baglan.baglan());
        SqlDataReader drHAK = defHAK.ExecuteReader();
        DataLHAKbilgi.DataSource = drHAK;
        DataLHAKbilgi.DataBind();
    }
}
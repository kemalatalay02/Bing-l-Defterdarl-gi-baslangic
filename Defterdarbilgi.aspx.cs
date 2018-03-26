using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Defterdarbilgi : System.Web.UI.Page
{
    veri baglan = new veri();

    protected void Page_Load(object sender, EventArgs e)
    {

        SqlCommand def = new SqlCommand(" select * from hakimizdaTbl",baglan.baglan());
        SqlDataReader drdef = def.ExecuteReader();
        DataLDefbilgi.DataSource = drdef;
        DataLDefbilgi.DataBind();
    }
}
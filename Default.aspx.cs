using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class _Default : System.Web.UI.Page
{
    veri baglan = new veri();
    protected void Page_Load(object sender, EventArgs e)
    {
        
        // habercekme
        SqlCommand haber = new SqlCommand("select * from haberTbl", baglan.baglan());
        SqlDataReader drhaber = haber.ExecuteReader();
        DataLHabercekme.DataSource = drhaber;
        DataLHabercekme.DataBind();
    }
}
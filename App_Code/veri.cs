using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for veri
/// </summary>
public class veri
{
    public veri()
    {
      
}
    public SqlConnection baglan()
    {

        SqlConnection baglanti = new SqlConnection("Data Source=.; Initial Catalog=bingol_defterdarligi; Integrated Security=true;");
        baglanti.Open();
        SqlConnection.ClearAllPools();
        SqlConnection.ClearPool(baglanti);
        return (baglanti);
    }
}
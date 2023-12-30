using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Hakkımızda : System.Web.UI.Page
{
    sqlsinif bgl = new sqlsinif();

    protected void Page_Load(object sender, EventArgs e)
    {
        SqlCommand komut = new SqlCommand("select * from tbl_hakkımızda",bgl.baglanti());
        SqlDataReader dr = komut.ExecuteReader();
        DataList3.DataSource = dr;
        DataList3.DataBind();
        
    }
}
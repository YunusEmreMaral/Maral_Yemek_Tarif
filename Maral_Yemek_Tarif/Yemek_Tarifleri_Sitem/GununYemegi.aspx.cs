using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class GununYemegi : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        sqlsinif bgl = new sqlsinif();
        SqlCommand komut = new SqlCommand("select * from tbl_yemekler where durum=1", bgl.baglanti());
        SqlDataReader oku = komut.ExecuteReader();
        DataList2.DataSource = oku;
        DataList2.DataBind();
    }
}
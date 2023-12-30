using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MesajlarAdmin : System.Web.UI.Page
{
    sqlsinif bgl = new sqlsinif();

    protected void Page_Load(object sender, EventArgs e)
    {

        Panel1.Visible = false;

        SqlCommand komut = new SqlCommand("select * from tbl_mesajlar", bgl.baglanti());
        SqlDataReader dr = komut.ExecuteReader();
        DataList2.DataSource = dr;
        DataList2.DataBind();

    }

    

    protected void Button2_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Panel1.Visible = false;

    }
}
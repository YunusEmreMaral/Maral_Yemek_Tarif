using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class YorumlarAdmin : System.Web.UI.Page
{
    sqlsinif bgl = new sqlsinif();
    protected void Page_Load(object sender, EventArgs e)
    {

        Panel1.Visible = false;
        Panel2.Visible = false;


        SqlCommand komut = new SqlCommand("select * from tbl_yorumlar where yorumonay=1", bgl.baglanti());
        SqlDataReader dr = komut.ExecuteReader();
        DataList2.DataSource = dr;
        DataList2.DataBind();

        SqlCommand komut2 = new SqlCommand("select * from tbl_yorumlar where yorumonay=0", bgl.baglanti());
        SqlDataReader dr2 = komut2.ExecuteReader();
        DataList1.DataSource = dr2;
        DataList1.DataBind();

    }

   
    protected void Button2_Click2(object sender, EventArgs e)
    {
        Panel1.Visible = true;

    }

    protected void Button1_Click2(object sender, EventArgs e)
    {
        Panel1.Visible = false;

    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        Panel2.Visible = false;

    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Panel2.Visible = true;

    }
}
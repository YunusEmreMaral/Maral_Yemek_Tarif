using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Kategoriler : System.Web.UI.Page
{
    sqlsinif bgl = new sqlsinif();
    string id = "";
    string islem = "";


    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            id = Request.QueryString["kategoriid"];
            islem = Request.QueryString["islem"];

        }

        SqlCommand komut = new SqlCommand("Select * from tbl_kategoriler", bgl.baglanti());
        SqlDataReader dr = komut.ExecuteReader();
        DataList2.DataSource = dr;
        DataList2.DataBind();

        if (islem == "sil")
        {
            SqlCommand komutsil = new SqlCommand("Delete from tbl_kategoriler where kategoriid=@p1", bgl.baglanti());
            komutsil.Parameters.AddWithValue("@p1", id);
            komutsil.ExecuteNonQuery();
            bgl.baglanti().Close();
        }

        Panel1.Visible = false;
        panel2.Visible = false;
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Panel1.Visible = false;
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        panel2.Visible = true;
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        panel2.Visible = false;

    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        SqlCommand komut2 = new SqlCommand("INSERT INTO tbl_kategoriler (kategoriad) VALUES (@p1)", bgl.baglanti());
        komut2.Parameters.AddWithValue("@p1", TextBox1.Text);
        komut2.ExecuteNonQuery();
        bgl.baglanti().Close();

    }
}

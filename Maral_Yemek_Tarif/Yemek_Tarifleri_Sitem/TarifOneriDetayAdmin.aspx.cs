using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class TarifOneriDetayAdmin : System.Web.UI.Page
{
    sqlsinif bgl = new sqlsinif();
    string id = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        id = Request.QueryString["tarifid"];
        if (Page.IsPostBack == false)
        {

        
        SqlCommand komut = new SqlCommand("select * from tbl_tarifler where tarifid=@p1", bgl.baglanti());
        komut.Parameters.AddWithValue("@p1", id);
        SqlDataReader dr = komut.ExecuteReader();
        while (dr.Read())
        {
            ad.Text = dr[1].ToString();
            malzeme.Text = dr[2].ToString();
            yapılıs.Text = dr[3].ToString();
            oneren.Text = dr[5].ToString();
            mail.Text = dr[6].ToString();
        }
        bgl.baglanti().Close();
        }

        SqlCommand komut2 = new SqlCommand("select * from tbl_kategoriler", bgl.baglanti());
        SqlDataReader dr2 = komut2.ExecuteReader();
        DropDownList1.DataTextField = "Kategoriad";
        DropDownList1.DataValueField = "kategoriid";
        DropDownList1.DataSource = dr2;
        DropDownList1.DataBind();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand komut = new SqlCommand("update tbl_tarifler set tarifdurum=1 where tarifid=@p1", bgl.baglanti());
        komut.Parameters.AddWithValue("@p1", id);
        komut.ExecuteNonQuery();
        bgl.baglanti().Close();

        SqlCommand komut2 = new SqlCommand("insert into tbl_yemekler (yemekad,yemekmalzeme," +
            "yemektarif,kategoriid) values(@p1,@p2,@p3,@p5)", bgl.baglanti());
        komut2.Parameters.AddWithValue("@p1", ad.Text);
        komut2.Parameters.AddWithValue("@p2", malzeme.Text);
        komut2.Parameters.AddWithValue("@p3", yapılıs.Text);
        komut2.Parameters.AddWithValue("@p5", DropDownList1.SelectedValue);
        komut2.ExecuteNonQuery();
        bgl.baglanti().Close();
        
    }
}
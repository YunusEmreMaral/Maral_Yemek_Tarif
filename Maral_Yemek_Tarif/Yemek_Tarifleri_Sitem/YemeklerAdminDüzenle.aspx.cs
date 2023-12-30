using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class YemeklerAdminDüzenle : System.Web.UI.Page
{
    sqlsinif bgl = new sqlsinif();
    string id2 = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        id2 = Request.QueryString["yemekid"];
        if (Page.IsPostBack == false)
        {



            SqlCommand komut = new SqlCommand("Select * from tbl_yemekler where yemekid=@p1", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", id2);
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {

                ad.Text = dr[1].ToString();
                malzeme.Text = dr[2].ToString();
                tarif.Text = dr[3].ToString();
            }
            bgl.baglanti().Close();
        }


        if (Page.IsPostBack == false)
        {
            //KATEGORİ LİSTE
            SqlCommand komut2 = new SqlCommand("select * from tbl_kategoriler", bgl.baglanti());
            SqlDataReader dr2 = komut2.ExecuteReader();
            DropDownList1.DataTextField = "Kategoriad";
            DropDownList1.DataValueField = "kategoriid";
            DropDownList1.DataSource = dr2;
            DropDownList1.DataBind();
        }
    }
        
    protected void Button1_Click(object sender, EventArgs e)
    {
        FileUpload1.SaveAs(Server.MapPath("/resimler/" + FileUpload1.FileName));

        SqlCommand komut = new SqlCommand("update tbl_yemekler set yemekad=@p1,yemekmalzeme=@p2," +
            "yemektarif=@p3,kategoriid=@p4,yemekresim=@p6 where yemekid=@p5", bgl.baglanti());
        komut.Parameters.AddWithValue("@p1", ad.Text);  
        komut.Parameters.AddWithValue("@p2", malzeme.Text);
        komut.Parameters.AddWithValue("@p3", tarif.Text);
        komut.Parameters.AddWithValue("@p4",DropDownList1.SelectedValue);
        komut.Parameters.AddWithValue("@p5", id2);
        komut.Parameters.AddWithValue("@p6","~/resimler/"+FileUpload1.FileName);
        komut.ExecuteNonQuery();
        bgl.baglanti().Close();

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        //hepsini false yapma
        SqlCommand komut = new SqlCommand("update tbl_yemekler set durum=0 ", bgl.baglanti());
        komut.ExecuteNonQuery();
        bgl.baglanti().Close();
        // yeni yemek belirleme
        SqlCommand komut2 = new SqlCommand("update tbl_yemekler set durum=1 where yemekid=@p1", bgl.baglanti());
        komut2.Parameters.AddWithValue("@p1", id2);
        komut2.ExecuteNonQuery();
        bgl.baglanti().Close();
    }
}
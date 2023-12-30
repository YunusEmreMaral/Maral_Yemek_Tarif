using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class YemeklerAdmin : System.Web.UI.Page
{
    sqlsinif bgl = new sqlsinif();
    string islem="";
    string id="";
    protected void Page_Load(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        panel2.Visible = false;

        if (Page.IsPostBack == false)
        {
            id = Request.QueryString["yemekid"];
            islem = Request.QueryString["islem"];

            

            //KATEGORİ LİSTE
            SqlCommand komut2 = new SqlCommand("select * from tbl_kategoriler", bgl.baglanti());
            SqlDataReader dr2 = komut2.ExecuteReader();
            DropDownList1.DataTextField = "Kategoriad";
            DropDownList1.DataValueField = "kategoriid";
            DropDownList1.DataSource = dr2;
            DropDownList1.DataBind();
        }

        SqlCommand komut = new SqlCommand("select * from tbl_yemekler", bgl.baglanti());
        SqlDataReader dr = komut.ExecuteReader();
        DataList2.DataSource = dr;
        DataList2.DataBind();

        if (islem == "Sil")
        {
            SqlCommand komutsil = new SqlCommand("Delete from tbl_yemekler where yemekid=@p1",bgl.baglanti());
            komutsil.Parameters.AddWithValue("@p1",id);
            komutsil.ExecuteNonQuery();
            bgl.baglanti().Close();
        }

        
        

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
        FileUpload1.SaveAs(Server.MapPath("/resimler/" + FileUpload1.FileName));

        SqlCommand komut = new SqlCommand("insert into tbl_yemekler (yemekad,yemekmalzeme,yemektarif,kategoriid,yemekresim) values (@p1,@p2,@p3,@p4,@p5)", bgl.baglanti());
        komut.Parameters.AddWithValue("@p1", ad.Text);
        komut.Parameters.AddWithValue("@p2", malzeme.Text);
        komut.Parameters.AddWithValue("@p3", tarif.Text);
        komut.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
        komut.Parameters.AddWithValue("@p5", "~/resimler/" + FileUpload1.FileName);

        komut.ExecuteNonQuery();
        bgl.baglanti().Close();

        //kategori sayısı arttırma
        SqlCommand komut2 = new SqlCommand("update tbl_kategoriler set kategoriadet=kategoriadet+1 where kategoriid=@p1", bgl.baglanti());
        komut2.Parameters.AddWithValue("@p1", DropDownList1.SelectedValue);
        komut2.ExecuteNonQuery();
        bgl.baglanti().Close();
    }
}
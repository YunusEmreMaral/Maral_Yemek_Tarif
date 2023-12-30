using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class iletisim : System.Web.UI.Page
{
    sqlsinif bgl = new sqlsinif();

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand komut = new SqlCommand("insert into tbl_mesajlar (mesajgonderen,mesajbaslik,mesajmail,mesajicerik) values (@p1,@p2,@p3,@p4)", bgl.baglanti());
        komut.Parameters.AddWithValue("@p1", ad0.Text);
        komut.Parameters.AddWithValue("@p2", konuu0.Text);
        komut.Parameters.AddWithValue("@p3", mail0.Text);
        komut.Parameters.AddWithValue("@p4", mesaj0.Text);
        komut.ExecuteNonQuery();
        bgl.baglanti().Close();
        Response.Write("Mesajınız alınmıştır!");
    }

    protected void mesaj_TextChanged(object sender, EventArgs e)
    {

    }
}
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class TarifOner : System.Web.UI.Page
{
    sqlsinif bgl = new sqlsinif();

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        flersim.SaveAs(Server.MapPath("/resimler/" + flersim.FileName));


        SqlCommand komut = new SqlCommand("insert into Tbl_Tarifler (TarifAd,TarifMalzeme,TarifYapilis,TarifResim,TarifSahip,TarifSahipMail) values (@t1,@t2,@t3,@t4,@t5,@t6)",bgl.baglanti());
        komut.Parameters.AddWithValue("@t1", txtad.Text);
        komut.Parameters.AddWithValue("@t2",txtmalzeme.Text);
        komut.Parameters.AddWithValue("@t3",txtyap.Text);
        komut.Parameters.AddWithValue("@t4", "~/resimler/" + flersim.FileName);
        komut.Parameters.AddWithValue("@t5", txtoneren.Text);
        komut.Parameters.AddWithValue("@t6", txtmail.Text);
        komut.ExecuteNonQuery();
        bgl.baglanti().Close();
        Response.Write("Tarifiniz Alınmıştır.");


    }
}
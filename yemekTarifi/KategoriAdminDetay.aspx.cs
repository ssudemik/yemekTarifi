using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace yemekTarifi
{
    
    public partial class KategoriAdminDetay : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        string id;

        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["KategoriId"]);
            if (Page.IsPostBack == false) {  //sayfayı yeniden yükleme. sayfayı bir kere yükleyip o halini al üzerine işlem yap.

            SqlCommand cmd = new SqlCommand(" Select * From Tbl_Kategoriler where KategoriId=@p1", bgl.baglanti());
            cmd.Parameters.AddWithValue("@p1", (id > 0 ? id : 0));
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                TextBox1.Text = dr[1].ToString();
                TextBox2.Text = dr[2].ToString();

            }
            bgl.baglanti().Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["KategoriId"]);
            SqlCommand cmd = new SqlCommand("update Tbl_Kategoriler set KategoriAd=@p1, KategoriAdet=@p2 where KategoriId=@p3", bgl.baglanti());
            cmd.Parameters.AddWithValue("@p1", TextBox1.Text);
            cmd.Parameters.AddWithValue("@p2", TextBox2.Text);
            cmd.Parameters.AddWithValue("@p3", (id > 0 ? id : 0));
            cmd.ExecuteNonQuery();
            bgl.baglanti().Close();
            Response.Redirect("Kategoriler.aspx");


        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            // Olay işleyicisi kodu burada yer almalıdır.
        }

    }
}
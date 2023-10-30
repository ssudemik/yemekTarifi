using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace yemekTarifi
{
    public partial class YemekDetay : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        string yemekid = " ";
        protected void Page_Load(object sender, EventArgs e)
        {
            yemekid = Request.QueryString["Yemekid"];

            SqlCommand cmd = new SqlCommand("Select YemekAd From tbl_Yemekler where Yemekid = @p1", bgl.baglanti());
            cmd.Parameters.AddWithValue("@p1", yemekid);
            SqlDataReader reader = cmd.ExecuteReader(); 
            while (reader.Read())
            {
                Label3.Text = reader[0].ToString(); 
            }
            bgl.baglanti().Close();

            // yorumları listeleme
            SqlCommand cmd2 = new SqlCommand("Select * From tbl_Yorumlar where Yemekid = @p2", bgl.baglanti());
            cmd2.Parameters.AddWithValue("@p2", yemekid);
            SqlDataReader reader2 = cmd2.ExecuteReader();
            DataList2.DataSource = reader2;
            DataList2.DataBind();


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("insert into Tbl_Yorumlar (YorumAdSoyad,Yorumicerik ,YorumMail, Yemekid) values (@p1,@p2,@p3,@p4)", bgl.baglanti());
            cmd.Parameters.AddWithValue("@p1", TextBox1.Text);
            cmd.Parameters.AddWithValue("@p2", TextBox2.Text);
            cmd.Parameters.AddWithValue("@p3", TextBox3.Text);
            cmd.Parameters.AddWithValue("@p4", yemekid);
            cmd.ExecuteNonQuery();
            bgl.baglanti().Close();
            Response.Write("('Yorumunuz Alınmışır.')");
        }
    }
}
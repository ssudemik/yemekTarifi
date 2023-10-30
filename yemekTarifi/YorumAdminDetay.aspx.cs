using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace yemekTarifi
{
    public partial class YorumAdminDetay : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        string id = " ";
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["Yorumid"]);

            if(Page.IsPostBack == false) { //sayfayı yeniden yükleme

            SqlCommand cmd = new SqlCommand("Select YorumAdSoyad, YorumMail, Yorumicerik, YemekAd From" +
                " Tbl_Yorumlar inner join Tbl_Yemekler " + // birleştir
                "on Tbl_Yorumlar.Yemekid = Tbl_Yemekler.Yemekid" + // on şart koyma
                " where Yorumid=@p1", bgl.baglanti());
            cmd.Parameters.AddWithValue("@p1", (id > 0 ? id : 0));
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                TextAd.Text = dr[0].ToString();
                TextMail.Text = dr[1].ToString();
                Texticerik.Text = dr[2].ToString();
                TextYemek.Text = dr[3].ToString();


            }
            bgl.baglanti().Close();
            }
        }

        protected void Texticerik_TextChanged(object sender, EventArgs e)
        {

        }

        protected void BtnOnayla_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["Yorumid"]);

            SqlCommand cmd = new SqlCommand("Update Tbl_Yorumlar set Yorumicerik=@p1, YorumOnay=@p2 where Yorumid=@p3", bgl.baglanti());
            cmd.Parameters.AddWithValue("@p1", Texticerik.Text);
            cmd.Parameters.AddWithValue("@p2", "True");
            cmd.Parameters.AddWithValue("@p3", (id > 0 ? id : 0));
            cmd.ExecuteNonQuery();
            bgl.baglanti().Close();

        }
    }
}
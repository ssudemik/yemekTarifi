using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace yemekTarifi
{
    public partial class YemekAdminDetay : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        string id;
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["Yemekid"]);
            if (Page.IsPostBack == false)
            {  //sayfayı yeniden yükleme. sayfayı bir kere yükleyip o halini al üzerine işlem yap.

                SqlCommand cmd = new SqlCommand(" Select * From Tbl_Yemekler where Yemekid=@p1", bgl.baglanti());
                cmd.Parameters.AddWithValue("@p1", (id > 0 ? id : 0));
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    TextBox1.Text = dr[1].ToString();
                    TextBox2.Text = dr[2].ToString();
                    TextBox3.Text = dr[3].ToString();


                }
                bgl.baglanti().Close();

                if (Page.IsPostBack == false)
                {
                    //Kategori listesi
                    SqlCommand cmd2 = new SqlCommand("Select * From Tbl_Kategoriler", bgl.baglanti());
                    SqlDataReader reader2 = cmd2.ExecuteReader();

                    DropDownList1.DataTextField = "KategoriAd";  //dropdpwn ın içinde görünecek alan
                    DropDownList1.DataValueField = "KategoriId";  //kategorinin arka planında çalışacak değeri çeker

                    DropDownList1.DataSource = reader2;
                    DropDownList1.DataBind();
                }
            }

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["Yemekid"]);
            SqlCommand cmd = new SqlCommand("update Tbl_Yemekler set YemekAd=@p1, YmekMalzeme=@p2, YemekTarifi=@p3, KategoriId=@p4 where Yemekid=@p5", bgl.baglanti());
            cmd.Parameters.AddWithValue("@p1", TextBox1.Text);
            cmd.Parameters.AddWithValue("@p2", TextBox2.Text);
            cmd.Parameters.AddWithValue("@p3", TextBox3.Text);
            cmd.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
            cmd.Parameters.AddWithValue("@p5", (id > 0 ? id : 0));
            cmd.ExecuteNonQuery();
            bgl.baglanti().Close();
            Response.Redirect("YemeklerAdmin.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("update Tbl_Yemekler set durum=0", bgl.baglanti()); //ilk önce bütün yemeklerin durumu false'a çevrildi
            cmd.ExecuteNonQuery();
            bgl.baglanti().Close();

            //günün yemeği için id ye göre durumu true yapma
            int id = Convert.ToInt32(Request.QueryString["Yemekid"]);
            SqlCommand cmd2 = new SqlCommand("update Tbl_Yemekler set durum=1 where Yemekid=@p1", bgl.baglanti());
            cmd2.Parameters.AddWithValue("@p1", (id > 0 ? id : 0));
            cmd2.ExecuteNonQuery();
            bgl.baglanti().Close();
            Response.Redirect("GununYemegiAdmin.aspx");
        }
    }
}
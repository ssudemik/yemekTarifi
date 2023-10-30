using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace yemekTarifi
{
    
    public partial class YemeklerAdmin : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();

        string islem = "";
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible = false;
            Panel4.Visible = false;

            if(Page.IsPostBack == false)
            {
                id = Request.QueryString["Yemekid"];
                islem = Request.QueryString["islem"];
                //Kategori listesi
                SqlCommand cmd2 = new SqlCommand("Select * From Tbl_Kategoriler", bgl.baglanti());
                SqlDataReader reader2 = cmd2.ExecuteReader();

                DropDownList1.DataTextField = "KategoriAd";  //dropdpwn ın içinde görünecek alan
                DropDownList1.DataValueField = "KategoriId";  //kategorinin arka planında çalışacak değeri çeker

                DropDownList1.DataSource = reader2;
                DropDownList1.DataBind();
            }


            //Yemek listesi
            SqlCommand cmd = new SqlCommand("Select * From Tbl_Yemekler", bgl.baglanti());
            SqlDataReader reader = cmd.ExecuteReader();
            DataList1.DataSource = reader;
            DataList1.DataBind();

            if(islem == "sil")
            {
                SqlCommand cmd2 = new SqlCommand("Delete From Tbl_Yemekler where Yemekid=@p1", bgl.baglanti());
                cmd2.Parameters.AddWithValue("@p1", id);
                cmd2.ExecuteNonQuery();
                bgl.baglanti().Close();
            }

           
        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            // Olay işleyicisi kodu burada
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }

        protected void Button3_Click1(object sender, EventArgs e)
        {
            Panel4.Visible=true;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel4.Visible = false;
        }

        protected void BtnEkle_Click(object sender, EventArgs e)
        {
            //Yemek ekleme
            SqlCommand cmd = new SqlCommand("insert into Tbl_Yemekler(YemekAd,YmekMalzeme,YemekTarifi,KategoriId) values (@p1,@p2,@p3,@p4)", bgl.baglanti());
            cmd.Parameters.AddWithValue("@p1" , TextBox1.Text);
            cmd.Parameters.AddWithValue("@p2", TextBox2.Text);
            cmd.Parameters.AddWithValue("@p3", TextBox3.Text);
            cmd.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
            cmd.ExecuteNonQuery();
            bgl.baglanti().Close();

            


            //Kategori sayısını arttırma
            SqlCommand cmd2 = new SqlCommand("update Tbl_Kategoriler set KategoriAdet=KategoriAdet+1 where KategoriId=@p1 ", bgl.baglanti());
            cmd2.Parameters.AddWithValue("@p1", DropDownList1.SelectedValue);
            cmd2.ExecuteNonQuery(); //sorguyu çalıştır
            bgl.baglanti().Close(); //bağlantıyı kapat

            Response.Redirect("YemeklerAdmin.aspx");
        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
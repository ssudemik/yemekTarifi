using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace yemekTarifi
{
    public partial class MesajlarAdminDetay : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["Mesajid"];
            SqlCommand cmd = new SqlCommand("Select * From Tbl_Mesajlar where Mesajid=@p1", bgl.baglanti()); //mesaj idsi paremetre 1 olan kayıta göre mesajın detaylarını getirsin
            cmd.Parameters.AddWithValue("@p1", id);
            SqlDataReader reader = cmd.ExecuteReader();
            //data list gibi her hangi bir listeleme aracı kullanılmadığı için döngü ile veriler çekilir
            while (reader.Read()) 
            {
                TextBox2.Text = reader[1].ToString();
                TextBox3.Text = reader[2].ToString();
                TextBox4.Text = reader[3].ToString();
                TextBox1.Text = reader[4].ToString();
            }
            bgl.baglanti().Close();
        }

        
    }
}
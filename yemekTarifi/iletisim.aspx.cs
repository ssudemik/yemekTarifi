using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace yemekTarifi
{
    public partial class iletisim : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("insert into Tbl_Mesajlar (MesajGonderen,MesajMail, MesajBaslik , Mesajicerik) values (@p1,@p2,@p3,@p4)", bgl.baglanti());
            cmd.Parameters.AddWithValue("@p1", TextGonderen.Text);
            cmd.Parameters.AddWithValue("@p2", TextMail.Text);
            cmd.Parameters.AddWithValue("@p3", TextBaslik.Text);
            cmd.Parameters.AddWithValue("@p4", Texticerik.Text);
            cmd.ExecuteNonQuery();
            bgl.baglanti().Close();
            Response.Write("('Mesajınız Alınmışır.')");
        }
    }
}
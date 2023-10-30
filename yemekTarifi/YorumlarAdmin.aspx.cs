using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


namespace yemekTarifi
{
    public partial class YorumlarAdmin : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel3.Visible = false;
            Panel7.Visible = false;

            //onayalı yorumlar
            SqlCommand cmd = new SqlCommand("Select * From Tbl_Yorumlar where YorumOnay=1", bgl.baglanti());
            SqlDataReader read = cmd.ExecuteReader();
            DataList1.DataSource = read;
            DataList1.DataBind();

            //onaysız yorumlar
            SqlCommand cmd2 = new SqlCommand("Select * From Tbl_Yorumlar where YorumOnay=0", bgl.baglanti());
            SqlDataReader read2 = cmd2.ExecuteReader();
            DataList2.DataSource = read2;
            DataList2.DataBind();

        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            // Olay işleyici kodunu buraya ekleyin.
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel3.Visible=true;

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel3.Visible = false;

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel7.Visible = true;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel7.Visible = false;
            
        }
    }

}
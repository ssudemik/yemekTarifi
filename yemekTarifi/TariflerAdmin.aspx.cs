using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace yemekTarifi
{
    public partial class TariflerAdmin : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel3.Visible = false;

            SqlCommand cmd = new SqlCommand("Select * From Tbl_Tarifler", bgl.baglanti());
            SqlDataReader read = cmd.ExecuteReader();
            DataList1.DataSource = read;
            DataList1.DataBind();
        }
        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            // Olay işleyici kodunu buraya ekleyin.
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel3.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel3.Visible = false;
        }
    }
}
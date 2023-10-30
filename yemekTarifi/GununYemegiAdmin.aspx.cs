using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace yemekTarifi
{
    public partial class GununYemegiAdmin : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
       


        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible = false;

            SqlCommand cmd = new SqlCommand("Select * From Tbl_Yemekler", bgl.baglanti());
            SqlDataReader reader = cmd.ExecuteReader();
            DataList1.DataSource = reader;
            DataList1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }
        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            // Olay işleyicisi kodu burada
        }
    }
}
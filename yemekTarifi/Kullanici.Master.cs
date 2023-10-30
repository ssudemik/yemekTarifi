using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace yemekTarifi
{
    public partial class Kullanici : System.Web.UI.MasterPage
    {
        sqlsinif bgl = new sqlsinif();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("Select * From Tbl_Kategoriler", bgl.baglanti());
            SqlDataReader reader = cmd.ExecuteReader();
            DataList1.DataSource = reader;
            DataList1.DataBind();

        }
      


    }
}
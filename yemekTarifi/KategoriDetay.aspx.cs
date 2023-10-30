using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace yemekTarifi
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        string kategoriId = " ";
        protected void Page_Load(object sender, EventArgs e)
        {
            kategoriId = Request.QueryString["kategoriId"];
            SqlCommand cmd = new SqlCommand("Select * From tbl_Yemekler where kategoriId = @p1", bgl.baglanti());
            cmd.Parameters.AddWithValue("@p1", kategoriId);
            SqlDataReader reader = cmd.ExecuteReader();
            DataList2.DataSource = reader;
            DataList2.DataBind();

        }
    }
}
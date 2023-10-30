using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace yemekTarifi
{
    public partial class GununYemegi : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("SELECT * FROM Tbl_Yemekler where Durum = 1", bgl.baglanti());
            SqlDataReader reader = cmd.ExecuteReader();
            DataList2.DataSource = reader;
            DataList2.DataBind();
        }
        
    }
}

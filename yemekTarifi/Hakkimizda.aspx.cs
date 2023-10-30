using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Runtime.Remoting.Messaging;

namespace yemekTarifi
{
    public partial class Hakkimizda : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("Select * From Tbl_Hakkimizda ", bgl.baglanti());
            SqlDataReader reader = cmd.ExecuteReader();
            DataList3.DataSource = reader;
            DataList3.DataBind();
        }
    }
}
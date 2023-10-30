using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace yemekTarifi
{
    public partial class TarifOner : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();

        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand(" INSERT INTO Tbl_Tarifler (TarifAd, TarifMalzeme,Tarifyapilis,TarifResim,TarifSahip,TarifShipMail) values (@t1,@t2,@t3,@t4,@t5,@t6)", bgl.baglanti());
            cmd.Parameters.AddWithValue("@t1", TextTarifAd.Text);
            cmd.Parameters.AddWithValue("@t2", TextMalzemeler.Text);
            cmd.Parameters.AddWithValue("@t3", TextYapilis.Text);
            cmd.Parameters.AddWithValue("@t4", FileUploadResim.FileName);
            cmd.Parameters.AddWithValue("@t5", TextTarifOneren.Text);
            cmd.Parameters.AddWithValue("@t6", TextMailAdresi.Text);
            cmd.ExecuteNonQuery();
            bgl.baglanti().Close();
            Response.Write("('Tarifiniz Alınmışır.')");

        }

        
    }
}
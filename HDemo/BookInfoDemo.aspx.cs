using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace HDemo
{
    public partial class BookInfoDemo : System.Web.UI.Page
    {
        SqlConnection con;
        SqlDataReader dr;
        SqlCommand cmd;
        String s, q;

        protected void Page_Load(object sender, EventArgs e)
        {
            s = WebConfigurationManager.ConnectionStrings["h1"].ConnectionString;
            con = new SqlConnection(s);
            con.Open();

            SqlDataAdapter da = new SqlDataAdapter("select * from BookHistory", con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            Repeater1.DataSource = dt;
            Repeater1.DataBind();

            adminid.Text = Session["ademail"].ToString();
        }
    }
}
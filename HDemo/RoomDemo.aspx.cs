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
    public partial class RoomDemo : System.Web.UI.Page
    {
        SqlConnection con;
        String s;

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                s = WebConfigurationManager.ConnectionStrings["h1"].ConnectionString;
                con = new SqlConnection(s);
                con.Open();
            }
            catch
            {
                Response.Write("<script>alert('Connection not create! Pls try again...');window.location = 'LPDemo.aspx';</script>");
            }

            try
            {
                userid.Text = Session["cmail"].ToString();
            }
            catch
            {
                Response.Write("<script>alert('User Id not found! Pls try again...');window.location = 'LPDemo.aspx';</script>");
            }

            SqlDataAdapter da = new SqlDataAdapter("select * from RoomTb", con);
            DataTable dt = new DataTable();
            //DataSet ds = new DataSet();
            da.Fill(dt);
            Repeater1.DataSource = dt;
            Repeater1.DataBind();
        }
    }
}
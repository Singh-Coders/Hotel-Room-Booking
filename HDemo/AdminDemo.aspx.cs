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
    public partial class AdminDemo : System.Web.UI.Page
    {
        SqlConnection con;
        SqlDataReader dr;
        SqlCommand cmd;
        String s, q;

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                s = WebConfigurationManager.ConnectionStrings["h1"].ConnectionString;
                con = new SqlConnection(s);
                con.Open();
                //Response.Write(con.State.ToString());
            }
            catch
            {
                Response.Write("<script>alert('Connection not create! Pls try again...');</script>");
            }
        }

        protected void adminbtn_Click(object sender, EventArgs e)
        {
            String ademail, adpw;

            ademail = txtademail.Value;
            adpw = txtadpwd.Value;

            q = "select * from AdLoginTb where ademail=@cmail and adpwd=@cpw";
            cmd = new SqlCommand(q, con);
            cmd.Parameters.AddWithValue("@cmail", ademail);
            cmd.Parameters.AddWithValue("@cpw", adpw);
            dr = cmd.ExecuteReader();

            if (dr.HasRows == true)
            {
                Session["ademail"] = ademail;
                Response.Write("<script>alert('Login Success!');window.location = 'AddRoom.aspx';</script>");
            }
            else
            {
                Response.Write("<script>alert('Invalid Login! Pls try again...');window.location = 'AdminDemo.aspx';</script>");
            }
        }
    }
}
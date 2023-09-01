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
    public partial class LPDemo : System.Web.UI.Page
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
                //Response.Write("Exception " + ee);
                Response.Write("<script>alert('Connection not create! Pls try again...');</script>");
            }
        }

        protected void sibtn_Click(object sender, EventArgs e)
        {
            String cmail, cpw;

            cmail = txtcemail.Value;
            cpw = txtcpwd.Value;

            q = "select * from CLoginTb where cemail=@cmail and cpwd=@cpw";
            cmd = new SqlCommand(q, con);
            cmd.Parameters.AddWithValue("@cmail", cmail);
            cmd.Parameters.AddWithValue("@cpw", cpw);
            dr = cmd.ExecuteReader();

            if (dr.HasRows == true)
            {
                Session["cmail"] = cmail;
                Response.Write("<script>alert('Login Success! Welcome " + cmail + "');window.location = 'RoomDemo.aspx';</script>");
            }
            else
            {
                Response.Write("<script>alert('Invalid Login! Pls try again...');window.location = 'LPDemo.aspx';</script>");
            }
        }
    }
}
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
    public partial class SPDemo : System.Web.UI.Page
    {
        SqlConnection con;
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

        protected void subtn_Click(object sender, EventArgs e)
        {
            String cnm, cmail, cpw;

            cnm = txtcnm.Value;
            cmail = txtcemail.Value;
            cpw = txtcpwd.Value;

            try
            {
                q = "INSERT INTO CLoginTb (cname, cemail, cpwd) VALUES(@cnm, @cmail, @cpw)";
                cmd = new SqlCommand(q, con);
                cmd.Parameters.AddWithValue("@cnm", cnm);
                cmd.Parameters.AddWithValue("@cmail", cmail);
                cmd.Parameters.AddWithValue("@cpw", cpw);

                cmd.ExecuteNonQuery();
                //ClientScript.RegisterStartupScript(GetType(), "javascript", "javascript:geekAlert(); ", true);
                Response.Write("<script>alert('Successfully Registered...');window.location = 'LPDemo.aspx';</script>");
            }
            catch
            {
                //Response.Write("Exception " + ee);
                Response.Write("<script>alert('Registration failed! Pls try again...');window.location = 'SPDemo.aspx';</script>");
            }
        }
    }
}
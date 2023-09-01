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
    public partial class CPDemo : System.Web.UI.Page
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

        protected void msgbtn_Click(object sender, EventArgs e)
        {
            String cnm, cmail, msg;

            cnm = txtcname.Value;
            cmail = txtcemail.Value;
            msg = txtmsg.Value;

            try
            {
                q = "INSERT INTO MsgTb (cname, cemail, msg) VALUES(@cnm, @cmail, @msg)";
                cmd = new SqlCommand(q, con);
                cmd.Parameters.AddWithValue("@cnm", cnm);
                cmd.Parameters.AddWithValue("@cmail", cmail);
                cmd.Parameters.AddWithValue("@msg", msg);

                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Message Send!');window.location = 'CPDemo.aspx';</script>");
            }
            catch
            {
                Response.Write("<script>alert('Message not Send! Pls try again...');window.location = 'CPDemo.aspx';</script>");
            }
        }
    }
}
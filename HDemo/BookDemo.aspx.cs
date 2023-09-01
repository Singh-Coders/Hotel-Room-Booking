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
    public partial class BookDemo : System.Web.UI.Page
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
                Response.Write("<script>alert('Connection not create! Pls try again...');window.location = 'LPDemo.aspx';</script>");
            }

            try
            {
                userid.Text = Session["cmail"].ToString();
                txtcemail.Value = Session["cmail"].ToString();
                //txtrtype.Value = Session["rtype"].ToString();//
            }
            catch
            {
                Response.Write("<script>alert('User Id not found! Pls try again...');window.location = 'LPDemo.aspx';</script>");
            }

        }

        protected void bbtn1_Click(object sender, EventArgs e)
        {
            String cname, cemail, cphno, cadd, rtype, checkout, checkin, adultqty, childqty;
            int avlroom;

            cname = txtcname.Value;
            cemail = txtcemail.Value;
            cphno = txtcphno.Value;
            cadd = txtcadd.Value;
            checkin = txtcheckin.Value;
            checkout = txtcheckout.Value;
            rtype = txtrtype.Value;
            adultqty = txtadultqty.Value;
            childqty = txtchildqty.Value;

            q = "select * from BookTb where cemail=@cemail";
            cmd = new SqlCommand(q, con);
            cmd.Parameters.AddWithValue("@cemail", cemail);
            try
            {
                dr = cmd.ExecuteReader();
                if (dr.HasRows == true)
                {
                    Response.Write("<script>alert('You already check-in from this " + cemail + " Id! Pls try with another Id to book more room...');window.location = 'LPDemo.aspx';</script>");
                }
                else
                {
                    dr.Close();

                    q = "select avlroom from RoomTb where rtype=@rtype";
                    cmd = new SqlCommand(q, con);
                    cmd.Parameters.AddWithValue("@rtype", rtype);
                    try
                    {
                        dr = cmd.ExecuteReader();
                        dr.Read();
                        avlroom = Convert.ToInt32(dr["avlroom"]);
                        dr.Close();

                        if (avlroom > 0)
                        {
                            //get the Time of current day
                            var currentDateTime = DateTime.Now;
                            var currentTimeAlone = new TimeSpan(currentDateTime.Hour, currentDateTime.Minute, currentDateTime.Second);

                            q = "INSERT INTO BookTb (cname, cemail, cphno, cadd, checkin, checkout, rtype, adultqty, childqty) VALUES(@cname, @cemail, @cphno, @cadd, @checkin, @checkout, @rtype, @adultqty, @childqty); INSERT INTO BookHistory (cname, cemail, cphno, cadd, checkin, checkout, rtype, adultqty, childqty) VALUES(@cname, @cemail, @cphno, @cadd, @checkin, @checkout, @rtype, @adultqty, @childqty)";

                            cmd = new SqlCommand(q, con);
                            cmd.Parameters.AddWithValue("@cname", cname);
                            cmd.Parameters.AddWithValue("@cemail", cemail);
                            cmd.Parameters.AddWithValue("@cphno", cphno);
                            cmd.Parameters.AddWithValue("@cadd", cadd);
                            cmd.Parameters.AddWithValue("@checkin", Convert.ToDateTime(checkin) + currentTimeAlone);
                            cmd.Parameters.AddWithValue("@checkout", Convert.ToDateTime(checkout) + currentTimeAlone);
                            cmd.Parameters.AddWithValue("@rtype", rtype);
                            cmd.Parameters.AddWithValue("@adultqty", adultqty);
                            cmd.Parameters.AddWithValue("@childqty", childqty);
                            try
                            {
                                cmd.ExecuteNonQuery();

                                Response.Write("<script>alert('Your Room Successfully Booked!');window.location = 'RoomDemo.aspx';</script>");

                                avlroom = avlroom - 1;
                                q = "UPDATE RoomTb SET avlroom=@avlroom where rtype=@rtype";
                                cmd = new SqlCommand(q, con);
                                cmd.Parameters.AddWithValue("@rtype", rtype);
                                cmd.Parameters.AddWithValue("@avlroom", avlroom);
                                cmd.ExecuteNonQuery();
                            }
                            catch
                            {
                                Response.Write("<script>alert('Sorry your Room not Booked! Pls try again...');window.location = 'RoomDemo.aspx';</script>");
                            }
                        }
                        else
                        {
                            Response.Write("<script>alert('No more rooms are available for " + rtype + "! Pls try again with another room type to book room...');</script>");
                        }
                    }
                    catch
                    {
                        Response.Write("<script>alert('" + rtype + " type not found! Pls try again with another room type...');window.location = 'BookDemo.aspx';</script>");
                    }
                }
            }
            catch
            {
                Response.Write("<script>alert('User Id not found! Pls try again...');window.location = 'LPDemo.aspx';</script>");
            }
        }
    }
}
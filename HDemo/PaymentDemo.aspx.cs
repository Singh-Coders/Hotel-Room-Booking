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
    public partial class PaymentDemo : System.Web.UI.Page
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
            }
            catch
            {
                Response.Write("<script>alert('Connection not create! Pls try again...');window.location = 'LPDemo.aspx';</script>");
            }

            try
            {
                nameoncard.Value = Session["cname"].ToString();
            }
            catch
            {
                Response.Write("<script>alert('Card holder name not found! Pls try again...');window.location = 'CheckoutDemo.aspx';</script>");
            }

            try
            {
                tamount.InnerText = Session["tamount"].ToString() + ".00";
                tamtbtn.Text = "🔒 Pay ₹" + Session["tamount"].ToString() + ".00";
            }
            catch
            {
                Response.Write("<script>alert('Total bill amount not found! Pls try again...');window.location = 'CheckoutDemo.aspx';</script>");
            }

        }

        protected void tamtbtn_Click(object sender, EventArgs e)
        {
            String rtype, userid;
            int avlroom;

            //retrieve session variable
            try
            {
                userid = Session["cmail"].ToString();

                try
                {
                    rtype = Session["rtype"].ToString();

                    //after check-out or payment the transaction details or receipt insert in payment details table
                    String cname = Session["cname"].ToString();
                    String cphno = Session["cphno"].ToString();
                    String payamt = Session["tamount"].ToString() + ".00";
                    String paymentdt = Session["paymentdt"].ToString();
                    String status = "Success";
                    q = "INSERT INTO PayDetTb (cname, cemail, cphno, payamt, pmtdate, status) VALUES(@cname, @cemail, @cphno, @payamt, @pmtdate, @status)";
                    cmd = new SqlCommand(q, con);
                    cmd.Parameters.AddWithValue("@cname", cname);
                    cmd.Parameters.AddWithValue("@cemail", userid);
                    cmd.Parameters.AddWithValue("@cphno", cphno);
                    cmd.Parameters.AddWithValue("@payamt", payamt);
                    cmd.Parameters.AddWithValue("@pmtdate", Convert.ToDateTime(paymentdt));
                    cmd.Parameters.AddWithValue("@status", status);
                    try
                    {
                        cmd.ExecuteNonQuery();

                        //retrieve available room status to update available room status
                        q = "select avlroom from RoomTb where rtype=@rtype";
                        cmd = new SqlCommand(q, con);
                        cmd.Parameters.AddWithValue("@rtype", rtype);
                        try
                        {
                            dr = cmd.ExecuteReader();
                            dr.Read();
                            avlroom = Convert.ToInt32(dr["avlroom"]);
                            dr.Close();
                            //update available room status in room table after customer check-out
                            avlroom = avlroom + 1;
                            q = "UPDATE RoomTb SET avlroom=@avlroom where rtype=@rtype";
                            cmd = new SqlCommand(q, con);
                            cmd.Parameters.AddWithValue("@rtype", rtype);
                            cmd.Parameters.AddWithValue("@avlroom", avlroom);
                            try
                            {
                                cmd.ExecuteNonQuery();

                                //delete booking record from booking table after customer check-out
                                q = "DELETE FROM BookTb WHERE cemail=@cemail";
                                cmd = new SqlCommand(q, con);
                                cmd.Parameters.AddWithValue("@cemail", userid);
                                try
                                {
                                    cmd.ExecuteNonQuery();

                                    Response.Write("<script>alert('Payment Successfully Done!');window.location = 'CheckoutDemo.aspx';</script>");
                                }
                                catch
                                {
                                    Response.Write("<script>alert('User Id not found! Pls try again...');window.location = 'LPDemo.aspx';</script>");
                                }
                            }
                            catch
                            {
                                Response.Write("<script>alert('Room type not found!');window.location = 'CheckoutDemo.aspx';</script>");
                            }
                        }
                        catch
                        {
                            Response.Write("<script>alert('Room type not found!');window.location = 'CheckoutDemo.aspx';</script>");
                        }
                    }
                    catch
                    {
                        Response.Write("<script>alert('Payment failed! Pls try again...');window.location = 'CheckoutDemo.aspx';</script>");
                    }
                }
                catch
                {
                    Response.Write("<script>alert('Room type not found! Pls try again...');window.location = 'CheckoutDemo.aspx';</script>");
                }
            }
            catch
            {
                Response.Write("<script>alert('User Id not found! Pls try again...');window.location = 'LPDemo.aspx';</script>");
            }
        }
    }
}
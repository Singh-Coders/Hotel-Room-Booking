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
    public partial class CheckoutDemo : System.Web.UI.Page
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
                userid.Text = Session["cmail"].ToString();
                txtcemail1.Value = Session["cmail"].ToString();
            }
            catch
            {
                Response.Write("<script>alert('User Id not found! Pls try again...');window.location = 'LPDemo.aspx';</script>");
            }

            if (IsPostBack == true)
            {
                rptr.Visible = false;
            }
        }

        protected void billbtn_Click(object sender, EventArgs e)
        {
            String txtcemail;

            Session["cmail"] = txtcemail = txtcemail1.Value;

            q = "select * from BookTb where cemail=@cemail";
            cmd = new SqlCommand(q, con);
            cmd.Parameters.AddWithValue("@cemail", txtcemail);
            try
            {
                dr = cmd.ExecuteReader();

                if (dr.HasRows == true)
                {
                    dr.Read();
                    Session["cname"] = cname.Text = dr["cname"].ToString();
                    cemail.Text = dr["cemail"].ToString();
                    Session["cphno"] = cphno.Text = dr["cphno"].ToString();
                    cadd.Text = dr["cadd"].ToString();
                    checkin.Text = dr["checkin"].ToString();
                    Session["paymentdt"] = checkout.Text = dr["checkout"].ToString();
                    Session["rtype"] = rtype.Text = dr["rtype"].ToString();
                    adultqty.Text = dr["adultqty"].ToString();
                    childqty.Text = dr["childqty"].ToString();
                    dr.Close();

                    q = "select rprice from RoomTb where rtype=@rtype";
                    cmd = new SqlCommand(q, con);
                    cmd.Parameters.AddWithValue("@rtype", rtype.Text);
                    try
                    {
                        dr = cmd.ExecuteReader();
                        dr.Read();
                        rprice.Text = dr["rprice"].ToString();
                        dr.Close();

                        //Calaculate total no. of days(of customers stay)
                        //Storing input Dates
                        DateTime FromYear = Convert.ToDateTime(checkin.Text);
                        DateTime ToYear = Convert.ToDateTime(checkout.Text);
                        //Creating object of TimeSpan Class  
                        TimeSpan objTimeSpan = ToYear - FromYear;
                        //TotalDays  
                        double Days = Convert.ToDouble(objTimeSpan.TotalDays);
                        tdays.Text = Convert.ToString(Days);

                        //Calculate total amount
                        int price, sdays;
                        price = Convert.ToInt32(rprice.Text);
                        sdays = Convert.ToInt32(tdays.Text);
                        Session["tamount"] = tamount.Text = (price * sdays).ToString();

                        rptr.Visible = true;
                    }
                    catch
                    {
                        Response.Write("<script>alert('Room type not found!');window.location = 'CheckoutDemo.aspx';</script>");
                    }
                }
                else
                {
                    Response.Write("<script>alert('No bookings yet!');</script>");
                    rptr.Visible = false;
                }
            }
            catch
            {
                Response.Write("<script>alert('User Id not found! Pls try again...');window.location = 'LPDemo.aspx';</script>");
            }
        }
    }
}
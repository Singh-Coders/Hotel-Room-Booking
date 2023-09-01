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
    public partial class AddRoom : System.Web.UI.Page
    {
        SqlConnection con;
        SqlDataReader dr;
        SqlCommand cmd;
        String s, q, path;

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
                Response.Write("<script>alert('Connection not create! Pls try again...');window.location = 'AdminDemo.aspx';</script>");
            }

            try
            {
                adminid.Text = Session["ademail"].ToString();
            }
            catch
            {
                Response.Write("<script>alert('Admin Id not found! Pls try again...');window.location = 'AdminDemo.aspx';</script>");
            }
        }

        protected void Addroombtn_Click(object sender, EventArgs e)
        {
            String rtype, rdesp;
            int avlroom, rprice;

            rtype = txtrtype.Value;
            avlroom = Convert.ToInt32(txtroomqty.Value);
            rprice = Convert.ToInt32(txtrprice.Value);
            rdesp = txtrdescp.Value;

            if (FileUpload1.HasFile)
            {
                string ext = System.IO.Path.GetExtension(this.FileUpload1.PostedFile.FileName);
                if (ext == ".jpg" || ext == ".png" || ext == ".gif" || ext == ".jpeg")
                {
                    FileUpload1.SaveAs(HttpContext.Current.Request.PhysicalApplicationPath + "Images/" + FileUpload1.FileName);
                    path = FileUpload1.FileName;

                    q = "INSERT INTO RoomTb (rtype, avlroom, rprice, rdesp, rimg) VALUES(@rtype, @avlroom, @rprice, @rdesp, @path)";
                    cmd = new SqlCommand(q, con);
                    cmd.Parameters.AddWithValue("@rtype", rtype);
                    cmd.Parameters.AddWithValue("@avlroom", avlroom);
                    cmd.Parameters.AddWithValue("@rprice", rprice);
                    cmd.Parameters.AddWithValue("@rdesp", rdesp);
                    cmd.Parameters.AddWithValue("@path", path);
                    try
                    {
                        cmd.ExecuteNonQuery();

                        Response.Write("<script>alert('Room Add Successfully!');window.location = 'AddRoom.aspx';</script>");
                    }
                    catch
                    {
                        Response.Write("<script>alert('Room not Added! Pls try again...');window.location = 'AddRoom.aspx';</script>");
                    }
                }
                else
                {
                    Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('Please choose only .jpg, .png, .gif and .jpeg image types!')", true);
                }
            }
            else
            {
                Response.Write("<script>alert('Please upload Image!');window.location = 'AddRoom.aspx';</script>");
            }
        }
    }
}
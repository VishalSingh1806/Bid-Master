using System;
using System.IO;
using System.Text;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Net;
using System.Net.Mail;
using System.Security.Cryptography;
using System.Web.Caching;
using System.Xml.Linq;

namespace project
{
    public partial class sell : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Session["user"] == null)
            {
                Response.Redirect("login.aspx");
            }
            con.Open();
            string getUser = "select * from [users] where email='" + Session["user"].ToString() + "'";
            SqlCommand getUserCmd = new SqlCommand(getUser, con);
            SqlDataReader getUserReader = getUserCmd.ExecuteReader();
            if (getUserReader.Read())
            {
                var userName = getUserReader.GetValue(1).ToString();
                var userEmail = getUserReader.GetValue(2).ToString();
                con.Close();

                con.Open();
                String insertQry = "insert into [product] (name ,email,pname, type, img, amount, detail,enddate ) values (@name,@email,@pname, @type, @img,@amount,@detail,@enddate)";
                SqlCommand insertCmd = new SqlCommand(insertQry, con);
                insertCmd.Parameters.AddWithValue("@name", userName);
                insertCmd.Parameters.AddWithValue("@email", userEmail);
                insertCmd.Parameters.AddWithValue("@pname", TextBox1.Text.ToString());
                insertCmd.Parameters.AddWithValue("@img", FileUpload1.FileContent);
                insertCmd.Parameters.AddWithValue("@type", DropDownList1.SelectedValue.ToString());
                insertCmd.Parameters.AddWithValue("@amount", TextBox2.Text.ToString());
                insertCmd.Parameters.AddWithValue("@detail", TextBox3.Text.ToString());
                insertCmd.Parameters.AddWithValue("@enddate", TextBox4.Text.ToString());

                insertCmd.ExecuteNonQuery();
                string script = "alert('You have succesfully added the item for sell!'); window.location.href = 'home.aspx';";
                ClientScript.RegisterStartupScript(this.GetType(), "alert", script, true);
                con.Close();


            }
        }
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
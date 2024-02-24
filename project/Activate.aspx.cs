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
using System.Security.Policy;
using System.Drawing;

namespace project
{
    public partial class Activate : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            

                string activation_code = Request.QueryString["activation_code"].ToString();
                string email_id = Request.QueryString["email"].ToString();
                string email = Base64Decode(email_id).ToString();

                con.Open();
                string matchQry = "select id from [users] where email='" + email + "' and activation_code='" + activation_code + "' and is_active=0";
                SqlCommand matchCmd = new SqlCommand(matchQry, con);
                SqlDataReader matchReader = matchCmd.ExecuteReader();
                if (matchReader.HasRows)
                {

                    con.Close();

                    // update activation_code and is_active
                    con.Open();
                    string updateQry = "update [users] set activation_code='0', is_active=1 where email='" + email + "'";
                    SqlCommand updateCmd = new SqlCommand(updateQry, con);
                    updateCmd.ExecuteNonQuery();
                string script = "alert('Sign Up succesfully!'); window.location.href = 'login.aspx';";
                ClientScript.RegisterStartupScript(this.GetType(), "alert", script, true);
                con.Close();
               
            }
                else
                {
                    con.Close();
                }

           // Response.Redirect("login.aspx");
        }

        public static string Base64Decode(string base64EncodedData)
        {
            var base64EncodedBytes = System.Convert.FromBase64String(base64EncodedData);
            return System.Text.Encoding.UTF8.GetString(base64EncodedBytes);
        }
    }
}
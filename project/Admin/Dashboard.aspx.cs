using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project.Admin
{
    public partial class Dashboard : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
            {
                
                
                    // Redirect to the login page
                    Response.Redirect("~/Admin/AdminLogin.aspx");
                
            }
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminlogout.aspx");
        }
    }
}
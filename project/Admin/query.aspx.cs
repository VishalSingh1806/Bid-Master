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
    public partial class contact : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {

                con.Open();
                SqlCommand getuserdetail = new SqlCommand("SELECT * FROM [contact] ", con);

                SqlDataAdapter selectCmdAdapter = new SqlDataAdapter(getuserdetail);
                SqlDataReader getuserReader = getuserdetail.ExecuteReader();
                while (getuserReader.Read())
                {
                    Literal1.Text += "<tr>";
                    Literal1.Text += "<td>" + getuserReader.GetValue(0).ToString() + "</td>";
                    Literal1.Text += "<td>" + getuserReader.GetValue(1).ToString() + "</td>";
                    Literal1.Text += "<td>" + getuserReader.GetValue(2).ToString() + "</td>";
                    Literal1.Text += "<td>" + getuserReader.GetValue(3).ToString() + "</td>";
                    Literal1.Text += "<td>" + getuserReader.GetValue(4).ToString() + "</td>";
                    Literal1.Text += "<td>" + getuserReader.GetValue(5).ToString() + "</td>";
                    Literal1.Text += "</tr>";
                }
                con.Close();

            }

        }
    }
}
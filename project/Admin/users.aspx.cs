using System;
using System.Data.SqlClient;
using System.Data;
using System.Text;
using System.Configuration;

namespace project.Admin
{
    public partial class users : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
           
            
            if (!IsPostBack)
            {
                
                con.Open();
                SqlCommand getuserdetail = new SqlCommand("SELECT * FROM [users] ", con);
               
                SqlDataAdapter selectCmdAdapter = new SqlDataAdapter(getuserdetail);
                SqlDataReader getuserReader = getuserdetail.ExecuteReader();
                while (getuserReader.Read())
                {
                    Literal1.Text += "<tr>";
                    Literal1.Text += "<td>" + getuserReader.GetValue(0).ToString() + "</td>";
                    Literal1.Text += "<td>" + getuserReader.GetValue(1).ToString() + "</td>";
                    Literal1.Text += "<td>" + getuserReader.GetValue(2).ToString() + "</td>";
                    Literal1.Text += "<td>" + getuserReader.GetValue(3).ToString() + "</td>";
                    Literal1.Text += "<td>" + getuserReader.GetValue(6).ToString() + "</td>";
                    Literal1.Text += "</tr>";
                }
                con.Close();

            }
        }
    }
}

using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace project.Admin
{
    public partial class product : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ConnectionString);

       
        protected void Page_Load(object sender, EventArgs e)
        {


            if (!IsPostBack)
            {
                int count = 0;
                con.Open();
                SqlCommand gpd = new SqlCommand("SELECT * FROM [product] ORDER BY [type]", con);

                SqlDataReader gpr = gpd.ExecuteReader();
                string currentCategory = null;


                Literal1.Text += "<div class='row'>";
                while (gpr.Read())
                {


                    Literal1.Text += "<div class='col-md-4'>"; // Each card occupies 1/3 of the row

                    Literal1.Text += "<div class='card'>";
                    Literal1.Text += "<div class='card-body'>";
                    Literal1.Text += "<h2 class='card-title'>" + (gpr["pname"] != DBNull.Value ? gpr["pname"].ToString() : "") + "</h2>";
                    Literal1.Text += "<img class='item' width='320' height='400' src='" + GetImageUrl(gpr["img"]) + "' />";
                    Literal1.Text += "<div class='product-details'>";
                    Literal1.Text += "<h3 class='flex-grow'>" + (gpr["type"] != DBNull.Value ? gpr["type"].ToString() : "") + "</h3>";
                    Literal1.Text += "<p class='preview-subject'>" + (gpr["detail"] != DBNull.Value ? gpr["detail"].ToString() : "") + "</p>";
                    Literal1.Text += "<h3 class='product-amount'>Rs " + (gpr["amount"] != DBNull.Value ? gpr["amount"].ToString() : "") + "</h3>";

                    Literal1.Text += "</div>";
                    Literal1.Text += "</div>";
                    Literal1.Text += "</div>";

                    Literal1.Text += "</div>"; // Close the column

                    count++;
                    if (count % 3 == 0)
                    {
                        Literal1.Text += "</div>"; // Close the row
                        Literal1.Text += "<div class='row'>"; // Start a new row
                    }
                }

                if (currentCategory != null)
                {
                    Literal1.Text += "</div>"; // Close the last category container
                }

                Literal1.Text += "</div>"; // Close the main category container

                con.Close();
            }
        }

        protected string GetImageUrl(object img)
        {
            if (img != null && img != DBNull.Value)
            {
                // Assuming img is a byte array representing the image data
                byte[] imageData = (byte[])img;

                // Convert the byte array to a base64 string
                string base64String = Convert.ToBase64String(imageData);

                // Return the data URI for the image
                return "data:image/jpeg;base64," + base64String;
            }
            else
            {
                // If img is null, return a placeholder image URL or an empty string
                return ""; // Replace with a placeholder image URL or an empty string
            }
        }

    }


}


using System;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace project
{
    public partial class view : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var product_id = Request.QueryString["id"].ToString();

                con.Open();
                SqlCommand selectCmd = new SqlCommand("SELECT * FROM [product] WHERE id = @id", con);
                selectCmd.Parameters.AddWithValue("@id", product_id);
                SqlDataAdapter selectCmdAdapter = new SqlDataAdapter(selectCmd);
                DataSet productDataset = new DataSet();
                selectCmdAdapter.Fill(productDataset);
                con.Close();

                var img = productDataset.Tables[0].Rows[0]["img"];
                Image1.ImageUrl = GetImageUrl(img);
                Label1.Text = productDataset.Tables[0].Rows[0]["pname"].ToString();
                Label2.Text = productDataset.Tables[0].Rows[0]["amount"].ToString();
                Label3.Text = productDataset.Tables[0].Rows[0]["detail"].ToString();
                Label4.Text = productDataset.Tables[0].Rows[0]["type"].ToString();
                Label5.Text = productDataset.Tables[0].Rows[0]["enddate"].ToString();

                DateTime auctionEndDate;

                if (DateTime.TryParse(Label5.Text, out auctionEndDate))
                {
                    if (DateTime.Now > auctionEndDate)
                    {
                        Button1.Visible = false;
                        amount.Enabled = false;

                        // Display highest bidder information
                        con.Open();
                        SqlCommand getHighestBidderCmd = new SqlCommand("SELECT TOP 1 * FROM [bidamount] WHERE product_id=@product_id ORDER BY amount DESC", con);
                        getHighestBidderCmd.Parameters.AddWithValue("@product_id", product_id);
                        SqlDataReader highestBidderReader = getHighestBidderCmd.ExecuteReader();

                        if (highestBidderReader.Read())
                        {
                            string highestBidderName = highestBidderReader.GetValue(1).ToString();
                            decimal highestBidAmount = Convert.ToDecimal(highestBidderReader.GetValue(4));

                            // Display congratulatory message
                            litBidSuccessful.Text = $"<div class='alert alert-success' role='alert'>Congratulations {highestBidderName}! You have won the bid with an amount of Rs. {highestBidAmount}.</div>";
                        }

                        con.Close();
                    }
                }

                con.Open();
                SqlCommand getBidDetails = new SqlCommand("SELECT * FROM [bidamount] WHERE product_id=@product_id ORDER BY amount DESC", con);
                getBidDetails.Parameters.AddWithValue("@product_id", product_id);
                SqlDataReader getBidDetailsReader = getBidDetails.ExecuteReader();
                while (getBidDetailsReader.Read())
                {
                    Literal1.Text += "<tr>";
                    Literal1.Text += "<td>" + getBidDetailsReader.GetValue(1).ToString() + "</td>";
                    Literal1.Text += "<td>" + getBidDetailsReader.GetValue(4).ToString() + "</td>";
                    Literal1.Text += "</tr>";
                }
                con.Close();
            }
        }

        protected string GetImageUrl(object img)
        {
            if (img != null)
            {
                byte[] imageData = (byte[])img;
                string base64String = Convert.ToBase64String(imageData);
                return "data:image/jpeg;base64," + base64String;
            }
            else
            {
                return "";
            }
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
                var product_id = Request.QueryString["id"].ToString();
                String insertQry = "insert into [bidamount] (name, email, product_id, amount) values (@name, @email, @product_id, @amount)";
                SqlCommand insertCmd = new SqlCommand(insertQry, con);
                insertCmd.Parameters.AddWithValue("@name", userName);
                insertCmd.Parameters.AddWithValue("@email", userEmail);
                insertCmd.Parameters.AddWithValue("@product_id", product_id);
                insertCmd.Parameters.AddWithValue("@amount", amount.Text.ToString());
                insertCmd.ExecuteNonQuery();
                con.Close();
            }

            string script = "alert('You have successfully bided!'); window.location.href = 'home.aspx';";
            ClientScript.RegisterStartupScript(this.GetType(), "alert", script, true);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("contact.aspx");
        }
    }
}

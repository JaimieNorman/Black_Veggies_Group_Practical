using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Black_Veggies_Group_Project_Take2
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["DatabaseConnectionString"].ConnectionString);
            string commandString = "select * from [Products]";
            SqlCommand command = new SqlCommand(commandString, connection);
            command.CommandType = CommandType.Text;

            connection.Open();

            SqlDataReader reader;
            reader = command.ExecuteReader();

            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    lblProducts.Text += "<div class='col-md-3 col-sm-4'>";
                    lblProducts.Text += "<div class='thumbnail'>";
                    lblProducts.Text += "<img src='" + reader["ImageLocation"].ToString() + "' />";
                    lblProducts.Text += "<div class='caption'>";
                    lblProducts.Text += "<h3>" + reader["Name"].ToString() + " - R" + reader["Price"] + "</h3>";
                    lblProducts.Text += "<p>" + reader["Description"].ToString() + "</p>";
                    lblProducts.Text += "<p><a href='ProductDetails.aspx?=" + reader["ProductID"] + "' class='btn btn-primary' role='button'>Add to Cart</a> <a href='ProductDetails.aspx?id=" + reader["ProductID"] + "'class='btn btn-danger' role='button'>See Details</a></p>";
                    lblProducts.Text += "</div>";
                    lblProducts.Text += "</div></div>";
                }
            }

            connection.Close();
            connection.Dispose();
            command.Dispose();
        }
    }
}
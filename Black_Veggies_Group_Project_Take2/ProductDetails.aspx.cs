using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Black_Veggies_Group_Project_Take2
{
    public partial class ProductDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["id"] == null)
            {
                Response.Redirect("Home.aspx");
            }
            int id = Convert.ToInt32(Request.QueryString["id"]);

            SqlConnection connection = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["DatabaseConnectionString"].ConnectionString);
            String connectionString = "select * from [Products] where ProductID = @id";
            SqlCommand command = new SqlCommand(connectionString, connection);
            command.CommandType = CommandType.Text;
            command.Parameters.AddWithValue("@id", id);

            connection.Open();
            SqlDataReader reader = command.ExecuteReader();

            if (reader.HasRows)
            {
                reader.Read();
                
                lblProduct.Text += "<div class='col-md-8 col-sm-8 mr-top-50'><img src='" + reader["ImageLocation"] + "' class='img-responsive mr-botm'></div>";
                lblProduct.Text += "<div class='col-md-4 col-sm-4 mr-top-50'>";
                lblProduct.Text += "<h3>Product Name: " + reader["Name"] +"</h3>";
                lblProduct.Text += "<p>" + reader["Description"] + "</p>";
                lblProduct.Text += "<h3>Product Details</h3>";
                lblProduct.Text += "<p>Stock: " + reader["Stock"] + "<br />";
                lblProduct.Text += "Type: " + reader["Type"] + "<br />";
                lblProduct.Text += "Price: " + reader["Price"] + "<br /> </p>";
                if (Session["Admin"] != null)
                {
                    lblProduct.Text += "<a href='./EditProduct.aspx?id=" + reader["ProductID"] + "' class='btn btn-primary' role='button' id='btnEdit' runat='server'>Edit</a>";
                }
                lblProduct.Text += "</div>";
                
            }

            connection.Close();
            connection.Dispose();
            command.Dispose();
        }
    }
}
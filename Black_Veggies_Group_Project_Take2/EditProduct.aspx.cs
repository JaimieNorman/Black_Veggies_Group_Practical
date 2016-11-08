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
    public partial class EditProduct : System.Web.UI.Page
    {
        private int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["id"] == null)
            {
                Response.Redirect("Home.aspx");
            }
            id = Convert.ToInt32(Request.QueryString["id"]);

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
                lblProduct.Text += "<h3>Product Name: " + reader["Name"] + "</h3>";
                lblProduct.Text += "<p>" + reader["Description"] + "</p>";
                lblProduct.Text += "<h3>Product Details</h3>";
                lblProduct.Text += "<p>Stock: " + reader["Stock"] + "<br />";
                lblProduct.Text += "Type: " + reader["Type"] + "<br />";
                lblProduct.Text += "Price: " + reader["Price"] + "<br /> </p>";
                lblProduct.Text += "</div>";

            }

            connection.Close();
            connection.Dispose();
            command.Dispose();
        }

        protected void btnName_Click(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["DatabaseConnectionString"].ConnectionString);
            String connectionString = "update [Products] set [Name] = @Name where ProductID = " + id;
            SqlCommand command = new SqlCommand(connectionString, connection);
            command.CommandType = CommandType.Text;
            command.Parameters.AddWithValue("@Name", txtName.Text);
            connection.Open();
            command.ExecuteNonQuery();
            connection.Close();
            connection.Dispose();
            command.Dispose();
            Response.Redirect("./EditProduct.aspx?id=" + id);
        }

        protected void btnPrice_Click(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["DatabaseConnectionString"].ConnectionString);
            String connectionString = "update [Products] set [Price] = @Price where ProductID = " + id;
            SqlCommand command = new SqlCommand(connectionString, connection);
            command.CommandType = CommandType.Text;
            command.Parameters.AddWithValue("@Price", txtPrice.Text);
            connection.Open();
            command.ExecuteNonQuery();
            connection.Close();
            connection.Dispose();
            command.Dispose();
            Response.Redirect("./EditProduct.aspx?id=" + id);
        }

        protected void btnDescription_Click(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["DatabaseConnectionString"].ConnectionString);
            String connectionString = "update [Products] set [Description] = @Description where ProductID = " + id;
            SqlCommand command = new SqlCommand(connectionString, connection);
            command.CommandType = CommandType.Text;
            command.Parameters.AddWithValue("@Description", txtDescription.Text);
            connection.Open();
            command.ExecuteNonQuery();
            connection.Close();
            connection.Dispose();
            command.Dispose();
            Response.Redirect("./EditProduct.aspx?id=" + id);
        }

        protected void btnURL_Click(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["DatabaseConnectionString"].ConnectionString);
            String connectionString = "update [Products] set [ImageLocation] = @URL where ProductID = " + id;
            SqlCommand command = new SqlCommand(connectionString, connection);
            command.CommandType = CommandType.Text;
            command.Parameters.AddWithValue("@URL", txtURL.Text);
            connection.Open();
            command.ExecuteNonQuery();
            connection.Close();
            connection.Dispose();
            command.Dispose();
            Response.Redirect("./EditProduct.aspx?id=" + id);
        }

        protected void btnStock_Click(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["DatabaseConnectionString"].ConnectionString);
            String connectionString = "update [Products] set [Stock] = @Stock where ProductID = " + id;
            SqlCommand command = new SqlCommand(connectionString, connection);
            command.CommandType = CommandType.Text;
            command.Parameters.AddWithValue("@Stock", txtStock.Text);
            connection.Open();
            command.ExecuteNonQuery();
            connection.Close();
            connection.Dispose();
            command.Dispose();
            Response.Redirect("./EditProduct.aspx?id=" + id);
        }
    }
}
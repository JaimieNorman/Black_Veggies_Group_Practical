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
    public partial class ProductAddition : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Admin"] == null)
            {
                Response.Redirect("./AdminLogin.aspx");
            }

            
            ListItem wine = new ListItem("Wine", "Wine");
            ddlType.Items.Add(wine);

            ListItem whiskey = new ListItem("Whiskey", "Whiskey");
            ddlType.Items.Add(whiskey);

            ListItem vodka = new ListItem("Vodka", "Vodka");
            ddlType.Items.Add(vodka);

            ListItem beer = new ListItem("Beer", "Beer");
            ddlType.Items.Add(beer);

            ListItem rum = new ListItem("Rum", "Rum");
            ddlType.Items.Add(rum);

            ListItem brandy = new ListItem("Brandy", "Brandy");
            ddlType.Items.Add(brandy);


            
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["DatabaseConnectionString"].ConnectionString);
            string commandString = "insert into [Products] (Name, Price, Type, Description, ImageLocation, Stock) values (@Name, @Price, @Type, @Description, @ImageLocation, @Stock)";
            SqlCommand command = new SqlCommand(commandString, connection);
            command.CommandType = CommandType.Text;
            command.Parameters.AddWithValue("@Name", txtProductName.Text);
            command.Parameters.AddWithValue("@Price", Convert.ToDouble(txtPrice.Text));
            command.Parameters.AddWithValue("@Type", ddlType.SelectedValue.ToString());
            command.Parameters.AddWithValue("@Description", txtDescription.Text);
            command.Parameters.AddWithValue("@ImageLocation", txtImage.Text);
            command.Parameters.AddWithValue("@Stock", Convert.ToInt32(txtStock.Text));
            connection.Open();

            int temp = command.ExecuteNonQuery(); //variable for checking if command was successful - ExecuteNonQuery returns number of rows affected - if 0 then no rows were affected

            if (temp == 0)
            {
                status.InnerHtml = "Product was not added!";
            }
            else
            {
                status.InnerHtml = "Product succesfully added!";
            }

            connection.Close();
            connection.Dispose();
            command.Dispose();
            clearTextBoxes();
        }

        private void clearTextBoxes()
        {
            txtDescription.Text = "";
            txtImage.Text = "";
            txtPrice.Text = "";
            txtProductName.Text = "";
            txtStock.Text = "";
        }
    }
}
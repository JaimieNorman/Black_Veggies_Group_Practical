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
    public partial class ManageAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Admin"] == null)
            {
                Response.Redirect("./Home.aspx");
            }

            if (!Page.IsPostBack)
            {
                populateDropDownList();

                SqlConnection connection = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["DatabaseConnectionString"].ConnectionString);
                string commandString = "select AdminID, Username from [Admin]";
                SqlCommand command = new SqlCommand(commandString, connection);
                command.CommandType = CommandType.Text;
                connection.Open();

                SqlDataReader reader = command.ExecuteReader();

                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        lblContent.Text += "<tr> <td>" + reader["AdminID"] + "</td>";
                        lblContent.Text += "<td>" + reader["Username"] + "</td>";
                    }
                }

                connection.Close();
                connection.Dispose();
                command.Dispose();
            } 
        }

        protected void btnUsername_Click(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["DatabaseConnectionString"].ConnectionString);
            string commandString = "update [Admin] set [Username]=@Username where AdminID=" + ddlAdmin.SelectedValue;
            SqlCommand command = new SqlCommand(commandString, connection);
            command.CommandType = CommandType.Text;
            command.Parameters.AddWithValue("@Username", txtUsername.Text);
            connection.Open();

            command.ExecuteNonQuery();

            connection.Close();
            connection.Dispose();
            command.Dispose();
            Response.Redirect("./ManageAdmin.aspx");

        }

        private void populateDropDownList()
        {
            SqlConnection connection = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["DatabaseConnectionString"].ConnectionString);
            string commandString = "select [AdminID], [Username] from [Admin]";
            SqlCommand command = new SqlCommand(commandString, connection);
            command.CommandType = CommandType.Text;
            connection.Open();
            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                ListItem newItem = new ListItem();
                newItem.Text = reader["AdminID"].ToString();
                newItem.Value = reader["AdminID"].ToString();
                ddlAdmin.Items.Add(newItem);
            }
            ddlAdmin.Items.Insert(0, new ListItem("--Select ID--", "0"));
            connection.Close();
            connection.Dispose();
            command.Dispose();
        }

        protected void btnPassword_Click(object sender, EventArgs e)
        {
            if (txtPassword.Text == txtConfirmPassword.Text)
            {
                SqlConnection connection = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["DatabaseConnectionString"].ConnectionString);
                string commandString = "update [Admin] set [Password]=@Password where AdminID=" + ddlAdmin.SelectedValue;
                SqlCommand command = new SqlCommand(commandString, connection);
                command.CommandType = CommandType.Text;
                command.Parameters.AddWithValue("@Password", PasswordHasher.HashPassword(txtPassword.Text));
                connection.Open();

                command.ExecuteNonQuery();

                connection.Close();
                connection.Dispose();
                command.Dispose();
                Response.Redirect("./ManageAdmin.aspx");
            }
            else
            {
                lblConfirmPasswordError.Text = "Passwords do not match!";
            }
            
        }
    }
}
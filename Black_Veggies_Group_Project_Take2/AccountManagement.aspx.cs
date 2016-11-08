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
    public partial class AccountManagement : System.Web.UI.Page
    {
        private int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["User"] == null)
            {
                Response.Redirect("./Home.aspx");
            }

            int id = Convert.ToInt32(Session["UserID"]);
        }

        protected void btnUsername_Click(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["DatabaseConnectionString"].ConnectionString);
            string commandString = "update [User] set [Username] = @Username where UserID = " + id;
            SqlCommand command = new SqlCommand(commandString, connection);
            command.Parameters.AddWithValue("@Username", txtUsername.Text);
            command.CommandType = CommandType.Text;
            connection.Open();


            command.ExecuteNonQuery();
            connection.Close();
            connection.Dispose();
            command.Dispose();
        }

        protected void btnEmail_Click(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["DatabaseConnectionString"].ConnectionString);
            string commandString = "update [User] set [Email] = @Email where UserID = " + id;
            SqlCommand command = new SqlCommand(commandString, connection);
            if (txtEmail.Text == txtConfirmEmail.Text)
            {
                command.Parameters.AddWithValue("@Email", txtEmail.Text);
                command.CommandType = CommandType.Text;
                connection.Open();


                command.ExecuteNonQuery();
                connection.Close();
                connection.Dispose();
                command.Dispose();
            }
            else
            {
                lblError.Text = "Emails do not match!";
            }
            
        }

        protected void btnPassword_Click(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["DatabaseConnectionString"].ConnectionString);
            string commandString = "update [User] set [Password] = @Password where UserID = " + id;
            SqlCommand command = new SqlCommand(commandString, connection);
            if (txtPassword.Text == txtConfirmPassword.Text)
            {
                command.Parameters.AddWithValue("@Password", PasswordHasher.HashPassword(txtPassword.Text));
                command.CommandType = CommandType.Text;
                connection.Open();


                command.ExecuteNonQuery();
                connection.Close();
                connection.Dispose();
                command.Dispose();
            }
            else
            {
                lblError.Text = "Passwords do not match!";
            }
        }
    }
}
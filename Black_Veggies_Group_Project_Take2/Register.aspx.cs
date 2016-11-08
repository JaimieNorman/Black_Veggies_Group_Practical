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
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Admin"] != null)
            {
                Response.Redirect("./Home.aspx");
            }

            if (Session["User"] != null)
            {
                Response.Redirect("./Home.aspx");
            }
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["DatabaseConnectionString"].ConnectionString);
            String connectionString = "insert into [User] (Username, Password, Email, FirstName, Surname) values (@Username, @Password, @Email, @Firstname, @Surname)";
            SqlCommand command = new SqlCommand(connectionString, connection);

            command.Parameters.AddWithValue("@Username", txtUsername.Text);
            command.Parameters.AddWithValue("@Password", PasswordHasher.HashPassword(txtPassword.Text));
            command.Parameters.AddWithValue("@Email", txtEmail.Text);
            command.Parameters.AddWithValue("@Firstname", txtFirstName.Text);
            command.Parameters.AddWithValue("@Surname", txtSurname.Text);
            command.CommandType = CommandType.Text;
            if (txtEmail.Text == txtConfirmEmail.Text && txtPassword.Text == txtConfirmPassword.Text)
            {
                connection.Open();
                command.ExecuteNonQuery();
                Response.Redirect("./UserLogin.aspx");
            }
            else
            {
                lblError.Text = "Either your email is not correct or your password is not correct!";
            }
            
        }
    }
}
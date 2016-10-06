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
    public partial class AdminLogin : System.Web.UI.Page
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

        protected void btnAdminLogin_Click(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["DatabaseConnectionString"].ConnectionString);
            connection.Open();

            String checkUser = "select count(*) from [Admin] where Username = '" + txtUsername.Text + "'";
            SqlCommand command = new SqlCommand(checkUser, connection);

            int temp = Convert.ToInt32(command.ExecuteScalar().ToString());
            connection.Close();

            if (temp == 1)
            {
                connection.Open();
                string checkPassword = "select Password from [Admin] where Username = '" + txtUsername.Text + "'";
                SqlCommand passwordCommand = new SqlCommand(checkPassword, connection);
                string password = passwordCommand.ExecuteScalar().ToString();
                if (password == PasswordHasher.HashPassword(txtPassword.Text))
                {
                    Session["Admin"] = txtUsername.Text;
                    Response.Redirect("./Home.aspx");
                    connection.Close();
                }
                else
                {
                    lblError.Text = "Password is incorrect";
                    connection.Close();
                }

            }
            else
            {
                lblError.Text = "Username is inorrect";
                connection.Close();
            }
        }
    }
}
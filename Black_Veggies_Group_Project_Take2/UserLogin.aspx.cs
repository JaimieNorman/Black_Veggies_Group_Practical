using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Black_Veggies_Group_Project_Take2
{
    public partial class Login : System.Web.UI.Page
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

        protected void btnUserLogin_Click(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["DatabaseConnectionString"].ConnectionString);
            connection.Open();

            String checkUser = "select count(*) from [User] where Username = '" + txtUsername.Text + "'";
            SqlCommand command = new SqlCommand(checkUser, connection);

            int temp = Convert.ToInt32(command.ExecuteScalar().ToString());
            connection.Close();

            if (temp == 1)
            {
                connection.Open();
                string checkPassword = "select * from [User] where Username = '" + txtUsername.Text + "'";
                SqlCommand passwordCommand = new SqlCommand(checkPassword, connection);
                SqlDataReader reader;
                reader = passwordCommand.ExecuteReader();
//                string password = passwordCommand.ExecuteScalar().ToString();
                reader.Read();
                if (reader["Password"].ToString() == PasswordHasher.HashPassword(txtPassword.Text))
                {
                    Session["User"] = txtUsername.Text;
                    Session["UserID"] = reader["UserID"];
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
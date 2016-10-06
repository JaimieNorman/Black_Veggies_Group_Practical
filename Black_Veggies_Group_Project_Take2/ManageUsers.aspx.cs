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
    public partial class ManageUsers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Admin"] == null && Session["User"] == null)
            {
                Response.Redirect("./Home.aspx");
            }
            if (!Page.IsPostBack) //Not too sure about this
            {
                populateUserDropDownList();

                SqlConnection connection = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["DatabaseConnectionString"].ConnectionString);
                string commandString = "select [UserID], [Username], [Email], [Firstname], [Surname] from [User]";
                SqlCommand command = new SqlCommand(commandString, connection);
                command.CommandType = CommandType.Text;
                connection.Open();

                SqlDataReader reader = command.ExecuteReader();

                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        lblContent.Text += "<tr> <td>" + reader["UserID"] + "</td>";
                        lblContent.Text += "<td>" + reader["Username"] + "</td>";
                        lblContent.Text += "<td>" + reader["Email"] + "</td>";
                        lblContent.Text += "<td>" + reader["Firstname"] + "</td>";
                        lblContent.Text += "<td>" + reader["Surname"] + "</td>";
                    }
                }

                connection.Close();
                connection.Dispose();
                command.Dispose();
            }
        }

        private void populateUserDropDownList()
        {
            SqlConnection connection = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["DatabaseConnectionString"].ConnectionString);
            string commandString = "select [UserID], [Username] from [User]";
            SqlCommand command = new SqlCommand(commandString, connection);
            command.CommandType = CommandType.Text;
            connection.Open();
            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                ListItem newItem = new ListItem();
                newItem.Text = reader["UserID"].ToString();
                newItem.Value = reader["UserID"].ToString();
                ddlUser.Items.Add(newItem);
            }
            ddlUser.Items.Insert(0, new ListItem("--Select ID--", "0"));
            connection.Close();
            connection.Dispose();
            command.Dispose();
        }

        protected void btnUsername_Click(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["DatabaseConnectionString"].ConnectionString);
            string commandString = "update [User] set [Username]=@Username where UserID=" + ddlUser.SelectedValue;
            SqlCommand command = new SqlCommand(commandString, connection);
            command.CommandType = CommandType.Text;
            command.Parameters.AddWithValue("@Username", txtUsername.Text);
            connection.Open();

            command.ExecuteNonQuery();

            connection.Close();
            connection.Dispose();
            command.Dispose();
            Response.Redirect("./ManageUsers.aspx");
        }

        protected void btnPassword_Click(object sender, EventArgs e)
        {
            if (txtPassword.Text == txtConfirmPassword.Text)
            {
                SqlConnection connection = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["DatabaseConnectionString"].ConnectionString);
                string commandString = "update [User] set [Password]=@Password where UserID=" + ddlUser.SelectedValue;
                SqlCommand command = new SqlCommand(commandString, connection);
                command.CommandType = CommandType.Text;
                command.Parameters.AddWithValue("@Password", PasswordHasher.HashPassword(txtPassword.Text));
                connection.Open();

                command.ExecuteNonQuery();

                connection.Close();
                connection.Dispose();
                command.Dispose();
                Response.Redirect("./ManageUsers.aspx");
            }
            else
            {
                lblMatchPasswords.Text = "Passwords do not match!";
            }
            
        }

        protected void btnEmail_Click(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["DatabaseConnectionString"].ConnectionString);
            string commandString = "update [User] set [Email]=@Email where UserID=" + ddlUser.SelectedValue;
            SqlCommand command = new SqlCommand(commandString, connection);
            command.CommandType = CommandType.Text;
            command.Parameters.AddWithValue("@Email", txtEmail.Text);
            connection.Open();

            command.ExecuteNonQuery();

            connection.Close();
            connection.Dispose();
            command.Dispose();
            Response.Redirect("./ManageUsers.aspx");
        }

        protected void btnFirstname_Click(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["DatabaseConnectionString"].ConnectionString);
            string commandString = "update [User] set [FirstName]=@FirstName where UserID=" + ddlUser.SelectedValue;
            SqlCommand command = new SqlCommand(commandString, connection);
            command.CommandType = CommandType.Text;
            command.Parameters.AddWithValue("@FirstName", txtFirstname.Text);
            connection.Open();

            command.ExecuteNonQuery();

            connection.Close();
            connection.Dispose();
            command.Dispose();
            Response.Redirect("./ManageUsers.aspx");
        }

        protected void btnSurname_Click(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["DatabaseConnectionString"].ConnectionString);
            string commandString = "update [User] set [Surname]=@Surname where UserID=" + ddlUser.SelectedValue;
            SqlCommand command = new SqlCommand(commandString, connection);
            command.CommandType = CommandType.Text;
            command.Parameters.AddWithValue("@Surname", txtSurname.Text);
            connection.Open();

            command.ExecuteNonQuery();

            connection.Close();
            connection.Dispose();
            command.Dispose();
            Response.Redirect("./ManageUsers.aspx");
        }
    }

    
}
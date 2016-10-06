using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Black_Veggies_Group_Project_Take2
{
    public partial class Logout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["User"] == null && Session["Admin"] == null)
            {
                Response.Redirect("./UserLogin.aspx");
            }

            if (Session["User"] != null)
            {
                lblGoodbye.Text = "Sad to see you go: " + Session["User"];
            }

            if (Session["Admin"] != null)
            {
                lblGoodbye.Text = "Sad to see you go: " + Session["Admin"];
            }


        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session["User"] = null;
            Session["Admin"] = null;
            Response.Redirect("./UserLogin.aspx");
        }
    }
}
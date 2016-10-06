using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Black_Veggies_Group_Project_Take2
{
    public partial class MasterPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Admin"] != null)
            {
                signInLink.Visible = false;
                logoutLink.Visible = true;
                adminLink.Visible = true;
            }

            if (Session["User"] != null)
            {
                signInLink.Visible = false;
                logoutLink.Visible = true;
            }
        }
    }
}
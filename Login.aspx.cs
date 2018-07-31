using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Web.Security;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void loginButton_Click(object sender, EventArgs e)
    {
        if (FormsAuthentication.Authenticate(username.Text, password.Text))
        {
            FormsAuthentication.RedirectFromLoginPage(username.Text, true);
        }
        else
        {
            loginLabel.Text = "Invalid user!" +
                              "\nPlease, enter admin(Username: comp229, password:comp229)";
        }
    }
}
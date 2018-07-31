using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SearchBlack : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        AdvancedSearchOuputLabel.Text = "The " + QuickSearchTextBox.Text + " book is in the library.";
    }

    protected void AdvancedSearchBooksButton_Click(object sender, EventArgs e)
    {
        AdvancedSearchOuputLabel.Text = "The " + NameOfBookTextBox.Text + " book is in the library.";
    }
}
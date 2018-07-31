using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Setup : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void ThemeApplyButton_Click(object sender, EventArgs e)
    {
        switch(ColorThemeRadioButtonList.SelectedValue)
        {
            case "White":
                Response.Redirect("~/Setup.aspx");
                break;

            case "Black":
                Response.Redirect("~/SetupBlack.aspx");
                break;
        }

        //if(e.Equals(true) == (ColorThemeRadioButtonList.SelectedValue == "White"))
        //{
        //    Response.Redirect("~/Setup.aspx");
        //}
        //else
        //{
        //    Response.Redirect("~/SetupBlack.aspx");
        //}

        //if(e.ToString() == (ColorThemeRadioButtonList.SelectedValue = "White"))
        //{
        //    Response.Redirect("~/Setup.aspx");
        //}
        //else
        //{
        //    Response.Redirect("~/SetupBlack.aspx");
        //}
    }

    protected void ColorThemeRadioButtonList_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
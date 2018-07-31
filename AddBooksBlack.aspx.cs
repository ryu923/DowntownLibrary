using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddBooksBlack : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void AddBooksButton_Click(object sender, EventArgs e)
    {
        AddBooksOuputLabel.Text = "You added book name is: " + NameOfBookSP.Text + "<br />";
        AddBooksOuputLabel.Text += "Book's author is : " + AuthorSP.Text + "<br />";
        AddBooksOuputLabel.Text += "Publish year: " + ISBNSP.Text + "<br />";
        AddBooksOuputLabel.Text += "Book's genre is : " + GenreListBox.Text + "<br /><br />";
        AddBooksOuputLabel.Text += "Book data was stored." + "<br />" + "Thank you for your Book adding.";

        ((List<CollectionOfBooks>)Application["books"]).Add(new CollectionOfBooks
        {
            NameOfBook = NameOfBookSP.Text,
            Author = AuthorSP.Text,
            ISBN = ISBNSP.Text
        });

        Response.Redirect("booksBlack.aspx");
    }

    protected void CancellBookButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("AddBooksBlack.aspx");
    }

    protected void NumberOfPagesCustomValidator_ServerValidate(object source, ServerValidateEventArgs args)
    {
        int pageNumber = int.Parse(args.Value);

        if (pageNumber <= 0)
        {
            args.IsValid = false;
        }
    }

    protected void NameOfFriendCustomValidator_ServerValidate(object source, ServerValidateEventArgs args)
    {
        if (args.IsValid = (LentRadioButtonList.SelectedValue == "Yes"))
        {
            args.IsValid = false;
        }
        else
        {
            args.IsValid = true;
        }

        //bool friendChoose = bool.Parse(args.Value);

        //if(friendChoose == true)
        //{
        //    args.IsValid = false;
        //}
    }
}
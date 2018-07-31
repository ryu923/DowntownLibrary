using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;
using System.Configuration;

public partial class AddBooks : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (!IsPostBack)
        //{
        //    SqlConnection conn;
        //    SqlCommand nameOfBookComm;
        //    SqlCommand authorComm;
        //    SqlCommand ISBNComm;
        //    SqlCommand numberOfPageComm;
        //    SqlDataReader reader;

        //    string connectionString = ConfigurationManager.ConnectionStrings["DowntownLibrary"].ConnectionString;

        //    conn = new SqlConnection(connectionString);

        //    nameOfBookComm = new SqlCommand("SELECT NameOfBook FROM Books", conn);
        //    authorComm = new SqlCommand("SELECT Author FROM Books", conn);
        //    ISBNComm = new SqlCommand("SELECT ISBN FROM Books", conn);
        //    numberOfPageComm = new SqlCommand("SELECT NumberofPages FROM Books", conn);

        //    try
        //    {
        //        conn.Open();

        //        reader = nameOfBookComm.ExecuteReader();
        //        NameOfBookSP

        //    }
        //    catch ()
        //    {

        //    }
        //}
    }

    protected void AddBooksButton_Click(object sender, EventArgs e)
    {
        if(Page.IsValid)
        {
            SqlConnection conn;
            SqlCommand comm;
            SqlDataReader reader;

            string connectionString = ConfigurationManager.ConnectionStrings["DowntownLibrary"].ConnectionString;

            conn = new SqlConnection(connectionString);

            comm = new SqlCommand(  "INSERT INTO Books (NameOfBook, Author, ISBN, Genre, NumberofPages, LentToFriend, NameOfFriend, PublishYear, Comments) " +
                                    "VALUES (@NameOfBook, @Author, @ISBN, @Genre, @NumberofPages, @LentToFriend, @NameOfFriend, @PublishYear, @Comments)", conn);

            comm.Parameters.Add("@NameOfBook", System.Data.SqlDbType.NVarChar, 50);
            comm.Parameters["@NameOfBook"].Value = NameOfBookSP.Text;

            comm.Parameters.Add("@Author", System.Data.SqlDbType.NVarChar, 50);
            comm.Parameters["@Author"].Value = AuthorSP.Text;

            comm.Parameters.Add("@ISBN", System.Data.SqlDbType.Int);
            comm.Parameters["@ISBN"].Value = Convert.ToInt32(ISBNSP.Text);

            comm.Parameters.Add("@Genre", System.Data.SqlDbType.NVarChar, 50);
            comm.Parameters["@Genre"].Value = GenreListBox.SelectedItem.Value;

            comm.Parameters.Add("@NumberofPages", System.Data.SqlDbType.Int);
            comm.Parameters["@NumberofPages"].Value = Convert.ToInt32(NumberOfPagesTextBox.Text);

            comm.Parameters.Add("@LentToFriend", System.Data.SqlDbType.NVarChar, 50);
            comm.Parameters["@LentToFriend"].Value = LentRadioButtonList.SelectedItem.Value;

            comm.Parameters.Add("@NameOfFriend", System.Data.SqlDbType.NVarChar, 50);
            comm.Parameters["@NameOfFriend"].Value = TextBox1.Text;

            comm.Parameters.Add("@PublishYear", System.Data.SqlDbType.Date);
            comm.Parameters["@PublishYear"].Value = TextBox2.Text;

            comm.Parameters.Add("@Comments", System.Data.SqlDbType.NVarChar, 50);
            comm.Parameters["@Comments"].Value = TextBox3.Text;

            try
            {
                conn.Open();

                comm.ExecuteNonQuery();

                //Response.Redirect("AddBooks.aspx");
            }
            catch
            {
                AddBooksOuputLabel.Text = "Error submitting the add book request!";
            }
            finally
            {
                AddBooksOuputLabel.Text = "You added book name is: " + NameOfBookSP.Text + "<br />";
                AddBooksOuputLabel.Text += "Book's author is : " + AuthorSP.Text + "<br />";
                AddBooksOuputLabel.Text += "Publish year: " + ISBNSP.Text + "<br />";
                AddBooksOuputLabel.Text += "Book's genre is : " + GenreListBox.Text + "<br /><br />";
                AddBooksOuputLabel.Text += "Book data was stored." + "<br />" + "Thank you for your Book adding.";

                conn.Close();
            }
        }

        //AddBooksOuputLabel.Text = "You added book name is: " + NameOfBookSP.Text + "<br />";
        //AddBooksOuputLabel.Text += "Book's author is : " + AuthorSP.Text + "<br />";
        //AddBooksOuputLabel.Text += "Publish year: " + ISBNSP.Text + "<br />";
        //AddBooksOuputLabel.Text += "Book's genre is : " + GenreListBox.Text + "<br /><br />";
        //AddBooksOuputLabel.Text += "Book data was stored." + "<br />" + "Thank you for your Book adding.";

        //((List<CollectionOfBooks>)Application["books"]).Add(new CollectionOfBooks
        //                                                    {
        //                                                        NameOfBook = NameOfBookSP.Text,
        //                                                        Author = AuthorSP.Text,
        //                                                        ISBN = ISBNSP.Text
        //                                                    });

        //Response.Redirect("books.aspx");
    }

    protected void CancellBookButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("AddBooks.aspx");
    }

    protected void NumberOfPagesCustomValidator_ServerValidate(object source, ServerValidateEventArgs args)
    {
        int pageNumber = int.Parse(args.Value);

        if(pageNumber <= 0)
        {
            args.IsValid = false;
        }
    }

    protected void NameOfFriendCustomValidator_ServerValidate(object source, ServerValidateEventArgs args)
    {
        if(args.IsValid = (LentRadioButtonList.SelectedValue == "Yes"))
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
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class BooksBlack : System.Web.UI.Page
{
    public string connString = "Data Source=DESKTOP-ALD8LCS;Initial Catalog=DowntownLibrary;Integrated Security=True";

    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(connString);

        SqlCommand comm = new SqlCommand("SELECT BookID, NameOfBook, Author, ISBN, NumberOfPages FROM Books", conn);

        SqlDataReader reader;

        try
        {
            conn.Open();

            reader = comm.ExecuteReader();
            //booksRepeater.DataSource = reader;
            //booksRepeater.DataBind();
            booksList.DataSource = reader;
            booksList.DataBind();

            reader.Close();
        }
        finally
        {
            conn.Close();
        }
    }

    protected void BookDetailsButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/BookDetails.aspx");
    }
}
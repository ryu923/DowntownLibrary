using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class BookDetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            LoadBooksList();
        }
    }

    private void LoadBooksList()
    {
        SqlConnection conn;
        SqlCommand comm;
        SqlDataReader reader;

        string connectionString = ConfigurationManager.ConnectionStrings["DowntownLibrary"].ConnectionString;

        conn = new SqlConnection(connectionString);

        comm = new SqlCommand("SELECT BookID, NameOfBook FROM Books", conn);

        try
        {
            conn.Open();

            reader = comm.ExecuteReader();

            booksList.DataSource = reader;
            booksList.DataValueField = "BookID";
            booksList.DataTextField = "NameOfBook";
            booksList.DataBind();

            reader.Close();
        }
        catch
        {
            dbErrorLabel.Text = "Error loading the list of books!<br />";
        }
        finally
        {
            conn.Close();
        }

        updateButton.Enabled = false;
        deleteButton.Enabled = false;

        nameOfBookTextBox.Text = "";
        authorTextBox.Text = "";
        ISBNTextBox.Text = "";
        numberOfPagesTextBox.Text = "";
    }

    protected void selectButton_Click(object sender, EventArgs e)
    {
        SqlConnection conn;
        SqlCommand comm;
        SqlDataReader reader;

        string connectionString = ConfigurationManager.ConnectionStrings["DowntownLibrary"].ConnectionString;

        conn = new SqlConnection(connectionString);

        comm = new SqlCommand("SELECT BookID, NameOfBook, Author, ISBN, NumberOfPages FROM Books", conn);

        comm.Parameters.Add("@BookID", System.Data.SqlDbType.Int);
        comm.Parameters["@BookID"].Value = booksList.SelectedItem.Value;

        try
        {
            conn.Open();

            reader = comm.ExecuteReader();

            if(reader.Read())
            {
                bookIDTextBox.Text = reader["BookID"].ToString();
                nameOfBookTextBox.Text = reader["NameOfBook"].ToString();
                authorTextBox.Text = reader["Author"].ToString();
                ISBNTextBox.Text = reader["ISBN"].ToString();
                numberOfPagesTextBox.Text = reader["NumberOfPages"].ToString();
            }

            reader.Close();

            updateButton.Enabled = true;
            deleteButton.Enabled = true;
        }
        catch
        {
            dbErrorLabel.Text = "Error loading the list of books!<br />";
        }
        finally
        {
            conn.Close();
        }
    }

    protected void updateButton_Click(object sender, EventArgs e)
    {
        SqlConnection conn;
        SqlCommand comm;
        SqlDataReader reader;

        string connectionString = ConfigurationManager.ConnectionStrings["DowntownLibrary"].ConnectionString;

        conn = new SqlConnection(connectionString);

        comm = new SqlCommand("UPDATE Books SET NameOfBook=@NameOfBook, Author=@Author, ISBN=@ISBN, NumberOfPages=@NumberOfPages WHERE BookID=@BookID", conn);

        //comm.Parameters.Add("@NameOfBook", System.Data.SqlDbType.NVarChar, 50);
        //comm.Parameters["@NameOfBook"].Value = nameOfBookTextBox.Text;

        //comm.Parameters.Add("@Author", System.Data.SqlDbType.NVarChar, 50);
        //comm.Parameters["@Author"].Value = authorTextBox.Text;

        //comm.Parameters.Add("@ISBN", System.Data.SqlDbType.Int);
        //comm.Parameters["@ISBN"].Value = authorTextBox.Text;

        //comm.Parameters.Add("@NumberOfPages", System.Data.SqlDbType.Int);
        //comm.Parameters["@NumberOfPages"].Value = authorTextBox.Text;

        //comm.Parameters.Add("@BookID", System.Data.SqlDbType.Int);
        //comm.Parameters["@BookID"].Value = booksList.SelectedItem.Value;

        comm.Parameters.Add("@NameOfBook", System.Data.SqlDbType.NVarChar, 50);
        comm.Parameters["@NameOfBook"].Value = nameOfBookTextBox.Text;

        comm.Parameters.Add("@Author", System.Data.SqlDbType.NVarChar, 50);
        comm.Parameters["@Author"].Value = authorTextBox.Text;

        comm.Parameters.Add("@ISBN", System.Data.SqlDbType.Int);
        comm.Parameters["@ISBN"].Value = Convert.ToInt32(ISBNTextBox.Text);

        comm.Parameters.Add("@NumberOfPages", System.Data.SqlDbType.Int);
        comm.Parameters["@NumberOfPages"].Value = Convert.ToInt32(numberOfPagesTextBox.Text);

        comm.Parameters.Add("@BookID", System.Data.SqlDbType.Int);
        comm.Parameters["@BookID"].Value = Convert.ToInt32(bookIDTextBox.Text);

        try
        {
            conn.Open();

            comm.ExecuteNonQuery();

            dbErrorLabel.Text = "Completed a book Updating!<br />";
        }
        catch
        {
            dbErrorLabel.Text = "Updating a book Error!<br />";
        }
        finally
        {
            conn.Close();
        }

        LoadBooksList();
    }

    protected void deleteButton_Click(object sender, EventArgs e)
    {
        SqlConnection conn;
        SqlCommand comm;
        SqlDataReader reader;

        string connectionString = ConfigurationManager.ConnectionStrings["DowntownLibrary"].ConnectionString;

        conn = new SqlConnection(connectionString);

        comm = new SqlCommand(  "DELETE FROM Books" +
                                "WHERE BookID=" + bookIDTextBox.Text, conn);

        //comm.Parameters.Add("@BookID", System.Data.SqlDbType.Int);
        //comm.Parameters["@BookID"].Value = booksList.SelectedItem.Value;
        //comm.Parameters.AddWithValue("@BookID", System.Data.SqlDbType.Int);
        //comm.Parameters["@BookID"].Value = Convert.ToInt32(bookIDTextBox.Text);

        comm.CommandType = CommandType.Text;
        comm.CommandText = "DELETE FROM Books WHERE BookID='" + bookIDTextBox.Text + "'";

        try
        {
            conn.Open();

            comm.ExecuteReader();

            dbErrorLabel.Text = "Completed a book deleting!<br />";
        }
        catch
        {
            dbErrorLabel.Text = "Deleting a book Error!<br />";
        }
        finally
        {
            conn.Close();
        }

        LoadBooksList();
    }
}
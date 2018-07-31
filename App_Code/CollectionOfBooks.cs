using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for CollectionOfBooks
/// </summary>
public class CollectionOfBooks
{
    public CollectionOfBooks()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    // PRIVATE INSTANCE VARIABLES(FIELDS)
    private string nameOfBook;
    private string author;
    private string isbn;

    // PUBLIC PROPERTIES
    public string NameOfBook
    {
        get
        {
            return nameOfBook;
        }
        set
        {
            nameOfBook = value;
        }
    }

    public string Author
    {
        get
        {
            return author;
        }
        set
        {
            author = value;
        }
    }

    public string ISBN
    {
        get
        {
            return isbn;
        }
        set
        {
            isbn = value;
        }
    }

    public List<CollectionOfBooks> GetBooks()
    {
        return (List < CollectionOfBooks >) HttpContext.Current.Application["books"];
    }
}
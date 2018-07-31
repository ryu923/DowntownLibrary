<%@ Page Title="" Language="C#" MasterPageFile="~/Library.master" AutoEventWireup="true" CodeFile="Books.aspx.cs" Inherits="Books" %>

<%-- Name: David(DaeWoong) Ryu || Student No: 300830801--%>

<%@ Import Namespace = "System.Data.SqlClient" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Collection of Books</h1>

    <%-- Q1-b. Display books from database --%>
    <%--<asp:Label ID="booksLabel" runat="server" />--%>
    <%--<asp:Repeater ID="booksRepeater" runat="server">
        <ItemTemplate>
            BookID: 
            <strong><%# Eval("BookID") %></strong><br />

            Name of Book: 
            <strong><%# Eval("NameOfBook") %></strong><br />

            Author:
            <strong><%# Eval("Author") %></strong><br />

            ISBN:
            <strong><%# Eval("ISBN") %></strong><br />

            Number of pages:
            <strong><%# Eval("NumberOfPages") %></strong><br />
        </ItemTemplate>

        <SeparatorTemplate>
            <hr />
        </SeparatorTemplate>
    </asp:Repeater>--%>

    <asp:DataList ID="booksList" runat="server" OnSelectedIndexChanged="booksList_SelectedIndexChanged">

        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <ItemStyle BackColor="#E3EAEB" />

        <ItemTemplate>
            <asp:Literal ID="extraDetailsLiteral" runat="server" EnableViewState="false" />

            BookID: 
            <strong><%# Eval("BookID") %></strong><br />

            Name of Book: 
            <strong><%# Eval("NameOfBook") %></strong><br />

            Author:
            <strong><%# Eval("Author") %></strong><br />

            ISBN:
            <strong><%# Eval("ISBN") %></strong><br />

            Number of pages:
            <strong><%# Eval("NumberOfPages") %></strong><br />
        </ItemTemplate>

        <SeparatorTemplate>
            <hr />
        </SeparatorTemplate>
    </asp:DataList>

    <p><asp:Button ID="BookDetailsButton" runat="server" Text="Book Details" OnClick="BookDetailsButton_Click" /></p>

    <p><a href="Addbooks.aspx">Add more books</a></p>

    <%-- Name: David(DaeWoong) Ryu || Student No: 300830801--%>
    <asp:ListView ID="ListView1" runat="server" DataSourceID="ObjectDataSource1">
        <AlternatingItemTemplate>
            <li style="background-color: #FFFFFF; color: #284775;">NameOfBook:
                <asp:Label Text='<%# Eval("NameOfBook") %>' runat="server" ID="NameOfBookLabel" /><br />
                Author:
                <asp:Label Text='<%# Eval("Author") %>' runat="server" ID="AuthorLabel" /><br />
                ISBN:
                <asp:Label Text='<%# Eval("ISBN") %>' runat="server" ID="ISBNLabel" /><br />
            </li>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <li style="background-color: #999999;">NameOfBook:
                <asp:TextBox Text='<%# Bind("NameOfBook") %>' runat="server" ID="NameOfBookTextBox" /><br />
                Author:
                <asp:TextBox Text='<%# Bind("Author") %>' runat="server" ID="AuthorTextBox" /><br />
                ISBN:
                <asp:TextBox Text='<%# Bind("ISBN") %>' runat="server" ID="ISBNTextBox" /><br />
                <asp:Button runat="server" CommandName="Update" Text="Update" ID="UpdateButton" /><asp:Button runat="server" CommandName="Cancel" Text="Cancel" ID="CancelButton" /></li>
        </EditItemTemplate>
        <EmptyDataTemplate>
            No data was returned.
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <li style="">NameOfBook:
                <asp:TextBox Text='<%# Bind("NameOfBook") %>' runat="server" ID="NameOfBookTextBox" /><br />
                Author:
                <asp:TextBox Text='<%# Bind("Author") %>' runat="server" ID="AuthorTextBox" /><br />
                ISBN:
                <asp:TextBox Text='<%# Bind("ISBN") %>' runat="server" ID="ISBNTextBox" /><br />
                <asp:Button runat="server" CommandName="Insert" Text="Insert" ID="InsertButton" /><asp:Button runat="server" CommandName="Cancel" Text="Clear" ID="CancelButton" /></li>
        </InsertItemTemplate>
        <ItemSeparatorTemplate>
            <br />
        </ItemSeparatorTemplate>
        <ItemTemplate>
            <li style="background-color: #E0FFFF; color: #333333;">NameOfBook:
                <asp:Label Text='<%# Eval("NameOfBook") %>' runat="server" ID="NameOfBookLabel" /><br />
                Author:
                <asp:Label Text='<%# Eval("Author") %>' runat="server" ID="AuthorLabel" /><br />
                ISBN:
                <asp:Label Text='<%# Eval("ISBN") %>' runat="server" ID="ISBNLabel" /><br />
            </li>
        </ItemTemplate>
        <LayoutTemplate>
            <ul runat="server" id="itemPlaceholderContainer" style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                <li runat="server" id="itemPlaceholder" />
            </ul>
            <div style="text-align: center; background-color: #5D7B9D; font-family: Verdana, Arial, Helvetica, sans-serif; color: #FFFFFF;">
            </div>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <li style="background-color: #E2DED6; font-weight: bold; color: #333333;">NameOfBook:
                <asp:Label Text='<%# Eval("NameOfBook") %>' runat="server" ID="NameOfBookLabel" /><br />
                Author:
                <asp:Label Text='<%# Eval("Author") %>' runat="server" ID="AuthorLabel" /><br />
                ISBN:
                <asp:Label Text='<%# Eval("ISBN") %>' runat="server" ID="ISBNLabel" /><br />
            </li>
        </SelectedItemTemplate>
    </asp:ListView>

    <%--<h3>New Books</h3>
    <fieldset>
        <a href="#"><asp:Image ID="NewBook1" runat="server" ImageUrl="~/Images/NewBook1.jpg" Width="150px" Height="220px" /></a>
        <a href="#"><asp:Image ID="NewBook2" runat="server" ImageUrl="~/Images/NewBook2.jpg" Width="150px" Height="220px" /></a>
        <a href="#"><asp:Image ID="NewBook3" runat="server" ImageUrl="~/Images/NewBook3.jpg" Width="150px" Height="220px" /></a>
    </fieldset>

    <h3>Popular Books</h3>
    <fieldset>
        <a href="#"><asp:Image ID="PopularBook1" runat="server" ImageUrl="~/Images/PopularBook1.jpg" Width="150px" Height="220px" /></a>
        <a href="#"><asp:Image ID="PopularBook2" runat="server" ImageUrl="~/Images/PopularBook2.jpg" Width="150px" Height="220px" /></a>
        <a href="#"><asp:Image ID="PopularBook3" runat="server" ImageUrl="~/Images/PopularBook3.jpg" Width="150px" Height="220px" /></a>
    </fieldset>

    <h3>Kids Books</h3>
    <fieldset>
        <a href="#"><asp:Image ID="KidsBook1" runat="server" ImageUrl="~/Images/KidsBook1.jpg" Width="150px" Height="220px" /></a>
        <a href="#"><asp:Image ID="KidsBook2" runat="server" ImageUrl="~/Images/KidsBook2.jpg" Width="150px" Height="220px" /></a>
        <a href="#"><asp:Image ID="KidsBook3" runat="server"  ImageUrl="~/Images/KidsBook3.jpg" Width="150px" Height="220px" /></a>
    </fieldset>--%>
    <asp:ObjectDataSource runat="server" ID="ObjectDataSource1" SelectMethod="GetBooks" TypeName="CollectionOfBooks"></asp:ObjectDataSource>
</asp:Content>

<%-- Name: David(DaeWoong) Ryu || Student No: 300830801--%>
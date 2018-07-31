<%-- Name: David(DaeWoong) Ryu || Student No: 300830801--%>
<%-- Q2. Create Book Details Page - Update Book Information--%>
<%@ Page Title="" Language="C#" MasterPageFile="~/Library.master" AutoEventWireup="true" CodeFile="BookDetails.aspx.cs" Inherits="BookDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Books Details</h1>

    <p>
        <asp:Label ID="dbErrorLabel" ForeColor="Red" runat="server" /><br /><br />

        Select a Book to update:<br />
        <asp:DropDownList ID="booksList" runat="server" />
        <asp:Button ID="selectButton" runat="server" Text="Select" OnClick="selectButton_Click" />
    </p>

    <p>
        <span style="width:150px; text-align:right; display:inline-block">BookID: </span>
        <asp:TextBox ID="bookIDTextBox" runat="server" ReadOnly="True" /><br />   
    </p>

    <p>
        <span style="width:150px; text-align:right; display:inline-block">Name of Book: </span>
        <asp:TextBox ID="nameOfBookTextBox" runat="server" /><br />   
    </p>
     
    <p>
        <span style="width:150px; text-align:right; display:inline-block">Author: </span>
        <asp:TextBox ID="authorTextBox" runat="server" /><br />
    </p>
<%-- Name: David(DaeWoong) Ryu || Student No: 300830801--%>
    <p>        
        <span style="width:150px; text-align:right; display:inline-block">ISBN: </span>
        <asp:TextBox ID="ISBNTextBox" runat="server" /><br />
    </p>

    <p>
        <span style="width:150px; text-align:right; display:inline-block">Number of Pages: </span>
        <asp:TextBox ID="numberOfPagesTextBox" runat="server" /><br />
    </p>

    <p>
        <asp:Button ID="updateButton" 
                    runat="server" 
                    Text="Update Book" 
                    Width="200px"
                    Enabled="False" 
                    OnClick="updateButton_Click" />

        <%-- Q3. Create delete button option --%>
        <asp:Button ID="deleteButton" 
                    runat="server" 
                    Text="Delete Book" 
                    Width="200px"
                    Enabled="False"
                    OnClick="deleteButton_Click" />
    </p>
</asp:Content>

<%-- Name: David(DaeWoong) Ryu || Student No: 300830801--%>
<%@ Page Title="" Language="C#" MasterPageFile="~/LibraryBlack.master" AutoEventWireup="true" CodeFile="SearchBlack.aspx.cs" Inherits="SearchBlack" %>

<%-- Name: David(DaeWoong) Ryu || Student No: 300830801--%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Search Books</h1>

    <h3 ID="QuickSearchH3">Quick Search</h3>      
    <p ID="QuickSearchParagraph">
        <asp:TextBox    ID="QuickSearchTextBox"
                        runat="server"
                        Width="300px"
                        Height="30px"
                        value="Search the library collection"
                        onFocus="value=''"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="Search" Width="70px" Height="35px" OnClick="Button1_Click"/>
    </p>

    <h3 ID="AdvancedSearchH3">Advanced Search</h3>
    <table>
        <tr>
            <td ID="TableData1">
                <label>Name of Book: </label>
            </td>
            <td>
                <asp:TextBox ID="NameOfBookTextBox" runat="server"></asp:TextBox>
            </td>
        </tr>

        <tr>
            <td ID="TableData1">
                <label>Name of Author: </label>
            </td>
            <td>
                <asp:TextBox ID="NameOfAuthorTextBox" runat="server"></asp:TextBox>
            </td>
        </tr>
<%-- Name: David(DaeWoong) Ryu || Student No: 300830801--%>
        <tr>
            <td ID="TableData1">
                <label>Publish Year: </label>
            </td>
            <td>
                <asp:TextBox ID="PublisherYearTextBox" runat="server"></asp:TextBox>
            </td>
        </tr>

        <tr>
            <td ID="TableData1">
                <label>Genre: </label>
            </td>
            <td>
                <asp:ListBox ID="GenreListBox" runat="server" Rows="5">
                    <asp:ListItem>Mystery</asp:ListItem>
                    <asp:ListItem>Romance</asp:ListItem>
                    <asp:ListItem>Science Fiction</asp:ListItem>
                    <asp:ListItem>Kids</asp:ListItem>
                    <asp:ListItem>Biography</asp:ListItem>
                    <asp:ListItem>Business &amp; Personal Finance</asp:ListItem>
                    <asp:ListItem>Food and Drink</asp:ListItem>
                    <asp:ListItem>Health &amp; Wellness</asp:ListItem>
                    <asp:ListItem>History</asp:ListItem>
                </asp:ListBox>
            </td>
        </tr>
    </table>

<%-- Name: David(DaeWoong) Ryu || Student No: 300830801--%>

    <p ID="AdvancedSearchButtonParagraph">
        <asp:Button ID="AdvancedSearchBooksButton" runat="server" Text="Advanced Search" Width="150px" OnClick="AdvancedSearchBooksButton_Click"/>
    </p>

    <p ID="AdvancedSearchOutputParagraph">
        <asp:Label ID="AdvancedSearchOuputLabel" runat="server" Text=""></asp:Label>
    </p>
</asp:Content>

<%-- Name: David(DaeWoong) Ryu || Student No: 300830801--%>
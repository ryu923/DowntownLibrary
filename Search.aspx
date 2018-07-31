<%@ Page Title="" Language="C#" MasterPageFile="~/Library.master" AutoEventWireup="true" CodeFile="Search.aspx.cs" Inherits="Search" %>

<%-- Name: David(DaeWoong) Ryu || Student No: 300830801--%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Search Books</h1>

    <%--<h3 ID="QuickSearchH3">Quick Search</h3>      
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

    <p ID="AdvancedSearchButtonParagraph">
        <asp:Button ID="AdvancedSearchBooksButton" runat="server" Text="Advanced Search" Width="150px" OnClick="AdvancedSearchBooksButton_Click"/>
    </p>

    <p ID="AdvancedSearchOutputParagraph">
        <asp:Label ID="AdvancedSearchOuputLabel" runat="server" Text=""></asp:Label>
    </p>

<%-- Name: David(DaeWoong) Ryu || Student No: 300830801--%>

    <%-- Q4-a. Modify Search Page --%>
    <h3>Genre Search</h3>
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DowntownLibrary %>" SelectCommand="SELECT [Genre] FROM [Books]"></asp:SqlDataSource>

    <asp:DropDownList   ID="GenreDropDownList" 
                        runat="server" 
                        DataSourceID="SqlDataSource1" 
                        DataTextField="Genre" 
                        DataValueField="Genre"
                        Width="200px">
    </asp:DropDownList>
    
    <asp:Button ID="GenreSearchButton" runat="server" Text="Genre Search" Width="100px" OnClick="GenreSearchButton_Click" /><br /><br />
    
    <h3>Name of friend that the book is landed to </h3><br />

    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DowntownLibrary %>" SelectCommand="SELECT [NameOfFriend] FROM [Books]"></asp:SqlDataSource>
    <asp:DropDownList   ID="FriendDropDownList" 
                        runat="server" 
                        DataSourceID="SqlDataSource2" 
                        DataTextField="NameOfFriend" 
                        DataValueField="NameOfFriend"
                        Width="200px">
    </asp:DropDownList>

    <asp:Button runat="server" Text="Friend Search" Width="100px" Height="35px" OnClick="Unnamed1_Click" />

    <p ID="AdvancedSearchOutputParagraph">
        <asp:Label ID="AdvancedSearchOuputLabel" runat="server" Text=""></asp:Label>
    </p>


</asp:Content>

<%-- Name: David(DaeWoong) Ryu || Student No: 300830801--%>
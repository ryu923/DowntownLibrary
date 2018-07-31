<%@ Page Title="" Language="C#" MasterPageFile="~/LibraryBlack.master" AutoEventWireup="true" CodeFile="AddBooksBlack.aspx.cs" Inherits="AddBooksBlack" %>

<%-- Name: David(DaeWoong) Ryu || Student No: 300830801--%>
<%--Register--%>
<%@ Register TagPrefix="sp" TagName="AddSummary" Src="~/AddSummary.ascx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Add Your Books on Downtown Library</h1>

    <sp:AddSummary ID="NameOfBookSP" runat="server" LabelText="Name of Book: " />
    
    <sp:AddSummary ID="AuthorSP" runat="server" LabelText="Author: " />

    <sp:AddSummary ID="ISBNSP" runat="server" LabelText="ISBN: " />
    
    <asp:Table ID="AddBookTable" runat="server">
        <asp:TableRow>
            <asp:TableCell HorizontalAlign="Right" Width="200">
                <label>Genre: </label>
            </asp:TableCell>
            <asp:TableCell>
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
            </asp:TableCell>
        </asp:TableRow>

        <asp:TableRow>
            <asp:TableCell Width="200" HorizontalAlign="Right">
                <label>Number of pages: </label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="NumberOfPagesTextBox" runat="server" TextMode="Number" ControlToValidate="NumberOfPagesTextBox"></asp:TextBox>

                <asp:RequiredFieldValidator ID="NumberOfPagesValidator" 
                                            runat="server" 
                                            ErrorMessage="Number of page is required" 
                                            Display="Dynamic"
                                            ControlToValidate="NumberOfPagesTextBox"
                                            SetFocusOnError="True">
                </asp:RequiredFieldValidator>

                <asp:CustomValidator    ID="NumberOfPagesCustomValidator" 
                                        runat="server" 
                                        ErrorMessage="Positive Integer is required" 
                                        ControlToValidate="NumberOfPagesTextBox"
                                        Display="Dynamic" 
                                        OnServerValidate="NumberOfPagesCustomValidator_ServerValidate" 
                                        SetFocusOnError="True">
                </asp:CustomValidator>
            </asp:TableCell>
        </asp:TableRow>

        <%-- Name: David(DaeWoong) Ryu || Student No: 300830801--%>
        <asp:TableRow>
            <asp:TableCell Width="200" HorizontalAlign="Right">
                <label>Lent to a friend: </label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:RadioButtonList ID="LentRadioButtonList" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem Text="Yes" Value="Yes"></asp:ListItem>
                    <asp:ListItem Text="No" Value="No"></asp:ListItem>
                </asp:RadioButtonList>
            </asp:TableCell>
        </asp:TableRow>

        <asp:TableRow>
            <asp:TableCell HorizontalAlign="Right" Width="200">
                <label>Name of a friend: </label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>

                <%--Validator : Check for Yes--%>
                <asp:CustomValidator    ID="CustomValidator1" 
                                        runat="server" 
                                        ErrorMessage="Name of Friend is required" 
                                        Display="Dynamic" 
                                        SetFocusOnError="True" 
                                        ControlToValidate="LentRadioButtonList" 
                                        OnServerValidate="NameOfFriendCustomValidator_ServerValidate"></asp:CustomValidator>
            </asp:TableCell>
        </asp:TableRow>

        <%-- Name: David(DaeWoong) Ryu || Student No: 300830801--%>
        <asp:TableRow>
            <asp:TableCell HorizontalAlign="Right" Width="200">
                <label>Publish Year: </label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>

        <asp:TableRow>
            <asp:TableCell Width="200" HorizontalAlign="Right">
                <label>Comments </label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="TextBox3" runat="server" Rows="5" TextMode="MultiLine" Width="300px" Height="100px"></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>

    <p ID="AddBooksButtonParagraph">
        <asp:Button ID="AddBooksButton" runat="server" Text="Save" Width="100px" OnClick="AddBooksButton_Click" />
        <asp:Button ID="CancellBookButton" runat="server" Text="Cancel" Width="100px" OnClick="CancellBookButton_Click" />
    </p>

    <p ID="AddBooksOuputLabelParagraph">
        <asp:Label ID="AddBooksOuputLabel" runat="server" Text=""></asp:Label>
    </p>

    <%--<p>
        <asp:ValidationSummary ID="ValidationSummary" runat="server" />
    </p>--%>
</asp:Content>

<%-- Name: David(DaeWoong) Ryu || Student No: 300830801--%>
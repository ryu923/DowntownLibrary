<%@ Page Title="" Language="C#" MasterPageFile="~/LibraryBlack.master" AutoEventWireup="true" CodeFile="SetupBlack.aspx.cs" Inherits="SetupBlack" %>

<%-- Name: David(DaeWoong) Ryu || Student No: 300830801--%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Setup Page</h1>

    <h3>Change Color Scheme</h3>

    <p>
        <asp:RadioButtonList ID="ColorThemeRadioButtonList" runat="server" RepeatDirection="Horizontal">
            <asp:ListItem Text="White Theme" Value="White">White Theme</asp:ListItem>
            <asp:ListItem Text="Black Theme" Value="Black">Black Theme</asp:ListItem>
        </asp:RadioButtonList>
    </p>

    <p>
        <asp:Button ID="ThemeApplyButton" runat="server" Text="Apply Theme" OnClick="ThemeApplyButton_Click" />
    </p>
</asp:Content>

<%-- Name: David(DaeWoong) Ryu || Student No: 300830801--%>
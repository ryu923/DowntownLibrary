<%-- Name: David(DaeWoong) Ryu || Student No: 300830801--%>
<%@ Page Title="DowntownLibrary Login" Language="C#" MasterPageFile="~/Library.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Login</h1>

    <p>
        Username:<br />
        <asp:TextBox id="username" runat="server" />
    </p>

    <p>
        Password:<br />
        <asp:TextBox id="password" runat="server" TextMode="Password" />
    </p>

    <p>
        <asp:Button id="loginButton" runat="server" Text="Login" OnClick="loginButton_Click" />
    </p>

    <asp:Label ID="loginLabel" runat="server" Text=""></asp:Label>
</asp:Content>

<%-- Name: David(DaeWoong) Ryu || Student No: 300830801--%>
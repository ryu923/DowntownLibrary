<%@ Page Title="" Language="C#" MasterPageFile="~/Library.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%-- Name: David(DaeWoong) Ryu || Student No: 300830801--%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server" >
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server" >
    <h1>Welcome to Downtown Library</h1>

    <p>
        Downtown Library will be recognized as the world's leading library by informing and inspiring Toronto and its communities,
        making us all more resilient, more knowledgeable, more connected and more successful.
    </p>

    <p>
        Downtown Library provides free and equitable access to services which meet the changing needs of Torontonians.
        The Library preserves and promotes universal access to a broad range of human knowledge, experience, information and ideas in a welcoming and supportive environment.
    </p>
<%-- Name: David(DaeWoong) Ryu || Student No: 300830801--%>
    <p>
        <asp:Image  ID="LibraryImage"
                    runat="server"
                    ImageUrl="~/Images/LibraryImage.png"
                    width="400"
                    height="300"
                    ImageAlign="Right" />

        Toronto Public Library's mission is to provide free and equitable access to high quality customer driven services.<br /><br />
        Whether you talk to our staff in person at one of our branches, or contact us through the telephone or email, our staff have been trained to provide service that is: courteous, competent, timely, and helps you resolve your issues and concerns.<br /><br />
        We value your feedback and welcome any comments you may have to help improve our programs and services.
    </p>

    <p>
        <asp:Button ID="PageSetupButton" runat="server" Text="Page Setup" Width="100px" OnClick="PageSetupButton_Click" />
    </p>
</asp:Content>

<%-- Name: David(DaeWoong) Ryu || Student No: 300830801--%>
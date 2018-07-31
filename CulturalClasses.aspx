<%@ Page Title="" Language="C#" MasterPageFile="~/Library.master" AutoEventWireup="true" CodeFile="CulturalClasses.aspx.cs" Inherits="CulturalClasses" %>

<%-- Name: David(DaeWoong) Ryu || Student No: 300830801--%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Cultural Classes</h1>

    <h3 id="CultralClassesH3">What's New</h3>
    <table>
        <tr>
            <td id="CultralClassesTd">
                <asp:Image ID="CuluralClass1" runat="server" ImageUrl="~/Images/CulturalClass1.jpg" />
            </td>
            <td id="CultralClassesTd2">
                <h4><a href="#">Artists in the Library</a></h4>
                Celebrate the love of art in neighbourhoods outside of the downtown core.
                In partnership with the Toronto Arts Council.
            </td>
        </tr>
<%-- Name: David(DaeWoong) Ryu || Student No: 300830801--%>       
        <tr>
            <td id="CultralClassesTd">
                <asp:Image ID="CuluralClass2" runat="server" ImageUrl="~/Images/CulturalClass2.jpg" />
            </td>
            <td id="CultralClassesTd2">
                <h4><a href="#">Culture Days and the Library</a></h4>
                Check out free programs at branches across the city, on Fri. Sept. 29 and Sat. Sept. 30.
            </td>
        </tr>

        <tr>
            <td id="CultralClassesTd">
                <asp:Image ID="CuluralClass3" runat="server" ImageUrl="~/Images/CulturalClass3.jpg" />
            </td>
            <td id="CultralClassesTd2">
                <h4><a href="#">Business Inc.</a></h4>
                Business Inc. is a nine-week business program offered at the library in partnership with the City of Toronto and the Toronto Business Development Centre.
            </td>
        </tr>
    </table>
</asp:Content>

<%-- Name: David(DaeWoong) Ryu || Student No: 300830801--%>
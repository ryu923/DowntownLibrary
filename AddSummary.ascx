<%@ Control Language="C#" AutoEventWireup="true" CodeFile="AddSummary.ascx.cs" Inherits="AddSummary" ClassName="AddBookSummary" %>

<%-- Name: David(DaeWoong) Ryu || Student No: 300830801--%>
<script runat="server">
    public string LabelText
    {
        set
        {
            myLabel.Text = value;
        }
    }

    public string Text
    {
        get
        {
            return myTextBox.Text;
        }
    }
</script>

<%-- Name: David(DaeWoong) Ryu || Student No: 300830801--%>
<p>
    <asp:Table runat="server">
        <asp:TableRow>
            <asp:TableCell VerticalAlign="Middle" HorizontalAlign="Right">
                <asp:Label ID="myLabel" runat="server" Width="200px" Font-Bold="True" />
            </asp:TableCell>

            <asp:TableCell>
                <asp:TextBox ID="myTextBox" runat="server" Text="" Width="250" BackColor="#99FFCC" />
                <asp:RequiredFieldValidator ID="AddBookSummaryValidator" 
                                            runat="server" 
                                            ErrorMessage="This is Required." 
                                            ControlToValidate="myTextBox" 
                                            Display="Dynamic">
                </asp:RequiredFieldValidator>
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>
</p>
<%-- Name: David(DaeWoong) Ryu || Student No: 300830801--%>
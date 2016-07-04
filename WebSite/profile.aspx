<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="profile.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style18
        {
            width: 227px;
            height: 25px;
        }
        .style19
        {
            width: 544px;
            height: 25px;
        }
        .style20
        {
            height: 25px;
        }
        .style15
        {
            width: 227px;
            height: 450px;
        }
        .style16
        {
            width: 544px;
            height: 450px;
        }
        .style17
        {
            height: 450px;
        }
        .style13
        {
            width: 227px;
        }
        .style14
        {
            width: 544px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td class="style18">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Welcome
                <asp:Label ID="Label3" runat="server" Text="Label" Enabled="False"></asp:Label>
            </td>
            <td class="style19">
                &nbsp;</td>
            <td class="style20">
                <asp:LinkButton ID="LinkButton2" runat="server" onclick="LinkButton2_Click" 
                    ForeColor="Red">My Profile</asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Home.aspx" 
                    onclick="LinkButton1_Click">Sign Out</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td class="style15" align="left" style="vertical-align: top">
                <br />
                <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="LinkButton3" runat="server" Font-Underline="False" 
                    onclick="LinkButton3_Click">My Files</asp:LinkButton>
                <br />
                <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="LinkButton4" runat="server" Font-Underline="False" 
                    onclick="LinkButton4_Click">Upload Files</asp:LinkButton>
            </td>
            <td class="style16" style="vertical-align: top">
                <asp:Label ID="Label4" runat="server" Text="Label" Visible="False"></asp:Label>
                <asp:Label ID="Label5" runat="server" Text="Label" Visible="False"></asp:Label>
                <br />
                <br />
                <asp:GridView ID="GridView2" runat="server" AllowPaging="True" 
                    AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" 
                    Height="184px" Width="444px">
                    <Columns>
                        <asp:BoundField DataField="uid" HeaderText="uid" SortExpression="uid" />
                        <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                        <asp:BoundField DataField="uname" HeaderText="uname" SortExpression="uname" />
                        <asp:BoundField DataField="mail" HeaderText="mail" SortExpression="mail" />
                        <asp:BoundField DataField="mobile" HeaderText="mobile" 
                            SortExpression="mobile" />
                        <asp:BoundField DataField="dob" HeaderText="dob" SortExpression="dob" />
                        <asp:BoundField DataField="usertype" HeaderText="usertype" 
                            SortExpression="usertype" />
                        <asp:BoundField DataField="status" HeaderText="status" 
                            SortExpression="status" />
                    </Columns>
                </asp:GridView>
                <br />
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:efficientConnectionString %>" 
                    SelectCommand="SELECT [uid], [name], [uname], [mail], [mobile], [dob], [usertype], [status] FROM [dataowner_registration] WHERE (([uname] = @uname) AND ([uid] = @uid))">
                    <SelectParameters>
                        <asp:SessionParameter Name="uname" SessionField="uname" Type="String" />
                        <asp:SessionParameter Name="uid" SessionField="id" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td class="style17">
            </td>
        </tr>
        <tr>
            <td class="style13">
                &nbsp;</td>
            <td class="style14">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>


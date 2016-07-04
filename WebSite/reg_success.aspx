<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="reg_success.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style13
        {
            width: 114px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td>
                Congrulations ! Registration successful...<asp:Label 
                    ID="Label15" runat="server" Text="Label"></asp:Label>
                <asp:Label ID="Label16" runat="server" Text="Label"></asp:Label>
                <br />
                Thank you</td>
        </tr>
        <tr>
            <td>
                Security Code is sent to +&quot;this&quot;+ address.</td>
        </tr>
        <tr>
            <td align="center" style="vertical-align: top">
                <strong>Registration details 
                <br />
                <br />
                </strong>
                <br />
                <table class="style1" style="height: 163px; width: 37%">
                    <tr>
                        <td align="left" class="style13">
                            <asp:Label ID="Label1" runat="server" Enabled="False" Text="User Id:"></asp:Label>
                        </td>
                        <td align="right">
                            <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="left" class="style13">
                            <asp:Label ID="Label2" runat="server" Enabled="False" Text="User Name:"></asp:Label>
                        </td>
                        <td align="right">
                            <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="left" class="style13">
                            <asp:Label ID="Label3" runat="server" Text="Password:"></asp:Label>
                        </td>
                        <td align="right">
                            <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="left" class="style13">
                            <asp:Label ID="Label4" runat="server" Text="Email Id:"></asp:Label>
                        </td>
                        <td align="right">
                            <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="left" class="style13">
                            <asp:Label ID="Label5" runat="server" Text="Mobile:"></asp:Label>
                        </td>
                        <td align="right">
                            <asp:Label ID="Label12" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="left" class="style13">
                            <asp:Label ID="Label6" runat="server" Text="D.O.B:"></asp:Label>
                        </td>
                        <td align="right">
                            <asp:Label ID="Label13" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="left" class="style13">
                            <asp:Label ID="Label7" runat="server" Text="User Type:"></asp:Label>
                        </td>
                        <td align="right">
                            <asp:Label ID="Label14" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                </table>
                <br />
                Move to
                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Home.aspx">Login</asp:HyperLink>
&nbsp;page...<br />
                <br />
                <br />
                Any modifictions required in the above mentioned details can be performed by 
                loging into your account.  
                <br />
                <br />
            </td>
        </tr>
    </table>
</asp:Content>


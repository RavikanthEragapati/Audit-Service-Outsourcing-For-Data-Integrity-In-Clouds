<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="forgotpwd.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style13
        {
            width: 121px;
        }
        .style14
        {
            width: 140px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="margin-left: 80px">
        <strong>Forgot password</strong><br />
        <br />
        Please enter the below requested details to retrieve your password. Password 
        will be sent to your Email address that was used during the registration 
        process.</p>
    <p style="margin-left: 80px">
        You can&#39;t retrieve your Password or any other details related to your account 
        with out knowing the minimum details, if that is the case please contact 
        Administrator on <a href="mailto:e.ravikanth@live.com">e.ravikanth@live.com</a> 
        Or call us on +91-7893519280.</p>
    <p>
        <table align="center" class="style1" style="height: 158px; width: 31%">
            <tr>
                <td class="style13">
                    <asp:Label ID="Label2" runat="server" Text="User Name*"></asp:Label>
                </td>
                <td class="style14">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style13">
                    <asp:Label ID="Label3" runat="server" Text="Email ID*"></asp:Label>
                </td>
                <td class="style14">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style13">
                    <asp:Label ID="Label4" runat="server" Text="D.O.B*"></asp:Label>
                </td>
                <td class="style14">
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style13">
                    <asp:Label ID="Label5" runat="server" Text="User Type*"></asp:Label>
                </td>
                <td class="style14">
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style13">
                    &nbsp;</td>
                <td align="right" class="style14">
                    <asp:Button ID="Button1" runat="server" Text="Submit" />
                </td>
            </tr>
        </table>
        <br />
    </p>
</asp:Content>


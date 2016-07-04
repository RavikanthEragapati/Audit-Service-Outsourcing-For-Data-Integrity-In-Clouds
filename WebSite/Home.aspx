<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <style type="text/css">
    .style8
    {
        width: 439px;
    }
    .style9
    {
        width: 439px;
        height: 95px;
    }
    .style10
    {
        width: 439px;
        height: 156px;
    }
    .style11
    {
        width: 958px;
    }
        .style13
        {
            width: 508px;
            height: 83px;
        }
        .style14
        {
            width: 101px;
        }
        .style15
        {
            width: 148px;
        }
        .style16
        {
            height: 35px;
        }
        .style17
        {
            width: 148px;
            height: 35px;
        }
        .style18
        {
            width: 101px;
            height: 36px;
        }
        .style19
        {
            width: 148px;
            height: 36px;
        }
    </style>

</asp:Content>

<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <table class="style1" style="height: 368px">
        <tr>
            <td class="style13" style="vertical-align: top" align="center">
                <br />
                <strong>Log in</strong><br />
                <br />
                <br />
                <table class="style1" style="height: 152px; width: 57%">
                    <tr>
                        <td align="left" class="style14">
                            <asp:Label ID="Label2" runat="server" Text="User Name"></asp:Label>
                        </td>
                        <td align="left" class="style15">
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ControlToValidate="TextBox1" ErrorMessage="RequiredFieldValidator" 
                                ForeColor="Red">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="left" class="style18">
                            <asp:Label ID="Label3" runat="server" Text="Password"></asp:Label>
                        </td>
                        <td align="left" class="style19">
                            <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="left" class="style16">
                            <asp:Label ID="Label4" runat="server" Text="Security Key"></asp:Label>
                        </td>
                        <td align="left" class="style17">
                            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="left" class="style16" colspan="2">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ControlToValidate="TextBox2" ErrorMessage="RequiredFieldValidator" 
                                ForeColor="Red">*  key that is sent to you at the time of registration</asp:RequiredFieldValidator>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" />
                        </td>
                    </tr>
                    </table>
                <br />
                <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/forgotpwd.aspx">Forgot Password!</asp:HyperLink>
                <br />
                <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/resendkey.aspx">Resend My Security Key!</asp:HyperLink>
                <br />
                <strong>New User?</strong>
                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/reg.aspx">Sign Up</asp:HyperLink>
                .</td>
            <td align="left" style="vertical-align: top">
                <asp:Image ID="Image2" runat="server" Height="340px" 
                    ImageUrl="~/images/corner.png" Width="469px" />
            </td>
        </tr>
        </table>
</asp:Content>



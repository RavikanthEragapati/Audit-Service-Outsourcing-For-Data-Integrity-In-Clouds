<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="upload.aspx.cs" Inherits="_Default" %>

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
        .style21
        {
            width: 102px;
        }
        .style22
        {
            width: 209px;
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
                <asp:LinkButton ID="LinkButton2" runat="server" onclick="LinkButton2_Click">My Profile</asp:LinkButton>
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
                    onclick="LinkButton4_Click" ForeColor="Red">Upload Files</asp:LinkButton>
            </td>
            <td class="style16" style="vertical-align: top">
                <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
                <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <strong>&nbsp;Upload File:</strong><br />
                <table class="style1" style="height: 83px; width: 66%">
                    <tr>
                        <td class="style21">
                            File Id:</td>
                        <td class="style22">
                          <asp:TextBox ID="TextBox1" runat="server" Enabled="False"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style21">
                            File Name:</td>
                        <td class="style22">
                            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style21">
                            File:</td>
                        <td class="style22">
                            <asp:FileUpload ID="FileUpload1" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td class="style21">
                            Time And Date:</td>
                        <td class="style22">
                            <asp:TextBox ID="TextBox3" runat="server" Enabled="False"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style21">
                            &nbsp;</td>
                        <td class="style22">
                            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" />
                            <asp:Label ID="Label4" runat="server" Text="*"></asp:Label>
                        </td>
                    </tr>
                </table>
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


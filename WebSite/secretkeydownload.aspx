<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="secretkeydownload.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style13
        {
            width: 477px;
        }
        .style14
        {
            width: 82px;
        }
        .style15
        {
            width: 82px;
            height: 30px;
        }
        .style16
        {
            height: 30px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="style1" style="height: 367px; width: 89%">
        <tr>
            <td class="style13" style="vertical-align: top">
                <br />
                For Security reasons the secret Key required to download this file will be sent 
                to your mail id.<br />
                Please Enter your Valid E-Mail Id in the below box:<br />
                <br />
                <asp:TextBox ID="TextBox1" runat="server" Height="33px" Width="300px"></asp:TextBox>
                <br />
                <br />
                <asp:Button ID="Button1" runat="server" Text="Submit" />
                <br />
                <br />
                <asp:Label ID="Label2" runat="server" ForeColor="Red" 
                    Text="Secret Key has been sent to your mail."></asp:Label>
                <br />
                <asp:Label ID="Label3" runat="server" ForeColor="Red" 
                    Text="Please enter your secret key on the right side form to download the file ---&gt;"></asp:Label>
            </td>
            <td>
                <table align="center" class="style1" style="height: 117px; width: 61%">
                    <tr>
                        <td class="style15">
                            <asp:Label ID="Label4" runat="server" Text="E-Mail Id"></asp:Label>
                        </td>
                        <td class="style16">
                            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style15">
                            <asp:Label ID="Label5" runat="server" Text="Password"></asp:Label>
                        </td>
                        <td class="style16">
                            <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style14">
                            <asp:Button ID="Button2" runat="server" Text="Button" />
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>


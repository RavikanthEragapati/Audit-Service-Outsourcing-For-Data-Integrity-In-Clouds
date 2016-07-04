<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="search.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style14
        {
            height: 86px;
        }
        .style15
        {
            height: 84px;
        }
        .style16
        {
            height: 55px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td align="center" class="style15">
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" 
                    Font-Size="XX-Large" Text="Indoos Search"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="center" class="style14">
                <asp:TextBox ID="TextBox1" runat="server" BorderColor="#999966" 
                    BorderStyle="Outset" Height="45px" Width="499px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="center" class="style16">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Search" />
            </td>
        </tr>
    </table>
</asp:Content>


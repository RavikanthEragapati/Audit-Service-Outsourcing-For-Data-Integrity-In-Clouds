<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="searchuser1.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style13
        {
            height: 302px;
        }
        .style14
        {
            height: 302px;
            width: 293px;
        }
        .style15
        {
            height: 302px;
            width: 284px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1" style="height: 423px; width: 99%;">
        <tr>
            <td class="style14" style="vertical-align: top">
                <asp:Panel ID="Panel3" runat="server" Height="414px" Width="252px">
                    <asp:Label ID="lbl_error" runat="server" Text="lbl_error"></asp:Label>
                    &nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lbl_entxt" runat="server" Text="lbl_entxt"></asp:Label>
                    &nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lbl_text" runat="server" Text="lbl_text"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Italic="True" 
                        Font-Size="XX-Large" Text="Indoos Search"></asp:Label>
                    <br />
                    <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Italic="True" 
                        Font-Size="Smaller" Text="Indoos Search"></asp:Label>
                    <br />
                    <asp:TextBox ID="TextBox6" runat="server" Height="24px" Width="216px"></asp:TextBox>
                    <br />
                    <asp:Label ID="Label1" runat="server" Text="New Search"></asp:Label>
                    <br />
                </asp:Panel>
            </td>
            <td class="style15" style="vertical-align: top">
                <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Italic="True" 
                    ForeColor="#0066FF" Text="Zero-Knowledge based encryption"></asp:Label>
                <br />
                <asp:Panel ID="Panel4" runat="server" Height="414px" ScrollBars="Both" 
                    Width="244px">
                    <asp:Label ID="downloadfiles" runat="server" align="left" 
    class="style22" Font-Size="Small" ForeColor="#006699" 
    style="position: absolute; top: 428px; left: 203px;" valign="top"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    <asp:Literal ID="Literal1" runat="server"></asp:Literal>
                </asp:Panel>
            </td>
            <td class="style13" style="vertical-align: top">
                <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Italic="True" 
                    ForeColor="#0066FF" Text="Zero-Knowledge based decryption"></asp:Label>
                <br />
                <asp:Panel ID="Panel5" runat="server" Height="414px" ScrollBars="Both" 
                    Width="252px">
                    <br />
                    <asp:Literal ID="Literal2" runat="server"></asp:Literal>
                </asp:Panel>
            </td>
        </tr>
    </table>
</asp:Content>


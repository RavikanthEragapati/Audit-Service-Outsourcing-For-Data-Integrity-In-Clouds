<%@ Page Title="Indoos" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="reg.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style13
        {
            width: 743px;
            height: 83px;
        }
        .style14
        {
            width: 161px;
        }
        .style15
        {
            width: 217px;
        }
        .style16
        {
            width: 161px;
            height: 30px;
        }
        .style17
        {
            width: 217px;
            height: 30px;
        }
        .style18
        {
            height: 30px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1" style="height: 368px">
        <tr>
            <td class="style13" style="vertical-align: top" align="center">
                <br />
                <strong>Registration Form</strong><br />
                <br />
                <br />
                <table align="right" class="style1">
                    <tr>
                        <td align="right" class="style14">
                            <asp:Label ID="Label2" runat="server" Text="User Id:"></asp:Label>
                        </td>
                        <td align="center" class="style15">
                            <asp:TextBox ID="TextBox3" runat="server" Enabled="False"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
                        </td>
                        <td align="left">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="right" class="style14">
                            <asp:Label ID="Label3" runat="server" Text="Name:"></asp:Label>
                        </td>
                        <td align="center" class="style15">
                            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                            *</td>
                        <td align="left">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ControlToValidate="TextBox4" ErrorMessage="RequiredFieldValidator" 
                                ForeColor="Red">Enter your Name.</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" class="style14">
                            <asp:Label ID="Label4" runat="server" Text="User Name:"></asp:Label>
                        </td>
                        <td align="center" class="style15">
                            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                            *</td>
                        <td align="left">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ControlToValidate="TextBox5" ErrorMessage="RequiredFieldValidator" 
                                ForeColor="Red">Enter UserName.</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" class="style14">
                            <asp:Label ID="Label5" runat="server" Text="Password:"></asp:Label>
                        </td>
                        <td align="center" class="style15">
                            <asp:TextBox ID="TextBox6" runat="server" TextMode="Password"></asp:TextBox>
                            *</td>
                        <td align="left">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                ControlToValidate="TextBox6" ErrorMessage="RequiredFieldValidator" 
                                ForeColor="Red">Password must.</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" class="style14">
                            <asp:Label ID="Label6" runat="server" Text="Conform Password:"></asp:Label>
                        </td>
                        <td align="center" class="style15">
                            <asp:TextBox ID="TextBox7" runat="server" TextMode="Password"></asp:TextBox>
                            *</td>
                        <td align="left">
                            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                                ControlToCompare="TextBox6" ControlToValidate="TextBox7" 
                                ErrorMessage="CompareValidator" ForeColor="Red">Password didn&#39;t match.</asp:CompareValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" class="style14">
                            <asp:Label ID="Label7" runat="server" Text="Email:"></asp:Label>
                        </td>
                        <td align="center" class="style15">
                            <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                            *</td>
                        <td align="left">
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                                ControlToValidate="TextBox8" ErrorMessage="RegularExpressionValidator" 
                                ForeColor="Red" 
                                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Enter valid Email address</asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" class="style14">
                            <asp:Label ID="Label8" runat="server" Text="Mobile"></asp:Label>
                        </td>
                        <td align="center" class="style15">
                            <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                            *</td>
                        <td align="left">
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                                ControlToValidate="TextBox9" ErrorMessage="RegularExpressionValidator" 
                                ForeColor="Red" ValidationExpression="^((\+)?(\d{2}[-]))?(\d{10}){1}?$">Enter valid no</asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" class="style16">
                            <asp:Label ID="Label9" runat="server" Text="D.O.B:"></asp:Label>
                        </td>
                        <td align="center" class="style17">
                            <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                            *</td>
                        <td align="left" class="style18">
                            <asp:Label ID="Label11" runat="server" Text="Label" Visible="False"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" class="style14">
                            <asp:Label ID="Label10" runat="server" Text="User Type"></asp:Label>
                        </td>
                        <td align="center" class="style15">
                            <asp:TextBox ID="TextBox11" runat="server" Enabled="False">Data Owner</asp:TextBox>
&nbsp;&nbsp;&nbsp;
                        </td>
                        <td align="left">
                            <asp:Label ID="Label12" runat="server" Text="Label" Visible="False"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" class="style14">
                            &nbsp;</td>
                        <td align="center" class="style15">
                            <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" />
                        </td>
                        <td align="left">
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
            <td align="left" style="vertical-align: top">
                <asp:Image ID="Image2" runat="server" Height="342px" 
                    ImageUrl="~/images/corner.png" Width="442px" />
            </td>
        </tr>
    </table>
</asp:Content>


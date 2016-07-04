<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="dataownerlogin.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style13
        {
            width: 227px;
        }
        .style14
        {
            width: 544px;
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
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="LinkButton3" runat="server" Font-Underline="False" 
                    onclick="LinkButton3_Click" ForeColor="Red">My Files</asp:LinkButton>
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="LinkButton4" runat="server" Font-Underline="False" 
                    onclick="LinkButton4_Click">Upload Files</asp:LinkButton>
            </td>
            <td class="style16" style="vertical-align: top">
                <asp:Label ID="Label4" runat="server" Text="Label" Visible="False"></asp:Label>
                <asp:Label ID="Label5" runat="server" Text="Label" Visible="False"></asp:Label>
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <strong>&nbsp;My Files :</strong><br />
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                    AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="fileid" 
                    DataSourceID="SqlDataSource1" PageSize="6">
                    <Columns>
                        <asp:BoundField DataField="doid" HeaderText="doid" SortExpression="doid" />
                        <asp:BoundField DataField="doname" HeaderText="doname" 
                            SortExpression="doname" />
                        <asp:BoundField DataField="fileid" HeaderText="fileid" ReadOnly="True" 
                            SortExpression="fileid" />
                        <asp:BoundField DataField="filename" HeaderText="filename" 
                            SortExpression="filename" />
                        <asp:BoundField DataField="time" HeaderText="time" SortExpression="time" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:efficientConnectionString %>" 
                    SelectCommand="SELECT [doid], [doname], [fileid], [filename], [time] FROM [upload] WHERE (([doid] = @doid) AND ([doname] = @doname))">
                    <SelectParameters>
                        <asp:SessionParameter Name="doid" SessionField="id" Type="String" />
                        <asp:SessionParameter Name="doname" SessionField="uname" Type="String" />
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


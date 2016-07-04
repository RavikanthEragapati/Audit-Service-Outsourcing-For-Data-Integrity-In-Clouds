<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="TPA.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style13
        {
            width: 203px;
        }
        .style14
        {
            width: 658px;
        }
        .style15
        {
            width: 203px;
            height: 392px;
        }
        .style16
        {
            width: 658px;
            height: 392px;
        }
        .style17
        {
            height: 392px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td class="style13">
                Welcome Administrator</td>
            <td class="style14">
                &nbsp;</td>
            <td>
                &nbsp;<asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Home.aspx">Sign out</asp:LinkButton>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style15" style="vertical-align: top">
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="LinkButton2" runat="server" onclick="LinkButton2_Click">Clients Details</asp:LinkButton>
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="LinkButton3" runat="server" onclick="LinkButton3_Click">Uploaded files Details</asp:LinkButton>
            </td>
            <td class="style16" style="vertical-align: top">
                <asp:Panel ID="Panel2" runat="server" Enabled="False" Height="413px" 
                    Visible="False">
                    <br />
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                        DataSourceID="SqlDataSource2" AllowPaging="True" AllowSorting="True" 
                        DataKeyNames="fileid" PageSize="6" Width="252px">
                        <Columns>
                            <asp:BoundField DataField="doid" HeaderText="doid" SortExpression="doid" />
                            <asp:BoundField DataField="doname" HeaderText="doname" 
                                SortExpression="doname" />
                            <asp:BoundField DataField="fileid" HeaderText="fileid" 
                                SortExpression="fileid" ReadOnly="True" />
                            <asp:BoundField DataField="filename" HeaderText="filename" 
                                SortExpression="filename" />
                            <asp:BoundField DataField="time" HeaderText="time" SortExpression="time" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:efficientConnectionString %>" 
                        SelectCommand="SELECT * FROM [upload]"></asp:SqlDataSource>
                </asp:Panel>
                <br />
                <asp:Panel ID="Panel1" runat="server" Enabled="False" Visible="False">
                    <br />
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                        AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" 
                        Height="246px">
                        <Columns>
                            <asp:BoundField DataField="uid" HeaderText="uid" SortExpression="uid" />
                            <asp:BoundField DataField="uname" HeaderText="uname" SortExpression="uname" />
                            <asp:BoundField DataField="mail" HeaderText="mail" SortExpression="mail" />
                            <asp:BoundField DataField="mobile" HeaderText="mobile" 
                                SortExpression="mobile" />
                            <asp:BoundField DataField="usertype" HeaderText="usertype" 
                                SortExpression="usertype" />
                        </Columns>
                    </asp:GridView>
                    <br />
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:efficientConnectionString %>" 
                        SelectCommand="SELECT [uid], [uname], [mail], [mobile], [usertype] FROM [dataowner_registration]">
                    </asp:SqlDataSource>
                </asp:Panel>
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


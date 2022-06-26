<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Formatting GridView.aspx.cs" Inherits="Grid.Formatting_GridView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="User_id" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="User_id" HeaderText="User id" Visible="false" ReadOnly="True" SortExpression="User_id" />
                <asp:BoundField DataField="User_Name" HeaderText="User Name" SortExpression="User_Name" />
                <asp:BoundField DataField="Joined_On" HeaderText="Joined On" SortExpression="Joined_On" dataformatstring="{0:d} " />
                <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PayConnectionString %>" SelectCommand="SELECT * FROM [Employee]"></asp:SqlDataSource>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Gridview.aspx.cs" Inherits="Gridview" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Height="221px" Width="719px" AutoGenerateColumns="False" DataKeyNames="cl_id" DataSourceID="SqlDataSource1">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="cl_id" HeaderText="Client ID" ReadOnly="True" SortExpression="cl_id" />
                <asp:BoundField DataField="cl_date" HeaderText="Date and Time" SortExpression="cl_date" />
                <asp:BoundField DataField="cl_name" HeaderText="Client Name" SortExpression="cl_name" />
                <asp:BoundField DataField="cl_address" HeaderText="Client Address" SortExpression="cl_address" />
                <asp:BoundField DataField="cl_contPerson" HeaderText="Contact Person" SortExpression="cl_contPerson" />
                <asp:BoundField DataField="cl_ContNo" HeaderText="Contact No." SortExpression="cl_ContNo" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:rcipune2017ConnectionString %>" DeleteCommand="DELETE FROM [rc_master] WHERE [cl_id] = @cl_id" InsertCommand="INSERT INTO [rc_master] ([cl_id], [cl_date], [cl_name], [cl_address], [cl_contPerson], [cl_ContNo]) VALUES (@cl_id, @cl_date, @cl_name, @cl_address, @cl_contPerson, @cl_ContNo)" SelectCommand="SELECT * FROM [rc_master]" UpdateCommand="UPDATE [rc_master] SET [cl_date] = @cl_date, [cl_name] = @cl_name, [cl_address] = @cl_address, [cl_contPerson] = @cl_contPerson, [cl_ContNo] = @cl_ContNo WHERE [cl_id] = @cl_id">
            <DeleteParameters>
                <asp:Parameter Name="cl_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="cl_id" Type="Int32" />
                <asp:Parameter Name="cl_date" Type="DateTime" />
                <asp:Parameter Name="cl_name" Type="String" />
                <asp:Parameter Name="cl_address" Type="String" />
                <asp:Parameter Name="cl_contPerson" Type="String" />
                <asp:Parameter Name="cl_ContNo" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="cl_date" Type="DateTime" />
                <asp:Parameter Name="cl_name" Type="String" />
                <asp:Parameter Name="cl_address" Type="String" />
                <asp:Parameter Name="cl_contPerson" Type="String" />
                <asp:Parameter Name="cl_ContNo" Type="String" />
                <asp:Parameter Name="cl_id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
    </form>
</body>
</html>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Prog3.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ProductID" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." style="margin-left: 13px" Width="963px">
    <Columns>
        <asp:BoundField DataField="ProductID" HeaderText="ProductID" ReadOnly="True" SortExpression="ProductID" />
        <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
        <asp:BoundField DataField="UnitPrice" HeaderText="UnitPrice" SortExpression="UnitPrice" />
        <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:UWPCS3870ConnectionString1 %>" DeleteCommand="DELETE FROM [Product] WHERE [ProductID] = @ProductID" InsertCommand="INSERT INTO [Product] ([ProductID], [ProductName], [UnitPrice], [Description]) VALUES (@ProductID, @ProductName, @UnitPrice, @Description)" SelectCommand="SELECT * FROM [Product]" UpdateCommand="UPDATE [Product] SET [ProductName] = @ProductName, [UnitPrice] = @UnitPrice, [Description] = @Description WHERE [ProductID] = @ProductID">
    <DeleteParameters>
        <asp:Parameter Name="ProductID" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="ProductID" Type="String" />
        <asp:Parameter Name="ProductName" Type="String" />
        <asp:Parameter Name="UnitPrice" Type="Decimal" />
        <asp:Parameter Name="Description" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="ProductName" Type="String" />
        <asp:Parameter Name="UnitPrice" Type="Decimal" />
        <asp:Parameter Name="Description" Type="String" />
        <asp:Parameter Name="ProductID" Type="String" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TestDataProvider.aspx.cs" Inherits="DemoWebForms.TestDataProvider" %>
<asp:Content ID="Content1" ContentPlaceHolderID="fauxContenu" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h1>DataProvider</h1>
    <asp:SqlDataSource ID="sqlSubCategories" runat="server" 
        ConnectionString='<%$ ConnectionStrings:AdventureWorks2014cs %>' 
        SelectCommand="SELECT [ProductSubcategoryID], [Name], [ProductCategoryID] FROM Production.ProductSubcategory">
    </asp:SqlDataSource>
    <asp:ListBox ID="ListBox1" runat="server" 
        DataSourceID="sqlSubCategories" 
        DataTextField="Name" 
        DataValueField="ProductSubcategoryID"></asp:ListBox>

</asp:Content>

<%@ Page Title="Test Ado.NET" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TestAdoNet.aspx.cs" Inherits="DemoWebForms.TestAdoNet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="fauxContenu" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Test Ado.NET</h1>
    <div>
        <asp:ListBox ID="lstSubCat" runat="server"></asp:ListBox>
    </div>

    <section>
        <asp:Button ID="Button1" runat="server" Text="Button 1" OnClick="Button1_Click" />
        <asp:Button ID="Button2" runat="server" Text="Button 2" OnClick="Button2_Click" />
        <asp:Button ID="Button3" runat="server" Text="Button 3" OnClick="Button2_Click" />
    </section>

</asp:Content>

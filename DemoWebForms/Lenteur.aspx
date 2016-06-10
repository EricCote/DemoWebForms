<%@ Page Title="Lenteur" Trace="true" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Lenteur.aspx.cs" Inherits="DemoWebForms.Lenteur" %>
<asp:Content ID="Content1" ContentPlaceHolderID="fauxContenu" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
       <h1>lenteur</h1>
    <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
    <asp:Button ID="Button2" runat="server" Text="Button" OnClick="Button2_Click" />
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Pays.aspx.cs" Inherits="DemoWebForms.Pays" %>
<asp:Content ID="Content1" ContentPlaceHolderID="fauxContenu" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Pays</h1>
    <asp:TextBox ID="txtFiltre" CssClass="form-control" runat="server"></asp:TextBox>
    <asp:Button ID="btnFiltre"  CssClass="btn" runat="server" Text="Filtrer" />
    <asp:GridView ID="grdPays" 
        BorderStyle="None"
        GridLines="None"
        CssClass="table table-striped"
        ItemType="DemoWebForms.Models.Country"
        SelectMethod="grdPays_GetData"
        runat="server"></asp:GridView>
</asp:Content>

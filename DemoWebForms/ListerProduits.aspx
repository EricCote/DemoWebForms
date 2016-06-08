<%@ Page Title=""   Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ListerProduits.aspx.cs" Inherits="DemoWebForms.ListerProduits" %>
<asp:Content ID="Content1" ContentPlaceHolderID="fauxContenu" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Lister Produits</h1>

    <section>
        <asp:DropDownList ID="drpCategories"  AutoPostBack="true" runat="server"></asp:DropDownList>
        <asp:DropDownList ID="drpSubCategories" AutoPostBack="true"  EnableViewState="false" runat="server"></asp:DropDownList>

    </section>

</asp:Content>

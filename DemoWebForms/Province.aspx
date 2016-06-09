<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Province.aspx.cs" Inherits="DemoWebForms.Province" %>
<%@ Register Src="~/ProvinceFiltre.ascx" TagPrefix="uc1" TagName="ProvinceFiltre" %>

<asp:Content ID="Content1" ContentPlaceHolderID="fauxContenu" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h1>Choisir Province</h1>
    <uc1:ProvinceFiltre runat="server" id="ProvinceFiltre" />
    <p>Vous avez choisi: <%= ProvinceFiltre.Pays %>,  
                         <%= ProvinceFiltre.Province %>  </p>

    <uc1:ProvinceFiltre runat="server" ID="ProvinceFiltre1" />
<uc1:ProvinceFiltre runat="server" ID="ProvinceFiltre2" />


</asp:Content>

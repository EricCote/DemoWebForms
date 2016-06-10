<%@ Page Title="Écriture" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Ecriture.aspx.cs" Inherits="DemoWebForms.Ecriture" %>
<asp:Content ID="Content1" ContentPlaceHolderID="fauxContenu" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Écriture</h1>
    <div>
        <asp:TextBox ID="txtCookie" runat="server"></asp:TextBox>
        <br />
        <asp:TextBox ID="txtSession" runat="server"></asp:TextBox>
        <br />
        <asp:TextBox ID="txtApplication" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="btnSave" runat="server" Text="Sauvegarder" OnClick="btnSave_Click"   />
        <br />
        <a href="Lecture.aspx">Lecture</a>
    </div>
</asp:Content>

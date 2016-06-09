<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Infolettre.aspx.cs" Inherits="DemoWebForms.Infolettre" %>
<asp:Content ID="Content1" ContentPlaceHolderID="fauxContenu" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<h1>Abonnement</h1>
    <p>Abonnez-vous à l'infolettre</p>
     <asp:validationsummary runat="server" CssClass="alert-danger" />
          <table class="table table-striped" >
             <thead>
                 <tr>
                     <td>&nbsp;</td>
                     <td>&nbsp;</td>
                     <td>&nbsp;</td>
                 </tr>
             </thead>
             <tr>
                 <td class="text-right"><label for="txtNom">Nom : </label></td>
                 <td>
                     <asp:TextBox ID="txtNom" runat="server" CssClass="form-control"></asp:TextBox>  
                 </td>
                 <td>
                     <asp:RequiredFieldValidator 
                             ID="nom1" 
                             runat="server" 
                             ErrorMessage="Nom Obligatoire"
                             Text="*"
                             class="text-danger"
                             ControlToValidate="txtNom"
                             ></asp:RequiredFieldValidator>
                 </td>
             </tr>
             <tr>
                 <td class="text-right"><label for="txtCouriel">Courriel : </label></td>
                 <td>
                     <asp:TextBox ID="txtCourriel"  CssClass="form-control" runat="server"></asp:TextBox>
                 </td>
                 <td>
                     <asp:RequiredFieldValidator 
                         ID="RequiredFieldValidator1" 
                         runat="server" 
                         ErrorMessage="Courriel obligatoire"
                         Text="*"
                         ControlToValidate="txtCourriel"
                         CssClass="text-danger" 
                         Display="Dynamic"
                         >
                     </asp:RequiredFieldValidator>
                     <asp:RegularExpressionValidator
                         ID="ValidateCourriel"
                         runat="server"
                         ErrorMessage="entrez un courriel valide"
                         ControlToValidate="txtCourriel"
                         Text="*"
                         Display="Dynamic"
                         ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                         cssClass="text-danger"></asp:RegularExpressionValidator>
                 </td>
             </tr>
          </table>
     <asp:Button OnClick="btnEnvoyer_Click" CssClass="btn" ID="btnEnvoyer" Text="Envoyer" runat="server"
       
                      />

    <hr />
    <hr />
    <asp:DetailsView 
        visible="false"
        ID="dlvAbb" 
        BorderStyle="None" 
        GridLines="None" 
        CssClass="table table-striped" 
        runat="server"
        ItemType="DemoWebForms.Models.Abonnement"
        insertmethod="dlvAbb_InsertItem"
        selectmethod="dlvAbb_GetItem"
        DefaultMode="Insert"
        
        >
        <Fields>
            <asp:CommandField 
                ShowInsertButton="True"
                InsertText="Oui"
                CancelText="Non"></asp:CommandField>
        </Fields>
        
    </asp:DetailsView>
</asp:Content>

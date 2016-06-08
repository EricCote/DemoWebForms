<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Validation.aspx.cs" Inherits="DemoWebForms.Validation" %>

    <asp:Content ID="bidon" ContentPlaceHolderID="fauxContenu" runat="server" >
       <link href="Content/bootstrap.css" rel="stylesheet" />
    
     </asp:Content>

    <asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <h1 class="text-center" >InfoLettre</h1>
     <p>Entrez vos informations pour vous abonner</p>
     <hr />
     <section class="col-md-6">
         <table class="table" >
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
             <tr>
                 <td class="text-right"><label for="txtAge">Age : </label></td>
                 <td>
                     <asp:TextBox ID="txtAge"  CssClass="form-control" runat="server"></asp:TextBox>

                 </td>
                 <td>
                     <asp:RangeValidator 
                         ControlToValidate="txtAge"
                         Type="Integer"
                         MinimumValue="18"
                         MaximumValue="125"  
                         ID="RangeValidator1" 
                         runat="server" 
                         ErrorMessage="Entre 18 et 125"
                         cssclass="text-danger"
                         text="*"
                         >
                         

                     </asp:RangeValidator>
                     </td>
             </tr>
             <tr>
                 <td class="text-right"><label for="txtDateDebut">Date Début : </label></td>
                 <td>
                     <asp:TextBox ID="txtDateDebut"  CssClass="form-control" runat="server"></asp:TextBox>
                 </td>
                 <td>
                     <asp:CompareValidator 
                         ID="CompareValidator2" 
                         runat="server" 
                         text="*"
                         ErrorMessage="Entrez une date de début valide"
                         ControlToValidate="txtDateDebut"
                         Operator="DataTypeCheck"
                         Type="Date"
                         cssClass="text-danger"

                         >

                     </asp:CompareValidator>
                 </td>
             </tr>
             <tr>
                 <td class="text-right"><label for="txtDateFin">Date Fin : </label></td>
                 <td>
                     <asp:TextBox ID="txtDateFin"  CssClass="form-control" runat="server"></asp:TextBox>
                 </td>
                 <td>
                     <asp:CompareValidator 
                         ID="CompareValidator1" 
                         runat="server" 
                         ErrorMessage="Date de début doit être avant date de fin"
                         Text="*"
                         ControlToValidate="txtDateFin"
                         Type="Date"
                         Operator="GreaterThan"
                         ControlToCompare="txtDateDebut"
                         CssClass="text-danger"
                         >

                     </asp:CompareValidator>

                 </td>
             </tr>
                        <tr>
                 <td class="text-right"><label for="txtVille">Ville : </label></td>
                 <td>
                     <asp:TextBox ID="txtVille"  CssClass="form-control" runat="server"></asp:TextBox>
                 </td>
                 <td>
                      <asp:CustomValidator 
                          ID="CustomValidator1" 
                          runat="server" 
                          ErrorMessage="Entrez une ville existante"
                          ControlToValidate="txtVille"
                          Text="*"
                          CssClass="text-danger"
                          OnServerValidate="CustomValidator1_ServerValidate"
                          
                          ></asp:CustomValidator>

                 </td>
             </tr>
             <tr>
                 <td class="text-right"></td>
                 <td>
                     <asp:Button ID="btnEnvoyer" runat="server" Text="Envoyer" 
                         CssClass="btn btn-default" /> 
                 </td>
             </tr>

         </table>

         <asp:ValidationSummary 
             ID="ValidationSummary1" 
             runat="server"
             CssClass="alert-danger" />

     </section>

</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ViewStateTests.aspx.cs" Inherits="DemoWebForms.ViewStateTests" %>
<asp:Content ID="x" runat="server" ContentPlaceHolderID="fauxContenu">

</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
   <h1 class="text-center">Infolettre</h1>
    <p>Entrez vos informations pour recevoir L'infoLettre.</p>
    <section>
        <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
        <br />
        <label>Nom :
            <asp:TextBox onChange="afficher('Le txtNom est modifié');" runat="server" ID="txtNom" class="form-control" /></label>
        <br />
        <label>Courriel :
            <asp:TextBox onChange="afficher('Le txtcourriel est modifié');" runat="server" ID="txtCourriel" class="form-control" />
        </label>
        <br />
        <label>
            Province :
            <asp:DropDownList onChange="afficher('Le drpProvince est modifié');" runat="server" ID="drpProvince" class="form-control">
            </asp:DropDownList>
        </label>
        <br />
        <label>
            Pays:
            <asp:DropDownList EnableViewState="false" onChange="afficher('Le drpPays est modifié');" runat="server" ID="drpPays" class="form-control">
            </asp:DropDownList>
        </label>
        <br />

        <label>Vip?
            <asp:CheckBox onClick="afficher('Le chkVip est modifié');" runat="server" ID="chkVip" class="form-control" />
        </label>
        <br />
        <asp:Button ID="btnEnvoyer" OnClick="btnEnvoyer_Click" OnClientClick="afficher('Le bouton est cliqué');" runat="server" Text="Envoyer" class="btn btn-default" />
        <br />

        <div class="col-xs-6 bg-primary" id="div1"></div>
        <div class="col-xs-6 bg-info" id="div2" runat="server" enableviewstate="false"></div>
    </section>
    <script>
        function afficher(texte) {
            var div1 = document.getElementById("div1");
            div1.innerHTML += "<br />" + texte;
        }

    </script>


</asp:Content>

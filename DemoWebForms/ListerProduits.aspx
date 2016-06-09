<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ListerProduits.aspx.cs" Inherits="DemoWebForms.ListerProduits" %>

<asp:Content ID="Content1" ContentPlaceHolderID="fauxContenu" runat="server">
    <link href="Content/bootstrap.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Lister Produits</h1>

    <section>
        <asp:ValidationSummary
            ID="ValidationSummary1"
            runat="server"
            CssClass="alert-danger" />
        <asp:DropDownList ID="drpCategories" DataTextField="Name" DataValueField="CategoryID" AutoPostBack="true" runat="server"></asp:DropDownList>
        <asp:DropDownList ID="drpSubCategories" DataTextField="Name" DataValueField="SubcategoryID" AutoPostBack="true" EnableViewState="false" runat="server"></asp:DropDownList>
        <br />
        <asp:GridView ID="grdProduits"
            CssClass="table table-striped"
            BorderStyle="None"
            GridLines="None"
            AutoGenerateColumns="false"
            runat="server"
            ItemType="DemoWebForms.Models.Product"
            SelectMethod="grdProduits_GetData"
            UpdateMethod="grdProduits_UpdateItem"
            DeleteMethod="grdProduits_DeleteItem"
            HeaderStyle-BackColor="Bisque"
            SelectedRowStyle-BackColor="pink"
            AllowPaging="true"
            PageSize="5"
            AllowSorting="true"
            DataKeyNames="ProductID">
            <Columns>
                <asp:CommandField SelectText="<span class='glyphicon glyphicon-list-alt' />" ShowSelectButton="True"></asp:CommandField>
                <asp:HyperLinkField DataNavigateUrlFields="Name" DataNavigateUrlFormatString="http://www.bing.com/search?q={0}" DataTextField="ProductID" HeaderText="No Produit"></asp:HyperLinkField>

                <asp:BoundField ControlStyle-CssClass="form-control" DataField="Name" HeaderText="Nom" SortExpression="Name" />
                <asp:TemplateField HeaderText="Couleur">
                    <ItemTemplate>
                        <div style="background-color: <%# Item.Color %>;">&nbsp;</div>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField ControlStyle-CssClass="form-control" DataField="ListPrice" SortExpression="ListPrice" DataFormatString="{0:c}" HeaderText="Prix" />
                <asp:BoundField ControlStyle-CssClass="form-control" DataField="SellStartDate" DataFormatString="{0:D}" SortExpression="SellStartDate" HeaderText="Date Début" />
                <asp:CommandField ShowEditButton="True" ShowDeleteButton="True"
                    EditText="<span class='glyphicon glyphicon-pencil' ></span>"
                    UpdateText="<span class='glyphicon glyphicon-ok' ></span>"
                    CancelText="<span class='glyphicon glyphicon-remove' ></span>"
                    DeleteText="<span class='glyphicon glyphicon-remove-sign' ></span>"></asp:CommandField>

            </Columns>

        </asp:GridView>

        <asp:DetailsView
            ID="DetailsView1"
            runat="server"
            CssClass="table table-striped"
            ItemType="DemoWebForms.Models.Product"
            SelectMethod="DetailsView1_GetItem"
            BorderStyle="None"
            GridLines="None">
        </asp:DetailsView>


    </section>

</asp:Content>


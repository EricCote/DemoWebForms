<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Heure.aspx.cs" Inherits="DemoWebForms.Heure" %>
<asp:Content ID="Content1" ContentPlaceHolderID="fauxContenu" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <img src="images/img10.jpg" width="800" />
    </div>
    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
    <br />
    <asp:Timer ID="Timer1" runat="server" Interval="60000" Enabled="true" >
    </asp:Timer>
    <asp:UpdateProgress ID="UpdateProgress1" DisplayAfter="500"  runat="server">
        <ProgressTemplate>
            <div class="alert-danger">Patientez!</div>
        </ProgressTemplate>
    </asp:UpdateProgress>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <Triggers>
            <asp:AsyncPostBackTrigger ControlID="btnEnvoyer" EventName="Click" />
            <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
        </Triggers>
        <ContentTemplate>        
            <asp:Label ID="Label2" runat="server" Text="">
            </asp:Label>
            <asp:Button ID="Button1" runat="server" Text="Button" />
        </ContentTemplate>
    </asp:UpdatePanel>
    <br />
    <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
    <br />
    <asp:Button ID="btnEnvoyer" runat="server" Text="Envoyer" />
    <br />
</asp:Content>


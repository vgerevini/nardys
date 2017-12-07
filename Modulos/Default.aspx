<%@ Page Title="" Language="C#" MasterPageFile="~/Modulos/Modulos.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Manager_Interna_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="contentInterna" runat="Server">
    <div class="bem-vindo">
        Bem Vindo a Área Restrita
    </div>
    <div class="bem-vindo-subtitulo">Nardy's Quadra & Bar</div>
    <div class="bem-vindo-usuario">
        Usuário:
        <asp:Label ID="lblUsuarioLogado" runat="server"></asp:Label>
    </div>
    <div class="bem-vindo-usuario">
        <asp:Label ID="lblVan" runat="server"></asp:Label>
    </div>
</asp:Content>


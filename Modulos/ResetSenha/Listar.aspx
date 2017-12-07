<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Modulos/Modulos.master" CodeFile="Listar.aspx.cs" Inherits="Modulos_ResetSenha_Listar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="contentInterna" runat="Server">

    <div id="title">
        <h1>
            <asp:Label ID="lblTitulo" runat="server"><%=Resources.Textos.Modulo_Reset_Senha_Titulo %></asp:Label>
        </h1>
        <br />
        <asp:Label ID="lblMensagem" runat="server" title="Digite o login do usuário Checklist Agência que deseja resetar a senha "><%=Resources.Textos.Modulo_Reset_Senha_Mensagem %></asp:Label>
    </div>
    <br />


    <div class="filtros">
        <div class="fields no-columns">
            <span>Login: </span>
            <asp:TextBox runat="server" ID="txtLogin" CssClass="frmTxt txtNumero" MaxLength="4" title="Informe o Login do usuário" AutoPostBack="true" OnTextChanged="txtLogin_TextChanged"></asp:TextBox>
            <asp:Label ID="lblNomeUsuario" runat="server"></asp:Label>
        </div>
    </div>
    <div class="btn-acoes">
        <asp:Button runat="server" ID="btnGerarSenha" CssClass="submit" Text="OK" OnClick="btnGerarSenha_Click" title="OK" Visible="false" />
    </div>

</asp:Content>

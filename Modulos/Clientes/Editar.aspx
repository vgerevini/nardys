<%@ Page ClientIDMode="AutoID" Title="" Language="C#" MasterPageFile="~/Modulos/Modulos.master" AutoEventWireup="true" CodeFile="Editar.aspx.cs" Inherits="Manager_Modulos_Clientes_Editar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="contentInterna" runat="Server">
    <asp:UpdateProgress ID="upgConteudo" runat="server" AssociatedUpdatePanelID="upConteudo">
        <ProgressTemplate>
            <div id="divBlockFormID" class="divBlockForm">
                <div class="overlay">
                    <!-- -->
                </div>
                <div class="txt"><%=Resources.Textos.Mensagem_Aguarde %></div>
            </div>
        </ProgressTemplate>
    </asp:UpdateProgress>

    <div id="title">
        <h1>
            <asp:Label ID="lblTitulo" runat="server"><%=Resources.Textos.Modulo_Cliente_Titulo_Cadastro %></asp:Label>
        </h1>
    </div>
    <br />

    <asp:UpdatePanel runat="server" ID="upConteudo">
        <ContentTemplate>

            <asp:PlaceHolder runat="server" ID="phSucesso" Visible="false">
                <div id="divFeedBackInsert" style="text-align: center; color: #3300FF;">
                    <asp:Literal runat="server" ID="ltlObs"></asp:Literal>
                </div>
            </asp:PlaceHolder>

        </ContentTemplate>
    </asp:UpdatePanel>

    <div class="fields">

        <label>
            <span>
                <asp:Label ID="lblNome" runat="server" AssociatedControlID="txtNome" title="Nome"><%=Resources.Textos.Modulo_Usuario_Nome %>*</asp:Label>
            </span>
            <asp:TextBox runat="server" ID="txtNome" CssClass="frmTxt" MaxLength="200" title="Informe o nome"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvNome" runat="server" ControlToValidate="txtNome" Display="Dynamic" title="Campo obrigatório"></asp:RequiredFieldValidator>
        </label>

        <label>
            <span>
                <asp:Label ID="lblTelefone" runat="server" AssociatedControlID="txtTelefone" title="Telefone"><%=Resources.Textos.Modulo_Cliente_Telefone %></asp:Label>
            </span>
            <asp:TextBox runat="server" ID="txtTelefone" CssClass="frmTxt" MaxLength="50" title="Informe o telefone"></asp:TextBox>
        </label>

    </div>
    <div class="fields">
        <label>
            <span>
                <asp:Label ID="lblCamposObrigatorios" runat="server" title="Campos obrigatórios"><%=Resources.Textos.Campos_Obrigatorios %></asp:Label>
            </span>
        </label>

    </div>

    <div class="btn-acoes2">
        <asp:PlaceHolder runat="server" ID="phOptions" Visible="true">
            <asp:Button runat="server" ID="btnCancelar" CssClass="cancelar" Text="Voltar" OnClick="btnCancelar_Click" CausesValidation="false" title="Cancelar" alt="Cancelar" />
            <asp:Button runat="server" ID="btnOK" CssClass="submit" Text="Salvar" OnClick="btnOK_Click" title="Salvar" alt="Salcar" />
        </asp:PlaceHolder>
    </div>

</asp:Content>

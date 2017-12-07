<%@ Page ClientIDMode="AutoID" Title="" Language="C#" MasterPageFile="~/Modulos/Modulos.master" AutoEventWireup="true" CodeFile="Editar.aspx.cs" Inherits="Manager_Modulos_Usuarios_Editar" %>

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
            <asp:Label ID="lblTitulo" runat="server"><%=Resources.Textos.Modulo_Usuario_Titulo_Cadastro %></asp:Label>
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
                <asp:Label ID="lblPerfil" runat="server" AssociatedControlID="ddlPerfil" title="Perfil"><%=Resources.Textos.Modulo_Usuario_Perfil %>*</asp:Label>
            </span>
            <asp:DropDownList runat="server" ID="ddlPerfil" OnSelectedIndexChanged="ddlPerfil_SelectedIndexChanged" AutoPostBack="true" title="Selecione o Perfil"></asp:DropDownList>
            <asp:RequiredFieldValidator ID="rfvPerfil" runat="server" ControlToValidate="ddlPerfil" InitialValue="0" Display="Dynamic" title="Campo obrigatório"></asp:RequiredFieldValidator>
        </label>

        <label>
            <span>
                <asp:Label ID="lblStatus" runat="server" AssociatedControlID="ddlStatus" title="Status"><%=Resources.Textos.Modulo_Usuario_Status %>*</asp:Label>
            </span>
            <asp:DropDownList runat="server" ID="ddlStatus" title="Selecione o status"></asp:DropDownList>
            <asp:RequiredFieldValidator ID="rfvStatus" runat="server" ControlToValidate="ddlStatus" InitialValue="0" Display="Dynamic" title="Campo obrigatório"></asp:RequiredFieldValidator>
        </label>

        <label>
            <span>
                <asp:Label ID="lblLogin" runat="server" AssociatedControlID="txtNome" title="Login"><%=Resources.Textos.Modulo_Usuario_Login %>*</asp:Label>
            </span>
            <asp:TextBox runat="server" ID="txtLogin" CssClass="frmTxt" MaxLength="50" title="Informe o login"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvLogin" runat="server" ControlToValidate="txtLogin" Display="Dynamic" title="Campo obrigatório"></asp:RequiredFieldValidator>
        </label>

        <asp:Panel runat="server" ID="pnlVan">
            <label>
                <span>
                    <asp:Label ID="lblVan" runat="server" AssociatedControlID="ddlVan" title="VAN"><%=Resources.Textos.Modulo_Usuario_VAN %></asp:Label>
                </span>
                <asp:DropDownList runat="server" ID="ddlVan" title="Selecione a VAN"></asp:DropDownList>                
            </label>
        </asp:Panel>

        <asp:Panel runat="server" ID="pnlUltimoAcesso">
            <label>
                <span>
                    <asp:Label ID="lblDataUltimoAcesso" runat="server" AssociatedControlID="txtDataUltimoAcesso" title="Data do último acesso"><%=Resources.Textos.Modulo_Usuario_DataUltimoAcesso %></asp:Label>
                </span>
                <asp:TextBox runat="server" ID="txtDataUltimoAcesso" CssClass="frmTxt" MaxLength="50" Enabled="false" title="Informe a data do último acesso"></asp:TextBox>                
            </label>
        </asp:Panel>


        <label>
            <span>
                <asp:Label ID="lblNome" runat="server" AssociatedControlID="txtNome" title="Nome"><%=Resources.Textos.Modulo_Usuario_Nome %>*</asp:Label>
            </span>
            <asp:TextBox runat="server" ID="txtNome" CssClass="frmTxt" MaxLength="200" title="Informe o nome"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvNome" runat="server" ControlToValidate="txtNome" Display="Dynamic" title="Campo obrigatório"></asp:RequiredFieldValidator>
        </label>

        <label>
            <span>
                <asp:Label ID="lblEmail" runat="server" AssociatedControlID="txtNome" title="Email"><%=Resources.Textos.Modulo_Usuario_Email %>*</asp:Label>
            </span>
            <asp:TextBox runat="server" ID="txtEmail" CssClass="frmTxt" MaxLength="200" title="Informe o e-mail"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" Display="Dynamic" title="Campo obrigatório"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" Display="Dynamic" title="Digite um e-mail válido" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </label>

        <asp:Panel runat="server" ID="pnlSenha">
            <label>
                <span>
                    <asp:Label ID="lblSenha" runat="server" AssociatedControlID="txtSenha" title="Senha"><%=Resources.Textos.Modulo_Usuario_Senha %>*</asp:Label>
                </span>
                <asp:TextBox TextMode="Password" runat="server" ID="txtSenha" CssClass="frmTxt" MaxLength="10" title="Informe a Senha"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvSenha" runat="server" ControlToValidate="txtSenha" Display="Dynamic" title="Campo obrigatório"></asp:RequiredFieldValidator>
            </label>
        </asp:Panel>
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
            <asp:Button runat="server" ID="btnGerarSenha" CssClass="submit" Text="Gerar Nova Senha" OnClick="btnGerarSenha_Click" CausesValidation="false" title="Gerar Nova Senha" alt="Gerar Nova Senha"/>
            <asp:Button runat="server" ID="btnOK" CssClass="submit" Text="Salvar" OnClick="btnOK_Click" title="Salvar" alt="Salcar" />
        </asp:PlaceHolder>
    </div>

</asp:Content>

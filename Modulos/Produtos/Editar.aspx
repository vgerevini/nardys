<%@ Page ClientIDMode="AutoID" Title="" Language="C#" MasterPageFile="~/Modulos/Modulos.master" AutoEventWireup="true" CodeFile="Editar.aspx.cs" Inherits="Manager_Modulos_Produtos_Editar" %>

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
            <asp:Label ID="lblTitulo" runat="server"><%=Resources.Textos.Modulo_Produto_Titulo_Listagem %></asp:Label>
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
                <asp:Label ID="lblCategoria" runat="server" AssociatedControlID="ddlcategoria" title="Categoria"><%=Resources.Textos.Modulo_Produto_Categoria %>*</asp:Label>
            </span>
            <asp:DropDownList runat="server" ID="ddlCategoria" title="Selecione a categoria"></asp:DropDownList>
            <asp:RequiredFieldValidator ID="rfvCategoria" runat="server" ControlToValidate="ddlCategoria" InitialValue="0" Display="Dynamic" title="Campo obrigatório"></asp:RequiredFieldValidator>
        </label>
        <label>
            <span>
                <asp:Label ID="lblNome" runat="server" AssociatedControlID="txtNome" title="Nome"><%=Resources.Textos.Modulo_Usuario_Nome %>*</asp:Label>
            </span>
            <asp:TextBox runat="server" ID="txtNome" CssClass="frmTxt" MaxLength="200" title="Informe o nome"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvNome" runat="server" ControlToValidate="txtNome" Display="Dynamic" title="Campo obrigatório"></asp:RequiredFieldValidator>
        </label>
        <label>
            <span>
                <asp:Label ID="lblValor" runat="server" AssociatedControlID="txtValor" title="Valor"><%=Resources.Textos.Modulo_Produto_Valor %>*</asp:Label>
            </span>
            <asp:TextBox runat="server" ID="txtValor" CssClass="frmTxt" MaxLength="200" title="Informe o valor"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvValor" runat="server" ControlToValidate="txtValor" Display="Dynamic" title="Campo obrigatório"></asp:RequiredFieldValidator>
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

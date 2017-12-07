<%@ Page ClientIDMode="AutoID" Title="" Language="C#" MasterPageFile="~/Modulos/Modulos.master" AutoEventWireup="true" CodeFile="Editar.aspx.cs" Inherits="Manager_Modulos_Perfis_Editar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="contentInterna" runat="Server">
    <script type="text/javascript">
        $(document).ready(function () {
            $('.secaoFilho > input').change(function () {
                if ($(this).is(":checked")) {
                    $(this).closest("div").find('.secaoPai :checkbox').attr('checked', true);
                }
            });

            $('.secaoPai > input').change(function () {
                if (!$(this).is(":checked")) {
                    $(this).closest("div").find('.secaoFilho :checkbox').attr('checked', false);
                }
            });
        });
    </script>

    <asp:UpdateProgress ID="upgConteudo" runat="server" AssociatedUpdatePanelID="upConteudo">
        <ProgressTemplate>
            <div id="divBlockFormID" class="divBlockForm">
                <div class="overlay">
                    <!-- -->
                </div>
                <div class="txt" title="Aguarde"><%=Resources.Textos.Mensagem_Aguarde %></div>
            </div>
        </ProgressTemplate>
    </asp:UpdateProgress>

    <div id="title">
        <h1>
            <span>
                <%=Resources.Textos.Modulo_Perfil_Titulo %>
            </span>
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
                <asp:Label ID="lblNome" runat="server" AssociatedControlID="txtNome" title="Nome do Perfil"><%=Resources.Textos.Modulo_Perfil_Nome %>:</asp:Label>
            </span>
            <asp:TextBox runat="server" ID="txtNome" CssClass="frmTxt" MaxLength="200" title="Informe o nome do Perfil"></asp:TextBox>
        </label>

    </div>


    <asp:Repeater runat="server" ID="rptPermissao" OnItemDataBound="rptPermissao_ItemDataBound">
        <HeaderTemplate>
            <div class="fields no-columns">
                <span>
                    <ul class="perfil-edicao">
        </HeaderTemplate>
        <ItemTemplate>
            <li title='<%# (DataBinder.Eval(Container.DataItem, "Grupo") + " - " + DataBinder.Eval(Container.DataItem, "Nome")) %>'>
                <div>
                    <asp:HiddenField runat="server" ID="hdnID" Value='<%# DataBinder.Eval(Container.DataItem, "Id")%>' />
                    <asp:CheckBox runat="server" ID="chkItem" CssClass="secaoPai" Checked='<%# DataBinder.Eval(Container.DataItem, "Selecionado")%>' />

                    <%# ((DataBinder.Eval(Container.DataItem, "Grupo").ToString() == DataBinder.Eval(Container.DataItem, "Nome").ToString()) ? 
                            (DataBinder.Eval(Container.DataItem, "Grupo")) : 
                            (DataBinder.Eval(Container.DataItem, "Grupo") + " - " + DataBinder.Eval(Container.DataItem, "Nome"))) %>

                    <asp:Repeater runat="server" ID="rptPermissaoFuncionalidade">
                        <HeaderTemplate>
                            <ul>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <li>
                                <asp:HiddenField runat="server" ID="hdnIDFuncionalidade" Value='<%# DataBinder.Eval(Container.DataItem, "Id")%>' />
                                <asp:CheckBox runat="server"  ID="chkItemFuncionalidade" CssClass="secaoFilho" Checked='<%# DataBinder.Eval(Container.DataItem, "Selecionado")%>' /><%# DataBinder.Eval(Container.DataItem, "Nome")%>
                            </li>
                        </ItemTemplate>
                        <FooterTemplate>
                            </ul>
                        </FooterTemplate>
                    </asp:Repeater>
                </div>
            </li>
        </ItemTemplate>
        <FooterTemplate>
            </ul>
                    </span>
                </div>
        </FooterTemplate>
    </asp:Repeater>



    <div class="btn-acoes2">
        <asp:PlaceHolder runat="server" ID="phOptions" Visible="true">
            <asp:Button runat="server" ID="btnOK" CssClass="submit" Text="Salvar" OnClick="btnOK_Click" title="Salvar" />
            <asp:Button runat="server" ID="btnCancelar" CssClass="cancelar" Text="Cancelar" OnClick="btnCancelar_Click" title="Cancelar" />
        </asp:PlaceHolder>
    </div>
</asp:Content>


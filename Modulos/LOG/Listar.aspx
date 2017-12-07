<%@ Page ClientIDMode="AutoID" Title="" Language="C#" MasterPageFile="~/Modulos/Modulos.master" AutoEventWireup="true" CodeFile="Listar.aspx.cs" Inherits="Manager_Modulos_Contato_Produtos_Servicos_Listar" %>

<%@ Register Assembly="WebFoundations.ServerControls" Namespace="WebFoundations.ServerControls" TagPrefix="wfc" %>

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
            <asp:Label ID="lblTitulo" runat="server"><%=Resources.Textos.Modulo_Log_Titulo_Listagem %></asp:Label>
        </h1>
    </div>
    <br />

    <asp:UpdatePanel runat="server" ID="upConteudo">
        <ContentTemplate>

            <asp:PlaceHolder runat="server" ID="phSucesso" Visible="false">
                <div id="divFeedBackInsert" class="msg-acao">
                    <asp:Literal runat="server" ID="ltlObs"></asp:Literal>
                    <a href="#" id="btnFecharPopup">X</a>
                </div>
            </asp:PlaceHolder>
            <div class="filtros">
                <div class="fields">
                    <label>
                        <span>
                            <asp:Label ID="lblRegistros" runat="server" title="Registros por página"><%=Resources.Textos.Modulo_Usuario_Registro %></asp:Label>
                        </span>
                        <asp:DropDownList runat="server" ID="ddlRegistros" AutoPostBack="true" OnSelectedIndexChanged="ddlRegistros_SelectedIndexChanged" alt="Selecione a quantidade de registros por página" title="Selecione a quantidade de registros por página">
                            <asp:ListItem Text="5" Value="5"></asp:ListItem>
                            <asp:ListItem Text="10" Value="10"></asp:ListItem>
                            <asp:ListItem Text="15" Value="15"></asp:ListItem>
                            <asp:ListItem Text="20" Value="20"></asp:ListItem>
                            <asp:ListItem Text="50" Value="50"></asp:ListItem>
                        </asp:DropDownList>
                    </label>
                </div>
                <style>
       .dp-popup, .dp-popup > div {
        width:13em !important;
    }
                </style>
                <div class="fields">
                    <label class="txtPeriodo">
                        <span>
                            <asp:Label ID="lblDataInicio" runat="server" AssociatedControlID="txtDataInicio" title="Período"><%=Resources.Textos.Modulo_Log_Data %></asp:Label>
                        </span>
                        <asp:TextBox runat="server" ID="txtDataInicio" CssClass="frmTxt txtDate" MaxLength="10" title="Informe a data de inicio"></asp:TextBox>
                        Até
                        <asp:TextBox runat="server" ID="txtDataFim" CssClass="frmTxt txtDate" MaxLength="10" title="Informe a data de término"></asp:TextBox>
                    </label>
                    <label>
                        <span>
                            <asp:Label ID="lblDescricao" runat="server" AssociatedControlID="txtDescricao" title="Descrição"><%=Resources.Textos.Modulo_Log_Descricao %></asp:Label>
                        </span>
                        <asp:TextBox runat="server" ID="txtDescricao" CssClass="frmTxt" MaxLength="50" title="Informe a descrição"></asp:TextBox>
                    </label>
                </div>
            </div>
            <div class="btn-acoes">
                        <asp:Button runat="server" ID="btnBuscar" OnClick="btnBuscar_Click" />
                </div>
            <asp:Panel ID="pnlNenhumRegistro" Visible="false" runat="server">
                <div class="txt-n-reg"><%=Resources.Textos.Nenhum_Registro %></div>
            </asp:Panel>

            <asp:Panel ID="pnlRegistrosEncontrados" runat="server">
                <div class="txt-n-reg">
                    <asp:Literal runat="server" ID="ltlRegistrosEncontrados"></asp:Literal><span><asp:Literal runat="server" ID="ltlQuantidadeRegistrosEncontrados"></asp:Literal></span>
                </div>
            </asp:Panel>

            <asp:DataGrid summary="Lista de logs" ID="grdDados" runat="server" AutoGenerateColumns="false" CssClass="listagem-Grid" AlternatingRowStyle-CssClass="par" 
                OnSortCommand="grdDados_SortCommand" Width="100%" AllowPaging="True" AllowSorting="True" PageSize="50">
                <Columns>
                    <asp:BoundColumn DataField="Id" HeaderText="ID" SortExpression="Id" HeaderStyle-CssClass="tabelaHeader desc" ItemStyle-Width="5%" ItemStyle-HorizontalAlign="Center" />
                    <asp:BoundColumn DataField="Data_hora" SortExpression="Data_hora" HeaderText="Data" HeaderStyle-CssClass="tabelaHeader" ItemStyle-Width="12%" ItemStyle-HorizontalAlign="Center" />
                    <asp:BoundColumn DataField="Mensagem" SortExpression="Mensagem" HeaderText="Descrição" HeaderStyle-CssClass="tabelaHeader" ItemStyle-Width="83%" />
                </Columns>
                <HeaderStyle CssClass="topo-tb"></HeaderStyle>
                <ItemStyle CssClass="impar"></ItemStyle>
                <AlternatingItemStyle CssClass="par"></AlternatingItemStyle>
                <PagerStyle Visible="false" />
            </asp:DataGrid>
            <asp:Label ID="lblNoRecordsFound" Text="Nenhum resultado encontrado." runat="server" Visible="false"></asp:Label>
            <div class="footer-paginacao" title="Paginação">
                <wfc:WebPaging ID="listPager" runat="server" RootElement="Ul" TextFirst="Primeira" TextLast="Última" TextNext="Próxima" TextPrevious="Anterior" OnPageChanged="listPager_PageChanged"
                    CssClassPageLink="nav-footer" CssClassFirst="" CssClassLast="" CssClassNext="btn-navdir ir" CssClassPrevious="btn-navesq ir" PageNumbersSeparator="  " MaxVisiblePages="10" PageSize="1" />
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>

</asp:Content>


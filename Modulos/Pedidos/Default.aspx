<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" MasterPageFile="~/Modulos/Modulos.master" %>

<%@ Register Src="~/Modulos/Pedidos/Novo.ascx" TagPrefix="uc1" TagName="Novo" %>


<asp:Content ID="Content1" ContentPlaceHolderID="contentInterna" runat="Server">
    <%--Scripts--%>
    <script src="../../Assets/js/jquery-3.2.1.min.js" type="text/javascript"></script>
    <script src="../../Assets/js/main.js" type="text/javascript"></script>

    <%--Styles--%>
    <link href="../../Assets/css/materialdesignicons.min.css" media="all" rel="stylesheet" type="text/css" />
    <link href="../../Assets/css/main.css" rel="stylesheet" />

    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css" />
    <%--<link rel="stylesheet" href="/resources/demos/style.css" />--%>
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>


    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script src="http://code.jquery.com/ui/1.8.24/jquery-ui.min.js" type="text/javascript"></script>
    <link href="http://code.jquery.com/ui/1.8.24/themes/blitzer/jquery-ui.css" rel="stylesheet" type="text/css" />

    <div>
        <asp:Button ID="btnNovaComanda" runat="server" Text="Nova Comanda" CssClass="btnNovaComanda" OnClick="btnNovaComanda_Click" />
    </div>
    <div class="box">
        <asp:Repeater ID="rptPedidos" runat="server" OnItemCommand="rptPedidos_ItemCommand">
            <ItemTemplate>
                <div class="item <%#  Convert.ToBoolean(Convert.ToDateTime(Eval("Data")).Date == DateTime.Today) ? "pendente" : "atrasado" %>" title="<%#  Eval("DescricaoStatus") %>">
                    <asp:LinkButton ID="lnkDetalhes" CssClass="lnk-detalhes" runat="server" CommandName="Detalhes" CommandArgument='<%#  Eval("IdPedido") %>'>
                        <asp:Label ID="lblDescricao" CssClass="divPedidoTitulo" runat="server" Text='<%#  Eval("NomeCliente") %>' title='<%# Eval("NomeCliente") %>'></asp:Label>
                        <asp:Label ID="lblData" runat="server" Text='<%#  Convert.ToDateTime(Eval("Data")).ToShortDateString() %>'></asp:Label>
                        <asp:Label ID="lblHora" runat="server" Text='<%#  string.Format("{0:C}", Eval("ValorTotal")) %>'></asp:Label>
                    </asp:LinkButton>

                    <div class="submenu-content">
                        <div class="submenu-icon">
                            <div class="submenu-icon-nav" title="Adicionar Comanda">
                                <asp:LinkButton ID="lnkAddComanda" runat="server" CommandName="Adicionar" CommandArgument='<%#  Eval("IdPedido") %>'>
                                        <i class="mdi mdi-pencil"></i>
                                </asp:LinkButton>
                            </div>
                            <div class="submenu-icon-nav" title="Fechar Comanda">
                                <asp:LinkButton ID="lnkFecharComanda" runat="server" CommandName="Fechar" CommandArgument='<%#  Eval("IdPedido") %>'>
                                        <i class="mdi mdi-close-circle"></i>
                                </asp:LinkButton>
                            </div>
                        </div>
                    </div>
                </div>
            </ItemTemplate>

        </asp:Repeater>
        <div class="item pago">
            <div>
                <label>Cor Status classe pago Exemplo</label>
            </div>
        </div>
    </div>

    <asp:Panel ID="pnlNovo" Visible="false" runat="server" CssClass="modal-glob">
        <div class="modal-cont">
            <div class="cont-title">
                <uc1:Novo runat="server" ID="Novo" />
            </div>
        </div>
    </asp:Panel>
    <asp:Panel ID="pnlItem" Visible="false" runat="server" CssClass="modal-glob">
        <div class="modal-cont">
            <div class="cont-title">
                <h2>Pedido XYZ</h2>
                <p>Painel Detalhes comanda e Add novo item</p>
                <p>
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
                </p>
                <p>
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
                </p>
            </div>
        </div>
    </asp:Panel>
    <asp:Panel ID="pnlFechamento" Visible="false" runat="server" CssClass="modal-glob">
        <div class="modal-cont">
            <div class="cont-title">
                <h2>Fechamento Pedido XYZ</h2>
                <p>Painel fechamento de comanda</p>
                <p>
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
                </p>
                <p>
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
                </p>
            </div>
        </div>
    </asp:Panel>
    <asp:Panel ID="pnlAdicionar" Visible="false" runat="server" CssClass="modal-glob">
        <div class="modal-cont">
            <div class="cont-title">
                <h2>Modal</h2>
                <p>Adicionar Comanda:</p>
                <p>
                    <asp:DropDownList ID="ddlComandas" runat="server"></asp:DropDownList>
                    <asp:Button ID="btnAdd" runat="server" Text="+" />
                                    <p>
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
                </p>
                <p>
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
                </p>
                </p>
            </div>
        </div>
    </asp:Panel>
</asp:Content>

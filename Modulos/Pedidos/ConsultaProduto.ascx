<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ConsultaProduto.ascx.cs" Inherits="Modulos_Pedidos_ConsultaProduto" %>
<div class="modal-cont">
    <asp:Button runat="server" ID="btnCancelar" CssClass="cancelar" Text="X" CausesValidation="false" title="Fechar" alt="Fechar" OnClick="btnCancelar_Click" />
    <div class="cont-title">
        <h2>Consultar Produto</h2>
        
        <div class="fields">
            <label>
                <span>
                    <asp:Label ID="lblProduto" runat="server">Produto*</asp:Label>
                </span>
                <asp:TextBox ID="txtProduto" runat="server" AutoPostBack="true" AutoComplete="off" OnTextChanged="txtProduto_TextChanged"></asp:TextBox>
            </label>
            <asp:UpdatePanel ID="upPanel" runat="server" UpdateMode="Conditional">
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="txtProduto" EventName="TextChanged" />
                </Triggers>
                <ContentTemplate>
                    <div id="pagingUp" runat="server"></div>
                    <div>
                        <div>
                        </div>
                        <div>
                            <p>
                                <asp:Label ID="lblNaoEncontrado" runat="server" Text="Nenhum registro encontrado."
                                    Visible="false"></asp:Label>
                            </p>
                        </div>
                        <asp:Repeater ID="rptProdutos" runat="server">
                            <HeaderTemplate>
                                <div>
                                    <ul>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <li>
                                    <label><%#Eval("Nome")%></label>
                                    <label><%#string.Format("{0:C}", Eval("Valor"))%></label>
                                </li>
                            </ItemTemplate>
                            <FooterTemplate>
                                </ul> </div>
                            </FooterTemplate>
                        </asp:Repeater>
                    </div>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </div>
</div>

<script type="text/javascript">


    function AttactEvent() {
        var txt = document.getElementById("<%=txtProduto.ClientID %>");
            txt.setAttribute("onkeyup", txt.getAttribute("onchange"));
            txt.setAttribute("onchange", "");
            txt.value = '';
        }
        window.onload = function () {
            AttactEvent();
            var prm = Sys.WebForms.PageRequestManager.getInstance();
            if (prm != null) {
                prm.add_endRequest(function (sender, e) {
                    if (sender._postBackSettings.panelsToUpdate != null) {
                        AttactEvent();
                    }
                });
            }
        };

        $(document).ready(function ($) {

        });
</script>








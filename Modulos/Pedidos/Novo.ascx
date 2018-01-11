<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Novo.ascx.cs" Inherits="Modulos_Pedidos_Novo" %>

<h2>Novo pedido</h2>

<div class="fields">
    <label>
        <span>
            <asp:Label ID="lblNomeCliente" runat="server">Comanda*</asp:Label>
        </span>
        <asp:TextBox ID="txtNomeCliente" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvNomeCliente" runat="server" Text="*" ControlToValidate="txtNomeCliente" Display="Dynamic" title="Campo obrigatório"></asp:RequiredFieldValidator>
    </label>
    <label>
        <span>
            <asp:Label ID="lblObservacao" runat="server">Observação</asp:Label>
        </span>
        <asp:TextBox ID="txtObservacao" runat="server" TextMode="MultiLine" Rows="5" Width="100%"></asp:TextBox>
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
        <asp:Button runat="server" ID="btnCancelar" CssClass="cancelar" Text="Voltar" CausesValidation="false" title="Voltar" alt="Voltar" OnClick="btnCancelar_Click" />
        <asp:Button runat="server" ID="btnSalvar" CssClass="submit" Text="Salvar" title="Salvar" alt="Salvar" OnClick="btnSalvar_Click" />
    </asp:PlaceHolder>
</div>










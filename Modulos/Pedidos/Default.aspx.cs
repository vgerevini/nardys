using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{

    #region Variáveis
    public List<Pedido> PedidosExistentes
    {
        get { return (List<Pedido>)(ViewState["PedidosExistentes"] ?? new List<Pedido>()); }
        set { ViewState["PedidosExistentes"] = value; }
    }

    public List<Produto> Produtos
    {
        get { return (List<Produto>)(ViewState["Produtos"] ?? new List<Produto>()); }
        set { ViewState["Produtos"] = value; }
    }
    #endregion
    private void IniciaPedidosTeste()
    {
        PedidosExistentes = DOPedido.Listar();
        
        ddlComandas.DataSource = (from p in PedidosExistentes orderby p.Data descending select p).ToList();
        ddlComandas.DataTextField = "NomeCliente";
        ddlComandas.DataValueField = "IdPedido";
        ddlComandas.DataBind();

        rptPedidos.DataSource = (from p in PedidosExistentes orderby p.Data descending select p).ToList();
        rptPedidos.DataBind();
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        if ((Request.QueryString["Sucesso"] == "1"))
        {
            ((Manager_Interna)Master).ExibirMensagem(Resources.Textos.Mensagem_Salva_Sucesso);
        }
        else if ((Request.QueryString["Sucesso"] == "2"))
        {
            ((Manager_Interna)Master).ExibirMensagem(Resources.Textos.Mensagem_Atualizado_Sucesso);
        }

        IniciaPedidosTeste();
    }

    protected void btnNovaComanda_Click(object sender, EventArgs e)
    {
        pnlNovo.CssClass = " modal-glob active";
        pnlNovo.Visible = true;
        pnlItem.Visible = false;
        pnlAdicionar.Visible = false;
        pnlFechamento.Visible = false;
        pnlConsultarProduto.Visible = false;
    }

    protected void rptPedidos_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        if ((e.Item.ItemType == ListItemType.AlternatingItem) || (e.Item.ItemType == ListItemType.Item))
        {
            if (e.CommandName == "Detalhes")
            {
                int intIdPedido = Convert.ToInt32(e.CommandArgument);

                pnlNovo.Visible = false;
                pnlFechamento.Visible = false;
                pnlAdicionar.Visible = false;
                pnlConsultarProduto.Visible = false;
                pnlItem.Visible = true;
                pnlItem.CssClass = " modal-glob active";
            }
            else if (e.CommandName == "Fechar")
            {
                pnlNovo.Visible = false;
                pnlItem.Visible = false;
                pnlAdicionar.Visible = false;
                pnlConsultarProduto.Visible = false;
                pnlFechamento.Visible = true;
                pnlFechamento.CssClass = " modal-glob active";
            }
            else if (e.CommandName == "Adicionar")
            {
                pnlNovo.Visible = false;
                pnlItem.Visible = false;
                pnlFechamento.Visible = false;
                pnlConsultarProduto.Visible = false;
                pnlAdicionar.Visible = true;
                pnlAdicionar.CssClass = " modal-glob active";
            }
        }
    }

    protected void btnConsultaProduto_Click(object sender, EventArgs e)
    {
        pnlConsultarProduto.CssClass = " modal-glob active";
        pnlConsultarProduto.Visible = true;
        pnlItem.Visible = false;
        pnlAdicionar.Visible = false;
        pnlFechamento.Visible = false;
        pnlNovo.Visible = false;
    }
}
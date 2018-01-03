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
        Produtos = new List<Produto>();
        Produtos.Add(new Produto() { Id = 1, Nome = "Brahma Litrão", Valor = 6.5 });
        Produtos.Add(new Produto() { Id = 2, Nome = "Skol Litrão", Valor = 7.5 });
        Produtos.Add(new Produto() { Id = 3, Nome = "Devassa Premium 600", Valor = 6 });
        Produtos.Add(new Produto() { Id = 4, Nome = "Marlboro Light", Valor = 10 });
        Produtos.Add(new Produto() { Id = 5, Nome = "Marlboro Blue Ice", Valor = 10 });
        Produtos.Add(new Produto() { Id = 6, Nome = "Amendoim", Valor = 3 });
        Produtos.Add(new Produto() { Id = 7, Nome = "Halls", Valor = 2 });

        PedidosExistentes = new List<Pedido>();

        PedidosExistentes.Add(new Pedido() { Id = 1, DataCriacao = "01/01/2017", HoraCriacao = "18:36", Descricao = "Tiago Gerevini Gerevini", Status = "Atrasado" });
        PedidosExistentes.Add(new Pedido() { Id = 2, DataCriacao = "01/01/2018", HoraCriacao = "18:36", Descricao = "Rod", Status = "Atrasado" });
        PedidosExistentes.Add(new Pedido() { Id = 3, DataCriacao = "01/01/2018", HoraCriacao = "18:36", Descricao = "Afonso", Status = "Atrasado" });
        PedidosExistentes.Add(new Pedido() { Id = 4, DataCriacao = "01/01/2018", HoraCriacao = "18:36", Descricao = "Bette", Status = "Atrasado" });
        PedidosExistentes.Add(new Pedido() { Id = 4, DataCriacao = "01/01/2018", HoraCriacao = "18:36", Descricao = "Pinga", Status = "Atrasado" });
        PedidosExistentes.Add(new Pedido() { Id = 4, DataCriacao = "01/01/2018", HoraCriacao = "18:36", Descricao = "Rodolfo", Status = "Atrasado" });
        PedidosExistentes.Add(new Pedido() { Id = 4, DataCriacao = "01/01/2018", HoraCriacao = "18:36", Descricao = "Mayk", Status = "Atrasado" });
        PedidosExistentes.Add(new Pedido() { Id = 4, DataCriacao = "01/01/2018", HoraCriacao = "18:36", Descricao = "Marcos", Status = "Atrasado" });
        PedidosExistentes.Add(new Pedido() { Id = 4, DataCriacao = "01/01/2018", HoraCriacao = "18:36", Descricao = "fogaça", Status = "Atrasado" });
        PedidosExistentes.Add(new Pedido() { Id = 4, DataCriacao = "01/01/2018", HoraCriacao = "18:36", Descricao = "Gugu", Status = "Atrasado" });
        PedidosExistentes.Add(new Pedido() { Id = 4, DataCriacao = "01/01/2018", HoraCriacao = "18:36", Descricao = "Fritz", Status = "Atrasado" });
        PedidosExistentes.Add(new Pedido() { Id = 4, DataCriacao = "03/01/2018", HoraCriacao = "18:36", Descricao = "Bussa", Status = "Pendente" });
        PedidosExistentes.Add(new Pedido() { Id = 4, DataCriacao = "03/01/2018", HoraCriacao = "18:36", Descricao = "Gustavo", Status = "Pendente" });


        //PedidosExistentes.Add(new Pedido() { Id = 1, DataCriacao = DateTime.Today.AddDays(-1), Descricao = "Tiago Gerevini", Status = "Atrasado" });        
        //PedidosExistentes.Add(new Pedido() { Id = 2, DataCriacao = DateTime.Today.AddHours(1), Descricao = "Rod", Status = "Pendente" });
        //PedidosExistentes.Add(new Pedido() { Id = 3, DataCriacao = DateTime.Today.AddHours(2).AddMinutes(10), Descricao = "Afonso", Status = "Pendente" });
        //PedidosExistentes.Add(new Pedido() { Id = 4, DataCriacao = DateTime.Today.AddHours(2).AddMinutes(20), Descricao = "Bette", Status = "Pendente" });
        //PedidosExistentes.Add(new Pedido() { Id = 4, DataCriacao = DateTime.Today.AddHours(2).AddMinutes(30), Descricao = "Pinga", Status = "Pendente" });
        //PedidosExistentes.Add(new Pedido() { Id = 4, DataCriacao = DateTime.Today.AddHours(2).AddMinutes(25), Descricao = "Rodolfo", Status = "Pendente" });
        //PedidosExistentes.Add(new Pedido() { Id = 4, DataCriacao = DateTime.Today.AddHours(2).AddMinutes(35), Descricao = "Mayk", Status = "Pendente" });
        //PedidosExistentes.Add(new Pedido() { Id = 4, DataCriacao = DateTime.Today.AddHours(2).AddMinutes(45), Descricao = "Marcos", Status = "Pendente" });
        //PedidosExistentes.Add(new Pedido() { Id = 4, DataCriacao = DateTime.Today.AddHours(2).AddMinutes(15), Descricao = "fogaça", Status = "Pendente" });
        //PedidosExistentes.Add(new Pedido() { Id = 4, DataCriacao = DateTime.Today.AddHours(2).AddMinutes(17), Descricao = "Gugu", Status = "Pendente" });
        //PedidosExistentes.Add(new Pedido() { Id = 4, DataCriacao = DateTime.Today.AddHours(2).AddMinutes(19), Descricao = "Fritz", Status = "Pendente" });
        //PedidosExistentes.Add(new Pedido() { Id = 4, DataCriacao = DateTime.Today.AddHours(2).AddMinutes(5), Descricao = "Bussa", Status = "Pendente" });
        //PedidosExistentes.Add(new Pedido() { Id = 4, DataCriacao = DateTime.Today.AddHours(2).AddMinutes(16), Descricao = "Gustavo", Status = "Pendente" });

        List<ItemPedido> ItemsPedidoMagal = new List<ItemPedido>();
        ItemsPedidoMagal.Add(new ItemPedido() { IdItemPedido = 1, IdPedido = 1, IdProduto = 1, Data = DateTime.Today.AddHours(1) });
        ItemsPedidoMagal.Add(new ItemPedido() { IdItemPedido = 2, IdPedido = 1, IdProduto = 1, Data = DateTime.Today.AddHours(2) });
        ItemsPedidoMagal.Add(new ItemPedido() { IdItemPedido = 3, IdPedido = 1, IdProduto = 1, Data = DateTime.Today.AddHours(3) });
        ItemsPedidoMagal.Add(new ItemPedido() { IdItemPedido = 4, IdPedido = 1, IdProduto = 4, Data = DateTime.Today.AddHours(3).AddMinutes(30) });
        PedidosExistentes[0].Itens = ItemsPedidoMagal;

        List<ItemPedido> ItemsPedidoRod = new List<ItemPedido>();
        ItemsPedidoRod.Add(new ItemPedido() { IdItemPedido = 5, IdPedido = 2, IdProduto = 2, Data = DateTime.Today.AddHours(1) });
        ItemsPedidoRod.Add(new ItemPedido() { IdItemPedido = 6, IdPedido = 2, IdProduto = 3, Data = DateTime.Today.AddHours(2) });
        ItemsPedidoRod.Add(new ItemPedido() { IdItemPedido = 7, IdPedido = 2, IdProduto = 4, Data = DateTime.Today.AddHours(3) });
        ItemsPedidoRod.Add(new ItemPedido() { IdItemPedido = 8, IdPedido = 2, IdProduto = 5, Data = DateTime.Today.AddHours(3).AddMinutes(30) });
        PedidosExistentes[1].Itens = ItemsPedidoRod;

        ddlComandas.DataSource = (from p in PedidosExistentes orderby p.DataCriacao descending select p).ToList();
        ddlComandas.DataTextField = "Descricao";
        ddlComandas.DataValueField = "Id";
        ddlComandas.DataBind();

        rptPedidos.DataSource = (from p in PedidosExistentes orderby p.DataCriacao descending select p).ToList();
        rptPedidos.DataBind();
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        IniciaPedidosTeste();
    }

    protected void btnNovaComanda_Click(object sender, EventArgs e)
    {
        pnlNovo.Visible = true;
        pnlItem.Visible = false;
        pnlFechamento.Visible = false;
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
                pnlItem.Visible = true;
                pnlItem.CssClass = " modal-glob active";
            }
            else if (e.CommandName == "Fechar")
            {
                pnlNovo.Visible = false;
                pnlItem.Visible = false;
                pnlAdicionar.Visible = false;
                pnlFechamento.Visible = true;
                pnlFechamento.CssClass = " modal-glob active";
            }
            else if (e.CommandName == "Adicionar")
            {
                pnlNovo.Visible = false;
                pnlItem.Visible = false;
                pnlFechamento.Visible = false;
                pnlAdicionar.Visible = true;
                pnlAdicionar.CssClass = " modal-glob active";
            }
        }
    }
}
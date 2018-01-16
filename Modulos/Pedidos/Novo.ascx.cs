using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Modulos_Pedidos_Novo : System.Web.UI.UserControl
{
    #region Eventos
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }

    protected void btnCancelar_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Modulos/Pedidos/Default.aspx");
    }

    protected void btnSalvar_Click(object sender, EventArgs e)
    {
        Salvar();
    }
    #endregion

    #region Métodos
    private void Salvar()
    {
        Usuario usuarioLogado = (Usuario)Session["usuario"];
        try
        {
            Pedido objPedido = new Pedido();
            objPedido.NomeCliente = txtNomeCliente.Text;
            objPedido.Observacao = txtObservacao.Text;
            objPedido.IdStatusPedido = (int)Utilitarios.StatusPedido.Pendente;

            DOPedido.Inserir(objPedido);
        }
        catch (Exception ex)
        {
            //Chama o método para gravar erro
            DOLog.Inserir(string.Concat("Erro Sistema: ", ex), Utilitarios.TipoLog.Sistema, usuarioLogado.Id);
        }

        Response.Redirect("~/Modulos/Pedidos/Default.aspx");
    }
    #endregion
}
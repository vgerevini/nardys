using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Modulos_Pedidos_ConsultaProduto : System.Web.UI.UserControl
{
    #region Eventos
    protected void Page_Load(object sender, EventArgs e)
    {
        IniciaTela();
    }

    protected void txtProduto_TextChanged(object sender, EventArgs e)
    {
        ConsultarProduto();
    }
    protected void btnCancelar_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Modulos/Pedidos/Default.aspx");
    }
    #endregion

    #region Métodos
    private void IniciaTela()
    {
        txtProduto.Focus();
    }
    private void ConsultarProduto()
    {
        //if(txtProduto.Text.Length > 3)
        //{
            List<Produto> lstProdutos = DOProduto.Listar(txtProduto.Text);
            lblNaoEncontrado.Visible = !lstProdutos.Any();

            rptProdutos.DataSource = lstProdutos;
            rptProdutos.DataBind();
        //}
    }
    #endregion
}
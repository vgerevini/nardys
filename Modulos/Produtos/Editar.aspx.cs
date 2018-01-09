using System;
using System.Data.SqlClient;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Manager_Modulos_Produtos_Editar : System.Web.UI.Page
{
    #region Variáveis
    private string codigo;
    private Produto gobjProduto;
    #endregion

    #region Eventos
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!Page.IsPostBack)
        {
            this.IniciaTela();
            CarregarObjetos(Utilitarios.TipoTransacao.Limpar);

            if (Request.QueryString["Id"] != null)
            {
                codigo = Request.QueryString["Id"];

                gobjProduto = DOProduto.Obter(codigo);

                CarregarObjetos(Utilitarios.TipoTransacao.Carregar, gobjProduto);
            }
        }
    }

    protected void btnOK_Click(object sender, EventArgs e)
    {
        Salvar();
    }

    protected void btnCancelar_Click(object sender, EventArgs e)
    {
        Response.Redirect("Listar.aspx");
    }
    #endregion

    #region Métodos

    private void IniciaTela()
    {
        this.txtCodigo.Focus();
        this.ddlCategoria.DataSource = DOCategoria.Listar();
        this.ddlCategoria.DataTextField = "nome";
        this.ddlCategoria.DataValueField = "id";
        this.ddlCategoria.DataBind();
        this.ddlCategoria.Items.Insert(0, new ListItem(Resources.Textos.Texto_Selecione, "0"));

        this.rfvNome.Text = Resources.Textos.Texto_Campo_Obrigatorio;
        this.rfvCodigo.Text = Resources.Textos.Texto_Campo_Obrigatorio;
        this.rfvCategoria.Text = Resources.Textos.Texto_Campo_Obrigatorio;
        this.rfvValor.Text = Resources.Textos.Texto_Campo_Obrigatorio;
    }

    private void CarregarObjetos(Utilitarios.TipoTransacao objTipoTransacao, Produto objProduto = null)
    {
        switch (objTipoTransacao)
        {
            //Novo Usuario
            case Utilitarios.TipoTransacao.Limpar:
                codigo = string.Empty;

                ddlCategoria.SelectedValue = "0";
                txtNome.Text = string.Empty;
                txtCodigo.Text = string.Empty;
                txtValor.Text = string.Empty;

                break;
            //Carregar Dados do Usuario
            case Utilitarios.TipoTransacao.Salvar:

                if (objProduto == null)
                {
                    gobjProduto = new Produto();
                }

                gobjProduto.Codigo = txtCodigo.Text;
                gobjProduto.IdCategoria = Convert.ToInt32(ddlCategoria.SelectedValue);
                gobjProduto.Nome = txtNome.Text;
                gobjProduto.Valor = Convert.ToDouble(txtValor.Text);

                break;
            //Descarregar Dados do Usuario
            case Utilitarios.TipoTransacao.Carregar:
                txtCodigo.Text = objProduto.Codigo;
                txtCodigo.Enabled = false;
                ddlCategoria.SelectedValue = objProduto.IdCategoria.ToString();
                txtNome.Text = objProduto.Nome.ToString();
                txtValor.Text = objProduto.Valor.ToString();


                break;
        }
    }

    private void Salvar()
    {
        try
        {
            codigo = Request.QueryString["Id"];
            this.CarregarObjetos(Utilitarios.TipoTransacao.Salvar, gobjProduto);

            if (codigo == string.Empty)
            {
                DOProduto.Inserir(gobjProduto);
                Response.Redirect("Listar.aspx?sucesso=1");
            }
            else
            {
                DOProduto.Atualizar(gobjProduto);
                Response.Redirect("Listar.aspx?sucesso=2");
            }

            
        }
        catch (SqlException sqlEx)
        {
            //"Cannot insert duplicate key row in object"
            if (sqlEx.Number == 2601)            
                ((Manager_Interna)Master).ExibirMensagem(Resources.Textos.Modulo_Usuario_Login_Duplicado);
            else if (sqlEx.Number == 2627)
                ((Manager_Interna)Master).ExibirMensagem(Resources.Textos.Modulo_Produto_Existente);
            else
            ((Manager_Interna)Master).ExibirAlerta(sqlEx);

        }
        catch (Exception ex)
        {
            //Chama o método para gravar erro
            ((Manager_Interna)Master).ExibirAlerta(ex);
        }
    }

    #endregion

}
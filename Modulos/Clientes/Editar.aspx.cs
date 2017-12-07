using System;
using System.Data.SqlClient;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Manager_Modulos_Clientes_Editar : System.Web.UI.Page
{
    #region Variáveis
    private int codigo;
    private Cliente gobjCliente;
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
                codigo = Convert.ToInt32(Request.QueryString["Id"]);

                gobjCliente = DOCliente.ObterCliente(codigo);

                CarregarObjetos(Utilitarios.TipoTransacao.Carregar, gobjCliente);
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
        this.rfvNome.Text = Resources.Textos.Texto_Campo_Obrigatorio;
    }

    private void CarregarObjetos(Utilitarios.TipoTransacao objTipoTransacao, Cliente objCliente = null)
    {
        switch (objTipoTransacao)
        {
            //Novo Usuario
            case Utilitarios.TipoTransacao.Limpar:
                codigo = 0;

                txtNome.Text = string.Empty;
                txtTelefone.Text = string.Empty;

                break;
            //Carregar Dados do Usuario
            case Utilitarios.TipoTransacao.Salvar:

                if (objCliente == null)
                {
                    gobjCliente = new Cliente();
                }

                gobjCliente.Id = codigo;
                gobjCliente.Nome = txtNome.Text;
                gobjCliente.Telefone = txtTelefone.Text;

                break;
            //Descarregar Dados do Usuario
            case Utilitarios.TipoTransacao.Carregar:

                txtNome.Text = objCliente.Nome.ToString();
                txtTelefone.Text = objCliente.Telefone.ToString();

                break;
        }
    }  


    private void Salvar()
    {

        try
        {
            codigo = Convert.ToInt32(Request.QueryString["Id"]);
            this.CarregarObjetos(Utilitarios.TipoTransacao.Salvar, gobjCliente);

            if (codigo == 0)
            {
                DOCliente.Inserir(gobjCliente);
                Response.Redirect("Listar.aspx?sucesso=1");
            }
            else
            {
                DOCliente.Atualizar(gobjCliente);
                Response.Redirect("Listar.aspx?sucesso=2");
            }

            
        }
        catch (SqlException sqlEx)
        {
            //"Cannot insert duplicate key row in object"
            if (sqlEx.Number == 2601)            
                ((Manager_Interna)Master).ExibirMensagem(Resources.Textos.Modulo_Usuario_Login_Duplicado);       
            else if (sqlEx.Number == 2627)
                ((Manager_Interna)Master).ExibirMensagem(Resources.Textos.Modulo_Cliente_Existente);
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
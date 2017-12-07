using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Manager_Modulos_Perfis_Editar : System.Web.UI.Page
{
    #region Variáveis
    private int codigo;
    private Perfil gobjPerfil;
    private List<Secao> gobjListSecoes;
    private List<SecaoFuncionalidade> gobjListSecoesFuncionalidades;
    #endregion

    #region Eventos

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            CarregarObjetos(Utilitarios.TipoTransacao.Limpar);

            if (Request.QueryString["Id"] != null)
            {
                codigo = Convert.ToInt32(Request.QueryString["Id"]);

                gobjPerfil = DOPerfil.Obter(codigo);
                gobjListSecoes = DOSecao.Listar(codigo);
                gobjListSecoesFuncionalidades = DOSecaoFuncionalidade.Listar(codigo);

                CarregarObjetos(Utilitarios.TipoTransacao.Carregar);
            }
        }
    }

    protected void rptPermissao_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
        {
            Repeater rptPermissaoFuncionalidade = (Repeater)e.Item.FindControl("rptPermissaoFuncionalidade");

            Secao item = (Secao)e.Item.DataItem;
            rptPermissaoFuncionalidade.DataSource = (from f in gobjListSecoesFuncionalidades where f.SecaoId == item.Id select f).ToList();
            rptPermissaoFuncionalidade.DataBind();
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

    private void CarregarObjetos(Utilitarios.TipoTransacao objTipoTransacao)
    {
        switch (objTipoTransacao)
        {
            //Novo Usuario
            case Utilitarios.TipoTransacao.Limpar:
                codigo = 0;

                txtNome.Text = string.Empty;


                break;
            //Carregar Dados do Usuario
            case Utilitarios.TipoTransacao.Salvar:

                if (gobjPerfil == null)
                {
                    gobjPerfil = new Perfil();
                }
                gobjPerfil.Id = codigo;
                gobjPerfil.Nome = txtNome.Text;

                break;
            //Descarregar Dados do Usuario
            case Utilitarios.TipoTransacao.Carregar:
                txtNome.Text = gobjPerfil.Nome.ToString();
                rptPermissao.DataSource = gobjListSecoes;
                rptPermissao.DataBind();

                break;
        }
    }

    private void Salvar()
    {
        try
        {
            codigo = Convert.ToInt32(Request.QueryString["Id"]);
            this.CarregarObjetos(Utilitarios.TipoTransacao.Salvar);

            if (codigo > 0)
            {
                //Obter os acessos selecionados
                string secoesSelecionadas = string.Empty;
                List<AcessoFuncionalidade> funcionalidadesSelecionadas = new List<AcessoFuncionalidade>();

                foreach (RepeaterItem item in rptPermissao.Items)
                {
                    CheckBox chkItem = (CheckBox)item.FindControl("chkItem");
                    HiddenField hdnID = (HiddenField)item.FindControl("hdnID");
                    if (chkItem.Checked)
                    {
                        secoesSelecionadas += string.Format("{0};", hdnID.Value);
                    }

                    Repeater rptPermissaoFuncionalidade = (Repeater)item.FindControl("rptPermissaoFuncionalidade");
                    foreach (RepeaterItem itemFilho in rptPermissaoFuncionalidade.Items)
                    {
                        CheckBox chkItemFuncionalidade = (CheckBox)itemFilho.FindControl("chkItemFuncionalidade");
                        HiddenField hdnIDFuncionalidade = (HiddenField)itemFilho.FindControl("hdnIDFuncionalidade");
                        if (chkItemFuncionalidade.Checked)
                        {
                            funcionalidadesSelecionadas.Add(new AcessoFuncionalidade
                            {
                                IdPerfil = this.codigo,
                                IdSecao = Convert.ToInt32(hdnID.Value),
                                IdSecaoFuncionalidade = Convert.ToInt32(hdnIDFuncionalidade.Value)
                            });
                        }
                    }
                }

                //Atualiza o perfil e as seçoes selecionadas pelo usuário
                if (DOPerfil.Atualizar(gobjPerfil, secoesSelecionadas) > 0)
                {
                    //Exclui funcionalidades anteriores
                    DOAcessoFuncionalidade.Excluir(codigo);

                    //Insere funcionalidades atualizadas
                    foreach (AcessoFuncionalidade objAcessoFuncionalidade in funcionalidadesSelecionadas) {
                        DOAcessoFuncionalidade.Inserir(objAcessoFuncionalidade);
                    }
                }
            }

            Response.Redirect("Listar.aspx?sucesso=1");
        }
        catch (Exception ex)
        {
            //Chama o método para gravar erro
            ((Manager_Interna)Master).ExibirAlerta(ex);
        }
    }

    #endregion
}
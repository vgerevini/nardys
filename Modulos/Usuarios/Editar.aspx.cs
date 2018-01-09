using System;
using System.Data.SqlClient;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Manager_Modulos_Usuarios_Editar : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {

        if (!Page.IsPostBack)
        {
            this.IniciaTela();
            CarregarObjetos(Utilitarios.TipoTransacao.Limpar);

            if (Request.QueryString["Id"] != null)
            {
                codigo = Convert.ToInt32(Request.QueryString["Id"]);

                gobjUsuario = DOUsuario.ObterUsuarioId(codigo);

                CarregarObjetos(Utilitarios.TipoTransacao.Carregar, gobjUsuario);
            }
            else
                btnGerarSenha.Visible = false;
        }
    }

    #region Variáveis
    private int codigo;
    private Usuario gobjUsuario;
    #endregion

    #region Eventos
    protected void btnOK_Click(object sender, EventArgs e)
    {
        Salvar();
    }

    protected void btnCancelar_Click(object sender, EventArgs e)
    {
        Response.Redirect("Listar.aspx");
    }

    protected void btnGerarSenha_Click(object sender, EventArgs e)
    {
        AtualizarSenha();
    }

    protected void ddlPerfil_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlPerfil.SelectedValue.Equals("1"))
            pnlVan.Visible = true;
        else
            pnlVan.Visible = false;
    }
    #endregion

    #region Métodos

    private void IniciaTela()
    {
        this.ddlStatus.DataSource = DOStatusUsuario.Listar();
        this.ddlStatus.DataTextField = "Status";
        this.ddlStatus.DataValueField = "UsuarioStatusId";
        this.ddlStatus.DataBind();
        this.ddlStatus.Items.Insert(0, new ListItem(Resources.Textos.Texto_Selecione, "0"));

        //this.ddlVan.DataSource = DOVan.Listar();
        //this.ddlVan.DataTextField = "NomeFantasia";
        //this.ddlVan.DataValueField = "Id";
        //this.ddlVan.DataBind();
        //this.ddlVan.Items.Insert(0, new ListItem(Resources.Textos.Texto_Selecione, "0"));

        this.ddlPerfil.DataSource = DOPerfil.Listar();
        this.ddlPerfil.DataTextField = "Nome";
        this.ddlPerfil.DataValueField = "Id";
        this.ddlPerfil.DataBind();
        this.ddlPerfil.Items.Insert(0, new ListItem(Resources.Textos.Texto_Selecione, "0"));

        btnGerarSenha.OnClientClick = string.Concat("javascript:return confirm('", Resources.Textos.Modulo_Usuario_Gerar_Senha, "')");

        this.rfvPerfil.Text = Resources.Textos.Texto_Campo_Obrigatorio;
        this.rfvSenha.Text = Resources.Textos.Texto_Campo_Obrigatorio;
        this.rfvStatus.Text = Resources.Textos.Texto_Campo_Obrigatorio;
        this.rfvEmail.Text = Resources.Textos.Texto_Campo_Obrigatorio;
        this.rfvLogin.Text = Resources.Textos.Texto_Campo_Obrigatorio;
        this.rfvNome.Text = Resources.Textos.Texto_Campo_Obrigatorio;
        this.rfvSenha.Text = Resources.Textos.Texto_Campo_Obrigatorio;
        this.revEmail.Text = Resources.Textos.Texto_Email_Invalido;
    }

    private void CarregarObjetos(Utilitarios.TipoTransacao objTipoTransacao, Usuario objUsuario = null)
    {
        switch (objTipoTransacao)
        {
            //Novo Usuario
            case Utilitarios.TipoTransacao.Limpar:
                codigo = 0;

                ddlPerfil.SelectedValue = "0";
                txtNome.Text = string.Empty;
                txtEmail.Text = string.Empty;
                txtLogin.Text = string.Empty;
                txtSenha.Text = string.Empty;
                ddlStatus.SelectedValue = "0";
                ddlVan.SelectedValue = "0";
                pnlVan.Visible = false;
                pnlUltimoAcesso.Visible = false;

                break;
            //Carregar Dados do Usuario
            case Utilitarios.TipoTransacao.Salvar:

                if (objUsuario == null)
                {
                    gobjUsuario = new Usuario();
                }

                gobjUsuario.Id = codigo;
                gobjUsuario.IdPerfil = Convert.ToInt32(ddlPerfil.SelectedValue);
                gobjUsuario.Nome = txtNome.Text;
                gobjUsuario.Email = txtEmail.Text;
                gobjUsuario.Login = txtLogin.Text;

                if (ddlPerfil.SelectedValue.Equals("1") && ddlVan.SelectedIndex > 0)
                    gobjUsuario.IdParceiro = Convert.ToInt32(ddlVan.SelectedValue);

                if (!string.IsNullOrEmpty(txtSenha.Text))
                {
                    gobjUsuario.Senha = Utilitarios.CriptografiaSeguranca.Rc4(txtSenha.Text);
                }

                if(!string.IsNullOrEmpty(ddlStatus.SelectedValue))
                    gobjUsuario.IdStatus = Convert.ToInt32(ddlStatus.SelectedValue);

                break;
            //Descarregar Dados do Usuario
            case Utilitarios.TipoTransacao.Carregar:

                ddlPerfil.SelectedValue = objUsuario.IdPerfil.ToString();
                txtNome.Text = objUsuario.Nome.ToString();
                txtEmail.Text = objUsuario.Email.ToString();
                txtLogin.Text = objUsuario.Login.ToString();                
                ddlStatus.SelectedValue = objUsuario.IdStatus.ToString();

                if (objUsuario.IdPerfil == 1)
                {
                    pnlVan.Visible = true;
                    ddlVan.SelectedValue = objUsuario.IdParceiro.ToString();
                }

                txtSenha.Text = objUsuario.Senha.ToString();
                pnlSenha.Visible = false;
                rfvSenha.Enabled = false;
                pnlUltimoAcesso.Visible = true;
                txtDataUltimoAcesso.Text = objUsuario.DataUltimoAcesso.ToString();

                break;
        }
    }
    
    private void AtualizarSenha()
    {
        try
        {
            string senhaNova = Utilitarios.CriptografiaSeguranca.GerarSenha();

            DOUsuario.AtualizarSenha(Convert.ToInt32(Request.QueryString["Id"]), Utilitarios.CriptografiaSeguranca.Rc4(senhaNova));
            ((Manager_Interna)Master).ExibirMensagem(Resources.Textos.Modulo_Usuario_Senha_Alterada + " " + senhaNova);
            txtDataUltimoAcesso.Text = string.Empty;
        }
        catch (Exception ex)
        {
            //Chama o método para gravar erro
            ((Manager_Interna)Master).ExibirAlerta(ex);
        }    
        
    }

    private void Salvar()
    {

        if (pnlSenha.Visible)
            if (!string.IsNullOrEmpty(txtSenha.Text))
            {
                if (!Utilitarios.Validacao.Campos.ValidaSenha(txtSenha.Text))
                {
                    ((Manager_Interna)Master).ExibirMensagem(Resources.Textos.Erro_Validar_Senha);
                    return;
                }
            }

        try
        {
            codigo = Convert.ToInt32(Request.QueryString["Id"]);
            this.CarregarObjetos(Utilitarios.TipoTransacao.Salvar, gobjUsuario);

            if (codigo == 0)
            {
                DOUsuario.Inserir(gobjUsuario);
                Response.Redirect("Listar.aspx?sucesso=1");
            }
            else
            {
                DOUsuario.Atualizar(gobjUsuario);
                Response.Redirect("Listar.aspx?sucesso=2");
            }

            
        }
        catch (SqlException sqlEx)
        {
            //"Cannot insert duplicate key row in object"
            if (sqlEx.Number == 2601)            
                ((Manager_Interna)Master).ExibirMensagem(Resources.Textos.Modulo_Usuario_Login_Duplicado);            
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
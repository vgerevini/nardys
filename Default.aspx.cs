using System;
using System.Configuration;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.Security;
using System.Web.UI;

public partial class Manager_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        txtLogin.Attributes["placeholder"] = "usuário";
        txtSenha.Attributes["placeholder"] = "senha";

        if (!Page.IsPostBack && Request.QueryString["l"] == "1")
        {
            if (Session["usuario"] != null)
            {
                DOLog.Inserir("Usuário - LogOff", Utilitarios.TipoLog.Usuario, ((Usuario)Session["usuario"]).Id);
            }

            Session["usuario"] = null;
        } 

        this.Master.FindControl("body").ID = "login";

        this.phlMensagem.Visible = false;
        this.lblMensagem.Text = string.Empty;
    }

    #region "Eventos"
    protected void btSubmit_Click(object sender, EventArgs e)
    {
        EfetuarLogin();
    }

    protected void btSubmitEsqueciSenha_Click(object sender, EventArgs e)
    {
        this.pnlLogin.Visible = false;
        this.pnlEsqueciSenha.Visible = true;
    }

    protected void btnEnviarEsqueci_Click(object sender, EventArgs e)
    {
        EsqueciMinhaSenha();
    }

    protected void btnVoltar_Click(object sender, EventArgs e)
    {
        this.pnlLogin.Visible = true;
        this.pnlEsqueciSenha.Visible = false;
    }

    protected void btnSalvarNovaSenha_Click(object sender, EventArgs e)
    {
        SalvarNovaSenha();
    }
    #endregion

    #region "Metodos"
    private void EfetuarLogin()
    {
        try
        {
            string strLogin = txtLogin.Text;
            string strSenha = txtSenha.Text;

            Usuario usuarioLogado = DOUsuario.ObterUsuarioLogin(strLogin.TrimStart('0'), Utilitarios.CriptografiaSeguranca.Rc4(strSenha));

            Session["usuario"] = usuarioLogado;

            if (usuarioLogado.Id > 0)
            {
                if (usuarioLogado.IdStatus == 2)
                {
                    lblMensagem.Text = Resources.Textos.Login_Mensagem_Usuario_Bloqueado;
                    phlMensagem.Visible = true;
                }
                else
                {
                    bool primeiroAcesso = usuarioLogado.DataUltimoAcesso == null;

                    if (primeiroAcesso)
                    {
                        pnlLogin.Visible = false;
                        pnlPrimeiroAcesso.Visible = true;
                    }
                    else
                    {
                        DOUsuario.AtualizarAcesso(strLogin);
                        DOLog.Inserir("Usuário - Login", Utilitarios.TipoLog.Usuario, usuarioLogado.Id);

                        FormsAuthentication.SetAuthCookie(usuarioLogado.Nome, false);
                        FormsAuthentication.RedirectFromLoginPage(usuarioLogado.Nome, false);
                    }
                }
            }
            else
            {
                lblMensagem.Text = Resources.Textos.Login_Mensagem_Usuario_e_senha_invalidas;
                phlMensagem.Visible = true;
            }
        }
        catch (Exception ex)
        {
            ((Manager_MasterPage)Master).ExibirAlerta(ex);
        }
    }

    private void EsqueciMinhaSenha()
    {
        try
        {
            if (!string.IsNullOrEmpty(txtEmailEsqueci.Text))
            {
                Usuario usuarioLogado = DOUsuario.ObterUsuarioEmail(txtEmailEsqueci.Text);

                if (usuarioLogado.Id > 0)
                {
                    EnviarEmail(usuarioLogado);

                    lblMensagem.Text = Resources.Textos.Login_Mensagem_Email_Enviado_Sucesso;
                    phlMensagem.Visible = true;
                }
                else
                {
                    lblMensagem.Text = Resources.Textos.Login_Mensagem_Usuario_Nao_Encontrado;
                    phlMensagem.Visible = true;
                }
            }
            else
            {
                lblMensagem.Text = Resources.Textos.Login_Mensagem_Esqueci_Senha_Login_Email;
                phlMensagem.Visible = true;
            }
        }
        catch (Exception ex)
        {
            lblMensagem.Text = Resources.Textos.Modulo_Prospeccao_Email_Gerente_Reenvio_Mensagem_Erro;
            phlMensagem.Visible = true;
        }
    }

    private void EnviarEmail(Usuario objUsuario)
    {
        try
        {
            //Utilitarios.Email.MailMessage msg = new Utilitarios.Email.MailMessage();

            //string strCorpo = string.Empty;

            //strCorpo = DOEmailVan.CarregaConteudo(Utilitarios.TipoEmailVan.EsqueciSenha);

            //if (!string.IsNullOrEmpty(strCorpo))
            //{
            //    string novaSenha = Utilitarios.CriptografiaSeguranca.GerarSenha();

            //    strCorpo = strCorpo.Replace("#NOME#", objUsuario.Nome);
            //    strCorpo = strCorpo.Replace("#LOGIN#", objUsuario.Login);
            //    strCorpo = strCorpo.Replace("#SENHA#", novaSenha);

            //    DOUsuario.AtualizarSenha(objUsuario.Id, Utilitarios.CriptografiaSeguranca.Rc4(novaSenha));

            //    // Adiciona Destinatário
            //    msg.To.Add(new System.Net.Mail.MailAddress(objUsuario.Email));

            //    msg.Body = strCorpo;
            //    msg.IsBodyHtml = true;
            //    msg.Subject = Resources.Textos.Email_Titulo_Esqueci_Senha;

            //    //ENVIA O E-MAIL
            //    new Utilitarios.Email.SendMail(msg, false);
            //}
            //else
            //{
            //    lblMensagem.Text = Resources.Textos.Login_Mensagem_Erro_Template_Email;
            //    phlMensagem.Visible = true;
            //}
        }
        catch (Exception ex)
        {
            throw ex;
        }
    }

    private void SalvarNovaSenha()
    {
        if (txtSenhaNova.Text.Equals(txtSenhaNovaConfirma.Text))
        {
            if (!Utilitarios.Validacao.Campos.ValidaSenha(txtSenhaNova.Text, ((Usuario)Session["usuario"]).Senha))
            {
                ((Manager_MasterPage)Master).ExibirMensagem(Resources.Textos.Erro_Validar_Senha);
                phlMensagem.Visible = true;
            }
            else
                AtualizarAcesso();
        }
        else
        {
            lblMensagem.Text = Resources.Textos.Login_Mensagem_Erro_Confirmar_Senha;
            phlMensagem.Visible = true;
        }

    }

    private void AtualizarAcesso()
    {
        try
        {
            Usuario usuarioLogado = (Usuario)Session["usuario"];

            DOUsuario.AtualizarSenha(usuarioLogado.Id, Utilitarios.CriptografiaSeguranca.Rc4(txtSenhaNova.Text));
            DOUsuario.AtualizarAcesso(usuarioLogado.Login);
            DOLog.Inserir("Usuário - Login", Utilitarios.TipoLog.Usuario, usuarioLogado.Id);

            FormsAuthentication.SetAuthCookie(usuarioLogado.Nome, false);
            FormsAuthentication.RedirectFromLoginPage(usuarioLogado.Nome, false);

        }
        catch (Exception ex)
        {
            ((Manager_MasterPage)Master).ExibirAlerta(ex);
        }
    }
    #endregion

}
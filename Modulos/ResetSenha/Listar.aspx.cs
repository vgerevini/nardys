using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Modulos_ResetSenha_Listar : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            IniciaTela();
            LimparCampo();
        }
    }

    #region Eventos
    protected void btnGerarSenha_Click(object sender, EventArgs e)
    {
        AtualizarSenha();
    }

    protected void txtLogin_TextChanged(object sender, EventArgs e)
    {
        VerificarUsuario();
    }
    #endregion

    #region Métodos

    private void IniciaTela()
    {

        btnGerarSenha.OnClientClick = string.Concat("javascript:return confirm('", Resources.Textos.Modulo_Reset_Login_Gerar_Senha, "')");
    }

    private string GerarSenha()
    {
        var chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
        var random = new Random();
        var result = new string(
            Enumerable.Repeat(chars, 8)
                      .Select(s => s[random.Next(s.Length)])
                      .ToArray());

        return result;

    }

    private void AtualizarSenha()
    {
        try
        {

            //UsuarioCheckList objUsuarioCheckList = DOUsuarioCheckList.ObterUsuarioLogin(txtLogin.Text);

            //if (objUsuarioCheckList.Id == 0)
            //{
            //    ((Manager_Interna)Master).ExibirMensagem(Resources.Textos.Modulo_Reset_Login_Invalido);
            //}
            //else
            //{
            //    string senhaNova = ConfigurationManager.AppSettings["SenhaResetPadrao"];

            //    DOUsuario.AtualizarSenha(objUsuarioCheckList.Id, Utilitarios.CriptografiaSeguranca.Rc4(senhaNova));
            //    ((Manager_Interna)Master).ExibirMensagem(Resources.Textos.Modulo_Reset_Login_Senha_Alterada + " " + senhaNova);
            //    LimparCampo();
            //}
        }
        catch (Exception ex)
        {
            //Chama o método para gravar erro
            ((Manager_Interna)Master).ExibirAlerta(ex);
        }

    }

    private void LimparCampo()
    {
        txtLogin.Text = string.Empty;
    }

    private void VerificarUsuario()
    {
        try
        {
            //UsuarioCheckList objusuario = DOUsuarioCheckList.ObterUsuarioLogin(txtLogin.Text);

            //if (objusuario.Id > 0)
            //{
            //    lblNomeUsuario.Text = objusuario.Nome;
            //    btnGerarSenha.Visible = true;
            //}
            //else
            //{
            //    lblNomeUsuario.Text = Resources.Textos.Modulo_Reset_Login_Nao_Encontrado;
            //    btnGerarSenha.Visible = false;
            //}
        }
        catch (Exception ex)
        {
            //Chama o método para gravar erro
            ((Manager_Interna)Master).ExibirAlerta(ex);
        }
    }

    #endregion
}
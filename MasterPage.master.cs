using System;
using System.Web;
using System.Web.UI;
using System.Configuration;

public partial class Manager_MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

        dynamic enabledSsl = ConfigurationManager.AppSettings["SSL"];

        if (enabledSsl != null)
        {
            if (enabledSsl.Equals("on") && Request.IsSecureConnection == false & Request.Url.ToString().IndexOf("https://") < 0)
            {
                string strSecureURL = string.Empty;
                strSecureURL = "https://";
                //strSecureURL = strSecureURL & Request.ServerVariables("SERVER_NAME")
                //strSecureURL = strSecureURL & Request.ServerVariables("URL")

                dynamic url = HttpContext.Current.Response.ApplyAppPathModifier(HttpContext.Current.Request.Url.AbsolutePath);
                //Dim uri As Uri = New Uri(url)

                //Change host
                dynamic baseUrl = "https://";
                string sslHost = null;


                sslHost = HttpContext.Current.Request.Url.Host;

                baseUrl = string.Concat(baseUrl, sslHost);


                Response.Redirect((new Uri(new Uri(baseUrl), url)).ToString(), true);
            }
        }

        string addr;
        addr = Request.ServerVariables["REMOTE_ADDR"];

        //Response.Write(addr);

        if ((addr.IndexOf("10.") < 0) &&
             (addr.IndexOf("200.246.233.") < 0) &&
             (addr.IndexOf("200.206.167.211") < 0) &&
             (addr.IndexOf("200.99.132.190") < 0) &&
             (addr.IndexOf("200.162.55.59") < 0) &&
             (addr.IndexOf("200.206.167.211") < 0) &&
             (addr.IndexOf("200.246.210.") < 0)
             )
        {
            //Response.Redirect("https://expresso.bradesco/");
            //Response.End();
        }

    }

    public void ExibirAlerta(Exception pex)
    {
        int IdUsuario = 0;
        try
        {
            //Habilita a view a ser exibida
            mtvViews.ActiveViewIndex = 0;

            if (Session["usuario"] != null)
            {
                IdUsuario = ((Usuario)Session["usuario"]).Id;
            }

            //Insere erro na tabela de log
            DOLog.Inserir(string.Concat("Erro Sistema: ", pex.ToString()), Utilitarios.TipoLog.Sistema, IdUsuario);

            //Adiciona o erro na label
            lblErro.Text = pex.ToString();

            //Abre a Div
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Alert", "javascript:openModal();", true);

        }
        catch (Exception ex)
        {
            //Adiciona o erro na label
            lblErro.Text = ex.ToString();
            DOLog.Inserir(string.Concat("Erro Sistema: ", ex), Utilitarios.TipoLog.Sistema, IdUsuario);
        }
    }

    public void ExibirMensagem(string pstrMensagem)
    {
        int IdUsuario = 0;
        try
        {
            //Habilita a view a ser exibida
            mtvViews.ActiveViewIndex = 1;

            Usuario usuario = new Usuario();

            if (Session["usuario"] != null)
            {
                IdUsuario = ((Usuario)Session["usuario"]).Id;
            }
            //Adiciona o erro na label
            litMensagem.Text = pstrMensagem;

            //Abre a Div
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Alert", "javascript:openModal('M');", true);

        }
        catch (Exception ex)
        {
            //Adiciona o erro na label
            lblErro.Text = ex.ToString();
            DOLog.Inserir(string.Concat("Erro Sistema: ", ex), Utilitarios.TipoLog.Sistema, IdUsuario);
        }
    }
    
}

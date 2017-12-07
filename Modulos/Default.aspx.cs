using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Manager_Interna_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["usuario"] == null)
        {
            Response.Redirect("~/Default.aspx");
        }

        var usuario = ((Usuario)Session["usuario"]);
        lblUsuarioLogado.Text = usuario.Nome;

        if(usuario.IdPerfil == 1)
        {
            if (!String.IsNullOrWhiteSpace(usuario.NomeFantasia))
                lblVan.Text = String.Format("VAN: {0}", usuario.NomeFantasia);
        }
    }
}
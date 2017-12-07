using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Modulos_Perfis_Listar : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {     
        if (!Page.IsPostBack)
        {
            if ((Request.QueryString["Sucesso"] == "1"))
            {
                ((Manager_Interna)Master).ExibirMensagem(Resources.Textos.Modulo_Usuario_Mensagem_Atualizado_Sucesso);
            }

            this.LerDados();
        }
    }


    #region Variáveis
    public string SortField
    {
        get { return (string)(ViewState["SortField"] ?? ""); }
        set { ViewState["SortField"] = value; }
    }

    public bool AscendingSort
    {
        get { return (bool)(ViewState["AscendingSort"] ?? true); }
        set { ViewState["AscendingSort"] = value; }
    }
    #endregion

    #region Eventos  

    protected void listPager_PageChanged(object sender, EventArgs e)
    {
        BindGrid();
    }

    protected void ddlRegistros_SelectedIndexChanged(object sender, EventArgs e)
    {
        listPager.CurrentPageNumber = 1;
        BindGrid();
    }

    protected void grdDados_SortCommand(object source, DataGridSortCommandEventArgs e)
    {
        if (listPager.DataSource != null && listPager.DataSource is IEnumerable<Perfil>)
        {
            IEnumerable<Perfil> dados = (IEnumerable<Perfil>)listPager.DataSource;
            SortField = e.SortExpression;

            if ((e.SortExpression == SortField))
            {
                if (AscendingSort)
                {
                    AscendingSort = false;
                }
                else
                {
                    AscendingSort = true;
                }

            }
            else
            {
                AscendingSort = true;
            }

            foreach (DataGridColumn c in grdDados.Columns)
            {
                c.HeaderStyle.CssClass = string.Format("tabelaHeader");
            }

            foreach (DataGridColumn c in grdDados.Columns)
            {
                if ((!string.IsNullOrWhiteSpace(c.SortExpression)
                            && c.SortExpression.Equals(e.SortExpression, StringComparison.OrdinalIgnoreCase)))
                {
                    if (AscendingSort)
                    {
                        c.HeaderStyle.CssClass = string.Format("tabelaHeader asc");
                    }
                    else
                    {
                        c.HeaderStyle.CssClass = string.Format("tabelaHeader desc");
                    }

                    break;
                }

            }

            #region Campos Sorting
            switch (e.SortExpression)
            {
                case "Id":
                    if (AscendingSort)
                        dados = dados.OrderBy(u => u.Id).ToArray();
                    else
                        dados = dados.OrderByDescending(u => u.Id).ToArray();
                    break;
                case "Nome":
                    if (AscendingSort)
                        dados = dados.OrderBy(u => u.Nome).ToArray();
                    else
                        dados = dados.OrderByDescending(u => u.Nome).ToArray();
                    break;
                default:
                    if (AscendingSort)
                        dados = dados.OrderBy(u => u.Id).ToArray();
                    else
                        dados = dados.OrderByDescending(u => u.Id).ToArray();
                    break;
            }
            #endregion

            listPager.DataSource = dados;
            listPager.DataBind();
            BindGrid();
        }
    }
    #endregion

    #region Métodos

    /// <summary>
    /// Lista dados do banco de dados
    /// </summary>
    private void LerDados()
    {
        try
        {
            List<Perfil> objDados = null;

            objDados = DOPerfil.Listar();

            if (objDados != null)
            {
                listPager.DataSource = objDados;
                listPager.DataBind();

                BindGrid();
            }
        }
        catch (Exception ex)
        {
            //Chama o método para gravar erro
            ((Manager_Interna)Master).ExibirAlerta(ex);
        }
    }

    /// <summary>
    /// Dados para o Grid
    /// </summary>
    private void BindGrid()
    {
        listPager.PageSize = Convert.ToInt32(ddlRegistros.SelectedValue);

        grdDados.DataSource = listPager.PageDataItems;
        grdDados.DataBind();

        bool hasData = false;

        listPager.Visible = (listPager.PageCount > 1);
        if (listPager.DataSource != null)
        {
            if (grdDados.Items.Count > 0)
            {
                hasData = true;
            }
        }

        lblNoRecordsFound.Visible = !hasData;
        grdDados.Visible = hasData;
    }

    #endregion

}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Manager_Modulos_Clientes_Listar : System.Web.UI.Page
{
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
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            if ((Request.QueryString["Sucesso"] == "1"))
            {
                ((Manager_Interna)Master).ExibirMensagem(Resources.Textos.Modulo_Cliente_Mensagem_Salva_Sucesso);
            }
            else if ((Request.QueryString["Sucesso"] == "2"))
            {
                ((Manager_Interna)Master).ExibirMensagem(Resources.Textos.Modulo_Cliente_Mensagem_Atualizado_Sucesso);
            }

            this.IniciaTela();
            this.LerDados();
        }
    }

    protected void btnExcluir_Click(object sender, EventArgs e)
    {
        Excluir();
    }

    protected void btnBuscar_Click(object sender, EventArgs e)
    {
        LerDados();
    }

    protected void listPager_PageChanged(object sender, EventArgs e)
    {
        BindGrid();
    }

    protected void grdDados_SortCommand(object source, DataGridSortCommandEventArgs e)
    {
        if (listPager.DataSource != null && listPager.DataSource is IEnumerable<Cliente>)
        {
            IEnumerable<Cliente> dados = (IEnumerable<Cliente>)listPager.DataSource;
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
                case "Telefone":
                    if (AscendingSort)
                        dados = dados.OrderBy(u => u.Telefone).ToArray();
                    else
                        dados = dados.OrderByDescending(u => u.Telefone).ToArray();
                    break;
                default:
                    if (AscendingSort)
                        dados = dados.OrderBy(u => u.Nome).ToArray();
                    else
                        dados = dados.OrderByDescending(u => u.Nome).ToArray();
                    break;
            }
            #endregion

            listPager.DataSource = dados;
            listPager.DataBind();
            BindGrid();
        }

    }

    protected void ddlRegistros_SelectedIndexChanged(object sender, EventArgs e)
    {
        listPager.CurrentPageNumber = 1;
        BindGrid();
    }

    protected void btnNovo_Click(object sender, EventArgs e)
    {
        Response.Redirect("Editar.aspx");
    }

    #endregion

    #region Métodos
    /// <summary>
    /// Inicia a tela
    /// </summary>
    private void IniciaTela()
    {
        try
        {
            this.btnBuscar.Text = Resources.Textos.Botao_Buscar;
            this.btnExcluir.Text = Resources.Textos.Botao_Excluir;
            this.btnNovo.Text = Resources.Textos.Botao_Novo;
        }
        catch (Exception ex)
        {
            //Chama o método para gravar erro
            ((Manager_Interna)Master).ExibirAlerta(ex);
        }
    }

    /// <summary>
    /// Lista dados do banco de dados
    /// </summary>
    private void LerDados()
    {
        try
        {
            List<Cliente> objDados = null;

            objDados = DOCliente.Listar(txtNome.Text);

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

    /// <summary>
    /// Verifica todos os registros selecionados na grid e exclui do banco de dados
    /// </summary>
    private void Excluir()
    {
        bool excluidoSucesso = true;

        try
        {
            foreach (DataGridItem item in grdDados.Items)
            {
                if (item.ItemType == ListItemType.Item ||
               item.ItemType == ListItemType.AlternatingItem)
                {
                    CheckBox chk = (CheckBox)item.FindControl("chkSeleciona");
                    if (chk.Checked)
                    {
                        try
                        {
                            DOCliente.Excluir(Convert.ToInt32(item.Cells[1].Text));
                        }
                        catch (Exception ex)
                        {
                            if (ex.Message.IndexOf("conflicted", StringComparison.InvariantCultureIgnoreCase) > -1)
                            {
                                excluidoSucesso = false;
                            }
                        }
                    }
                }
            }
            if (excluidoSucesso)
            {
                ((Manager_Interna)Master).ExibirMensagem(Resources.Textos.Mensagem_Exclusao_sucesso);
            }
            else
            {
                ((Manager_Interna)Master).ExibirMensagem(Resources.Textos.Mensagem_Erro_FK);
            }

        }
        catch (Exception ex)
        {
            //Chama o método para gravar erro
            ((Manager_Interna)Master).ExibirAlerta(ex);
        }
        IniciaTela();
        LerDados();
    }
    #endregion
}
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Modulos_Relatorios_ListarConsultores : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            this.IniciaTela();
            this.CarregarVans();
        }
    }

    protected void btnGerarRelatorio_Click(object sender, EventArgs e)
    {
        GerarRelatorio();
    }

    protected void chkRelatorioVisitas_CheckedChanged(object sender, EventArgs e)
    {
        ddlTipoRelatorioVisitas.Visible = chkRelatorioVisitas.Checked;
    }

    #region Métodos

    /// <summary>
    /// Inicia a tela
    /// </summary>
    private void IniciaTela()
    {
        Usuario usuarioLogado = ((Manager_Interna)Master).UsuarioLogado();

        this.btnGerarRelatorio.Text = Resources.Textos.Botao_Gerar_Relatorio;
        this.chkRelatorioVisitas.Text = Resources.Textos.Modulo_Relatorio_Consultores_Relatorio_Visitas;
    }

    /// <summary>
    /// Carrega o dropdown de VANS 
    /// </summary>
    private void CarregarVans()
    {
        ddlVan.DataSource = DOVan.Listar();
        ddlVan.DataTextField = "NomeFantasia";
        ddlVan.DataValueField = "ID";
        ddlVan.DataBind();
        ddlVan.Items.Insert(0, new ListItem(Resources.Textos.Texto_Todas, "0"));
    }

    private void GerarRelatorio()
    {
        DateTime parseDataInicial;
        DateTime parseDataFinal;
        DateTime? dataInicial = null;
        DateTime? dataFinal = null;

        try
        {
            if (DateTime.TryParse(txtDataInicio.Text, out parseDataInicial))
                dataInicial = parseDataInicial;
            else
            {
                ((Manager_Interna)Master).ExibirMensagem(Resources.Textos.Modulo_Relatorio_Data_Inicio_Invalida);
                return;
            }


            if (DateTime.TryParse(txtDataFim.Text, out parseDataFinal))
                dataFinal = parseDataFinal;
            else
            {
                ((Manager_Interna)Master).ExibirMensagem(Resources.Textos.Modulo_Relatorio_Data_Final_Invalida);
                return;
            }

            DataTable dttDados;

            if (chkRelatorioVisitas.Checked)
            {
                //Relatório de Visitas
                bool blnAnalitico = ddlTipoRelatorioVisitas.SelectedValue == "1";
                dttDados = DORelatorioConsultor.ListarVisitas(dataInicial, dataFinal,blnAnalitico, Convert.ToInt32(ddlVan.SelectedValue));
            }
            else {
                dttDados = DORelatorioConsultor.Listar(dataInicial, dataFinal,Convert.ToInt32(ddlVan.SelectedValue));
            }
            
            if (dttDados.Rows.Count == 0)
            {
                ((Manager_Interna)Master).ExibirMensagem(Resources.Textos.Modulo_Relatorio_Nenhum_Registro);
            }
            else
            {
                if (ddlTipoExportacao.SelectedValue == "1")
                    //csv
                    Utilitarios.Csv.CriarCsvOcorrencia(HttpContext.Current.Response, dttDados, System.Configuration.ConfigurationManager.AppSettings["RelatorioConsultor.NomeCsv"]);
                else
                {
                    //Excel
                    if (chkRelatorioVisitas.Checked)
                        Utilitarios.Excel.CriarExcel(HttpContext.Current.Response, dttDados, System.Configuration.ConfigurationManager.AppSettings["RelatorioConsultor.NomeExcel"]);
                    else
                        Utilitarios.Excel.CriarExcel(HttpContext.Current.Response, DORelatorioConsultor.TrataExcel(dttDados), System.Configuration.ConfigurationManager.AppSettings["RelatorioConsultor.NomeExcel"]);
                }
            }
        }
        catch (Exception ex)
        {
            //Chama o método para gravar erro
            ((Manager_Interna)Master).ExibirAlerta(ex);
        }
    }

    #endregion


}
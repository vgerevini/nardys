using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using Manager;
using System.Collections.Generic;

/// <summary>
/// Summary description for DORelatorioOcorrencia
/// </summary>
public class DORelatorioConsultor
{
    #region Listar
    public static DataTable Listar(DateTime? pdatInicial, DateTime? pdatFinal, int pintIdVan = 0)
    {
        string strConectionString = ConfigurationManager.ConnectionStrings["BradescoExpresso"].ConnectionString;
        SqlConnection objConexao = new SqlConnection(strConectionString);

        SqlCommand objComando = new SqlCommand("SPE_L_RELATORIO_CONSULTOR");
        objComando.Connection = objConexao;
        objComando.CommandType = CommandType.StoredProcedure;

        if (pdatInicial is DateTime)
            objComando.Parameters.Add("@dataInicial", SqlDbType.DateTime).Value = pdatInicial;

        if (pdatFinal is DateTime)
            objComando.Parameters.Add("@dataFinal", SqlDbType.DateTime).Value = pdatFinal.Value.AddDays(1).AddSeconds(-1);

        objComando.Parameters.Add("@van", SqlDbType.Int).Value = pintIdVan;

        try
        {
            //Abre Conexao
            objConexao.Open();
            System.Data.DataTable objDttRetorno = new System.Data.DataTable();
            objDttRetorno.Load(objComando.ExecuteReader());

            return objDttRetorno;
        }
        catch (Exception ex)
        {
            throw ex;

        }
        finally
        {
            //Fecha a conexao se aberta
            if (objConexao.State != ConnectionState.Closed)
            {
                objConexao.Close();
            }
        }
    }
    #endregion

    #region Listar Visitas
    public static DataTable ListarVisitas(DateTime? pdatInicial, DateTime? pdatFinal, bool pblnAnalitico, int pintIdVan = 0)
    {
        string strConectionString = ConfigurationManager.ConnectionStrings["BradescoExpresso"].ConnectionString;
        SqlConnection objConexao = new SqlConnection(strConectionString);

        SqlCommand objComando = new SqlCommand("SPE_L_RELATORIO_CONSULTOR_VISITA");
        objComando.Connection = objConexao;
        objComando.CommandType = CommandType.StoredProcedure;

        if (pdatInicial is DateTime)
            objComando.Parameters.Add("@dataInicial", SqlDbType.DateTime).Value = pdatInicial;

        if (pdatFinal is DateTime)
            objComando.Parameters.Add("@dataFinal", SqlDbType.DateTime).Value = pdatFinal.Value.AddDays(1).AddSeconds(-1);

        objComando.Parameters.Add("@van", SqlDbType.Int).Value = pintIdVan;
        objComando.Parameters.Add("@analitico", SqlDbType.Bit).Value = pblnAnalitico;

        try
        {
            //Abre Conexao
            objConexao.Open();
            System.Data.DataTable objDttRetorno = new System.Data.DataTable();
            objDttRetorno.Load(objComando.ExecuteReader());

            return objDttRetorno;
        }
        catch (Exception ex)
        {
            throw ex;

        }
        finally
        {
            //Fecha a conexao se aberta
            if (objConexao.State != ConnectionState.Closed)
            {
                objConexao.Close();
            }
        }
    }
    #endregion

    #region TrataExcel
    /// <summary>
    /// Formata Datatable para criação de relatório
    /// </summary>
    /// <param name="dt">Datatable</param>
    /// <returns></returns>
    public static DataTable TrataExcel(DataTable dt)
    {
        DataTable dtN = new DataTable();
        dtN.Columns.Add("Codigo Consultor");
        dtN.Columns.Add("Nome Consultor");
        dtN.Columns.Add("Telefone 1");
        dtN.Columns.Add("Telefone 2");
        dtN.Columns.Add("CPF");
        dtN.Columns.Add("Nome Van");
        dtN.Columns.Add("Cod Cidade");
        dtN.Columns.Add("Cidade");
        dtN.Columns.Add("Estado");
        dtN.Columns.Add("Revisado");

        foreach (DataRow dr in dt.Rows)
        {
            DataRow drN = dtN.NewRow();
            drN["Codigo Consultor"] = dr["id"].ToString();
            drN["Nome Consultor"] = dr["nome"].ToString();
            drN["Telefone 1"] = dr["tel"].ToString();
            drN["Telefone 2"] = dr["tel2"].ToString();
            drN["CPF"] = dr["cpf"].ToString();
            drN["Nome Van"] = dr["nomeFantasia"].ToString();
            drN["Cod Cidade"] = dr["codcidade"].ToString();
            drN["Cidade"] = dr["nomecidade"].ToString();
            drN["Estado"] = dr["estado"].ToString();
            drN["Revisado"] = dr["revisado"].ToString();
            dtN.Rows.Add(drN);
        }
        return dtN;
    }
    #endregion
}
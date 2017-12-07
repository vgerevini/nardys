using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using Manager;
using System.Collections.Generic;

/// <summary>
/// Summary description for DORelatorioOcorrencia
/// </summary>
public class DORelatorioCorrespondente
{
    #region Listar
    public static DataTable Listar(DateTime? pdatInicial, DateTime? pdatFinal)
    {
        string strConectionString = ConfigurationManager.ConnectionStrings["BradescoExpresso"].ConnectionString;
        SqlConnection objConexao = new SqlConnection(strConectionString);

        SqlCommand objComando = new SqlCommand("SPE_L_RELATORIO_CORRESPONDENTE");
        objComando.Connection = objConexao;
        objComando.CommandType = CommandType.StoredProcedure;

        if (pdatInicial is DateTime)
            objComando.Parameters.Add("@dataInicial", SqlDbType.DateTime).Value = pdatInicial;

        if (pdatFinal is DateTime)
            objComando.Parameters.Add("@dataFinal", SqlDbType.DateTime).Value = pdatFinal.Value.AddDays(1).AddSeconds(-1);

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
        dtN.Columns.Add("ID");
        dtN.Columns.Add("RAZAOSOCIAL");
        dtN.Columns.Add("CNPJ");
        dtN.Columns.Add("CEP");
        dtN.Columns.Add("ENDERECO");
        dtN.Columns.Add("NUMERO");
        dtN.Columns.Add("CIDADE");
        dtN.Columns.Add("ESTADO");
        dtN.Columns.Add("RAMOATIVIDADE");
        dtN.Columns.Add("NOMECONTATO");
        dtN.Columns.Add("EMAIL");
        dtN.Columns.Add("TELEFONE");
        dtN.Columns.Add("CORRENTISTABRAD");
        dtN.Columns.Add("AGENCIA");
        dtN.Columns.Add("OBS");
        dtN.Columns.Add("DATACADASTRO");
        dtN.Columns.Add("CONTA");
        dtN.Columns.Add("BAIRRO");
        dtN.Columns.Add("NOMEAGENCIA");

        foreach (DataRow dr in dt.Rows)
        {
            DataRow drN = dtN.NewRow();
            drN["ID"] = dr["PPP_Id"].ToString();
            drN["RAZAOSOCIAL"] = dr["PPP_RazaoSocial"] == DBNull.Value ? "" : dr["PPP_RazaoSocial"].ToString();
            drN["CNPJ"] = dr["PPP_CNPJ"] == DBNull.Value ? "" : dr["PPP_CNPJ"].ToString();
            drN["CEP"] = dr["PPP_CEP"] == DBNull.Value ? "" : dr["PPP_CEP"].ToString();
            drN["ENDERECO"] = dr["PPP_End"] == DBNull.Value ? "" : dr["PPP_End"].ToString();
            drN["NUMERO"] = dr["PPP_Numero"] == DBNull.Value ? "" : dr["PPP_Numero"].ToString();
            drN["CIDADE"] = dr["PPP_Cidade"] == DBNull.Value ? "" : dr["PPP_Cidade"].ToString();
            drN["ESTADO"] = dr["PPP_Estado"] == DBNull.Value ? "" : dr["PPP_Estado"].ToString();
            drN["RAMOATIVIDADE"] = dr["PPP_RamoAtividade"] == DBNull.Value ? "" : dr["PPP_RamoAtividade"].ToString();
            drN["NOMECONTATO"] = dr["PPP_NomeContato"] == DBNull.Value ? "" : dr["PPP_NomeContato"].ToString();
            drN["EMAIL"] = dr["PPP_email"] == DBNull.Value ? "" : dr["PPP_email"].ToString();
            drN["TELEFONE"] = dr["PPP_Tel"] == DBNull.Value ? "" : dr["PPP_Tel"].ToString();
            drN["CORRENTISTABRAD"] = dr["PPP_CorrentistaBrad"] == DBNull.Value ? "" : Convert.ToBoolean(dr["PPP_CorrentistaBrad"].ToString()) ? "SIM" : "NAO";
            drN["AGENCIA"] = dr["PPP_Agencia"] == DBNull.Value ? "" : dr["PPP_Agencia"].ToString();
            drN["OBS"] = dr["PPP_Obs"] == DBNull.Value ? "" : dr["PPP_Obs"].ToString();
            drN["DATACADASTRO"] = dr["PPP_dtCadastro"] == DBNull.Value ? "" : Convert.ToDateTime(Utilitarios.Formatacao.campos.TrataData(dr["PPP_dtCadastro"].ToString())).ToString("dd/MM/yyyy");
            drN["CONTA"] = dr["PPP_Conta"] == DBNull.Value ? "" : dr["PPP_Conta"].ToString();
            drN["BAIRRO"] = dr["PPP_Bairro"] == DBNull.Value ? "" : dr["PPP_Bairro"].ToString();
            drN["NOMEAGENCIA"] = dr["PPP_NomeAgencia"] == DBNull.Value ? "" : dr["PPP_NomeAgencia"].ToString();
            dtN.Rows.Add(drN);
        }
        return dtN;
    }
    #endregion
}
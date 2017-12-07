using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using Manager;
using System.Collections.Generic;

/// <summary>
/// Summary description for DORelatorioOcorrencia
/// </summary>
public class DORelatorioOcorrenciaStatus
{
    #region Listar
    public static DataTable Listar(DateTime? pdatInicial, DateTime? pdatFinal)
    {
        string strConectionString = ConfigurationManager.ConnectionStrings["BradescoExpresso"].ConnectionString;
        SqlConnection objConexao = new SqlConnection(strConectionString);

        SqlCommand objComando = new SqlCommand("SPE_L_RELATORIO_OCORRENCIA_STATUS");
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
        dtN.Columns.Add("ID Ocorrencia");
        dtN.Columns.Add("ID Prospeccao");
        dtN.Columns.Add("Data");
        dtN.Columns.Add("Descricao");
        dtN.Columns.Add("Canal");
        dtN.Columns.Add("ID Usuario");
        dtN.Columns.Add("Data Ultimo Acesso");
        dtN.Columns.Add("Nome Usuario");
        dtN.Columns.Add("E-mail");
        dtN.Columns.Add("ID Perfil");
        dtN.Columns.Add("Nome Perfil");
        dtN.Columns.Add("ID Status Usuario");
        dtN.Columns.Add("Descricao Status Usuario");
        dtN.Columns.Add("ID Status Ocorrencia");
        dtN.Columns.Add("Data Visita");

        foreach (DataRow dr in dt.Rows)
        {
            DataRow drN = dtN.NewRow();
            drN["ID Ocorrencia"] = dr["ocorrenciaId"].ToString();
            drN["ID Prospeccao"] = dr["prospeccaoId"].ToString();
            drN["Data"] = dr["dataHoraOcorrencia"].ToString();
            drN["Descricao"] = dr["descricao"].ToString();
            drN["Canal"] = dr["Canal"].ToString();
            drN["ID Usuario"] = dr["usuarioId"].ToString();
            drN["Data Ultimo Acesso"] = dr["dataUltimoAcesso"].ToString();
            drN["Nome Usuario"] = dr["nomeUsuario"].ToString();
            drN["E-mail"] = dr["emailUsuario"].ToString();
            drN["ID Perfil"] = dr["perfilId"].ToString();
            drN["Nome Perfil"] = dr["nomePerfil"].ToString();
            drN["ID Status Usuario"] = dr["usuarioStatusId"].ToString();
            drN["Descricao Status Usuario"] = dr["status"].ToString();
            drN["ID Status Ocorrencia"] = dr["statusId"].ToString();
            drN["Data Visita"] = dr["dataHoraVisita"].ToString();
            dtN.Rows.Add(drN);
        }
        return dtN;
    }
    #endregion
}
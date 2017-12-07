using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using Manager;
using System.Collections.Generic;

/// <summary>
/// Summary description for DORelatorioPreProspeccao
/// </summary>
public class DORelatorioPreProspeccao
{
    #region Listar
    public static DataTable Listar(DateTime? pdatInicial, DateTime? pdatFinal)
    {
        string strConectionString = ConfigurationManager.ConnectionStrings["BradescoExpresso"].ConnectionString;
        SqlConnection objConexao = new SqlConnection(strConectionString);

        SqlCommand objComando = new SqlCommand("SPE_L_RELATORIO_PRE_PROSPECCAO");
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
}
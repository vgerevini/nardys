using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for DORamo
/// </summary>
public class DOStatus
{
    #region Listar
    public static List<Status> Listar(int pintStatusId = 0,
                                      int pintDiasRetorno = 0,
                                      string pstrStatusBanco = null,
                                      string pstrStatusVan = null)
    {
        string strConectionString = ConfigurationManager.ConnectionStrings["BradescoExpresso"].ConnectionString;
        SqlConnection objConexao = new SqlConnection(strConectionString);

        SqlCommand objComando = new SqlCommand("SPE_L_STATUS");
        objComando.Connection = objConexao;
        objComando.CommandType = CommandType.StoredProcedure;

        if (pintStatusId > 0)
            objComando.Parameters.Add("@statusId", SqlDbType.Int).Value = pintStatusId;
        if (pintDiasRetorno > 0)
            objComando.Parameters.Add("@diasRetorno", SqlDbType.Int).Value = pintDiasRetorno;
        if (!String.IsNullOrWhiteSpace(pstrStatusBanco))
            objComando.Parameters.Add("@statusBanco", SqlDbType.NVarChar, 50).Value = pstrStatusBanco;
        if (!String.IsNullOrWhiteSpace(pstrStatusVan))
            objComando.Parameters.Add("@statusVAN", SqlDbType.NVarChar, 50).Value = pstrStatusVan;

        try
        {
            //Abre Conexao
            objConexao.Open();

            //Declara variavel de retorno           
            List<Status> objList = new List<Status>();
            Status obj = default(Status);

            IDataReader idrReader = default(IDataReader);

            idrReader = objComando.ExecuteReader();

            while ((idrReader.Read()))
            {
                obj = new Status();
                obj.FromIDataReader(idrReader);
                objList.Add(obj);
            }

            return objList;

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
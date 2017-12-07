using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using Manager;
using System.Collections.Generic;

public class DOSecaoFuncionalidade
{
    #region Listar
    /// <summary>
    /// Obter Funcionalidades das seções
    /// </summary>
    /// <returns></returns>
    public static List<SecaoFuncionalidade> Listar(int pintidPerfil)
    {
        string strConectionString = ConfigurationManager.ConnectionStrings["BradescoExpresso"].ConnectionString;
        SqlConnection objConexao = new SqlConnection(strConectionString);

        SqlCommand objComando = new SqlCommand("SPE_L_SECAO_FUNCIONALIDADE_PERFIL");
        objComando.Connection = objConexao;
        objComando.CommandType = CommandType.StoredProcedure;
        objComando.Parameters.Add("@perfilId", SqlDbType.VarChar, 20).Value = pintidPerfil;

        try
        {
            //Abre Conexao
            objConexao.Open();

            //Declara variavel de retorno           
            List<SecaoFuncionalidade> objListSecaoFuncionalidade = new List<SecaoFuncionalidade>();
            SecaoFuncionalidade objSecaoFuncionalidade = default(SecaoFuncionalidade);

            IDataReader idrReader = default(IDataReader);

            idrReader = objComando.ExecuteReader();

            while ((idrReader.Read()))
            {
                objSecaoFuncionalidade = new SecaoFuncionalidade();
                objSecaoFuncionalidade.FromIDataReader(idrReader);
                objListSecaoFuncionalidade.Add(objSecaoFuncionalidade);
            }

            return objListSecaoFuncionalidade;

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
using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using Manager;
using System.Collections.Generic;

public class DOAcessoFuncionalidade
{
    #region VerificaAcessoFuncionalidade
    /// <summary>
    /// Verifica se o usuário possui acesso a uma funcionalidade específica de uma seção
    /// </summary>
    /// <returns></returns>
    public static Boolean VerificaAcessoFuncionalidade(int pintIdusuario,int pintIdSecao, int pintIdFuncionalidade)
    {
        string strConectionString = ConfigurationManager.ConnectionStrings["BradescoExpresso"].ConnectionString;
        SqlConnection objConexao = new SqlConnection(strConectionString);

        SqlCommand objComando = new SqlCommand("SPE_L_ACESSO_FUNCIONALIDADE");
        objComando.Connection = objConexao;
        objComando.CommandType = CommandType.StoredProcedure;

        //Define parametros da procedure
        objComando.Parameters.Add("@USUARIOID", SqlDbType.Int).Value = pintIdusuario;
        objComando.Parameters.Add("@SECAID", SqlDbType.Int).Value = pintIdSecao;
        objComando.Parameters.Add("@SECAOFUNCIONALIDADEID", SqlDbType.Int).Value = pintIdFuncionalidade;

        try
        {
            //Abre Conexao
            objConexao.Open();
            
            IDataReader idrReader = default(IDataReader);

            idrReader = objComando.ExecuteReader();

            if((idrReader.Read()))
            {
                return true;
            }
            return false;
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

    #region Excluir

    public static void Excluir(int pintIdPerfil)
    {
        string strConectionString = ConfigurationManager.ConnectionStrings["BradescoExpresso"].ConnectionString;
        SqlConnection objConexao = new SqlConnection(strConectionString);

        SqlCommand objComando = new SqlCommand("SPE_D_ACESSO_FUNCIONALIDADE");
        objComando.Connection = objConexao;
        objComando.CommandType = CommandType.StoredProcedure;

        //Define parametros da procedure               
        objComando.Parameters.Add("@ID", SqlDbType.Int).Value = pintIdPerfil;

        try
        {
            //Abre conexão com o banco de dados
            objConexao.Open();

            //Executa comando no banco de dados
            objComando.ExecuteNonQuery();

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

    #region Inserir

    public static int Inserir(AcessoFuncionalidade pobjAcessoFuncionalidade)
    {
        string strConectionString = ConfigurationManager.ConnectionStrings["BradescoExpresso"].ConnectionString;
        SqlConnection objConexao = new SqlConnection(strConectionString);

        SqlCommand objComando = new SqlCommand("SPE_I_ACESSO_FUNCIONALIDADE");
        objComando.Connection = objConexao;
        objComando.CommandType = CommandType.StoredProcedure;

        //Define parametros da procedure
        objComando.Parameters.Add("@perfilId", SqlDbType.Int).Value = pobjAcessoFuncionalidade.IdPerfil;
        objComando.Parameters.Add("@secaoId", SqlDbType.Int).Value = pobjAcessoFuncionalidade.IdSecao;
        objComando.Parameters.Add("@secaoFuncionalidadeId", SqlDbType.Int).Value = pobjAcessoFuncionalidade.IdSecaoFuncionalidade;
        
        try
        {
            //Abre conexão com o banco de dados
            objConexao.Open();

            //Declara variavel de retorno
            int intRetorno = 0;

            //Executa comando no banco de dados
            intRetorno = objComando.ExecuteNonQuery();

            return intRetorno;

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
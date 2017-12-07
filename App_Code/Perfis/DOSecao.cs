using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using Manager;
using System.Collections.Generic;

public class DOSecao
{
    #region Listar
    /// <summary>
    /// Obter Seções de um perfil
    /// </summary>
    /// <returns></returns>
    public static List<Secao> Listar(int pintidPerfil)
    {
        string strConectionString = ConfigurationManager.ConnectionStrings["BradescoExpresso"].ConnectionString;
        SqlConnection objConexao = new SqlConnection(strConectionString);

        SqlCommand objComando = new SqlCommand("SPE_L_SECAO_PERFIL");
        objComando.Connection = objConexao;
        objComando.CommandType = CommandType.StoredProcedure;
        objComando.Parameters.Add("@perfilId", SqlDbType.VarChar, 20).Value = pintidPerfil;

        try
        {
            //Abre Conexao
            objConexao.Open();

            //Declara variavel de retorno           
            List<Secao> objListSecao = new List<Secao>();
            Secao objSecao = default(Secao);

            IDataReader idrReader = default(IDataReader);

            idrReader = objComando.ExecuteReader();

            while ((idrReader.Read()))
            {
                objSecao = new Secao();
                objSecao.FromIDataReader(idrReader);
                objListSecao.Add(objSecao);
            }

            return objListSecao;

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

    /// <summary>
    /// Obter Seções de um perfil
    /// </summary>
    /// <returns></returns>
    public static List<Secao> ListarSecoesMenu(int pintidPerfil)
    {
        string strConectionString = ConfigurationManager.ConnectionStrings["BradescoExpresso"].ConnectionString;
        SqlConnection objConexao = new SqlConnection(strConectionString);

        SqlCommand objComando = new SqlCommand("SPE_L_SECAO_PERFIL_MENU");
        objComando.Connection = objConexao;
        objComando.CommandType = CommandType.StoredProcedure;
        objComando.Parameters.Add("@perfilId", SqlDbType.VarChar, 20).Value = pintidPerfil;

        try
        {
            //Abre Conexao
            objConexao.Open();

            //Declara variavel de retorno           
            List<Secao> objListSecao = new List<Secao>();
            Secao objSecao = default(Secao);

            IDataReader idrReader = default(IDataReader);

            idrReader = objComando.ExecuteReader();

            while ((idrReader.Read()))
            {
                objSecao = new Secao();
                objSecao.FromIDataReader(idrReader);
                objListSecao.Add(objSecao);
            }

            return objListSecao;

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
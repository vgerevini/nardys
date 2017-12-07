using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using Manager;
using System.Collections.Generic;

public class DOCliente
{

    #region  Obter
    /// <summary>
    /// Obter usuário pelo login e senha
    /// </summary>
    /// <param name="pstrLogin">Login</param>
    /// <param name="pstrSenha">Senha</param>
    /// <returns></returns>
    public static Cliente ObterCliente(int pintId)
    {

        string strConectionString = ConfigurationManager.ConnectionStrings["BradescoExpresso"].ConnectionString;
        SqlConnection objConexao = new SqlConnection(strConectionString);

        SqlCommand objComando = new SqlCommand("SPE_L_CLIENTE");
        objComando.Connection = objConexao;
        objComando.CommandType = CommandType.StoredProcedure;

        objComando.Parameters.Add("@IDCLIENTE", SqlDbType.Int).Value = pintId;

        try
        {
            objConexao.Open();

            Cliente objCliente = new Cliente();

            IDataReader idrReader = default(IDataReader);

            idrReader = objComando.ExecuteReader();

            while ((idrReader.Read()))
            {
                objCliente.FromIDataReader(idrReader);
            }

            return objCliente;

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
    /// Obter usuário pelo id
    /// </summary>
    /// <param name="Id">Id Usuario</param>
    /// <param name="pstrSenha">Senha</param>
    /// <returns></returns>
    //public static Usuario ObterUsuarioId(int Id)
    //{

    //    string strConectionString = ConfigurationManager.ConnectionStrings["BradescoExpresso"].ConnectionString;
    //    SqlConnection objConexao = new SqlConnection(strConectionString);

    //    SqlCommand objComando = new SqlCommand("SPE_L_USUARIO_ID");
    //    objComando.Connection = objConexao;
    //    objComando.CommandType = CommandType.StoredProcedure;

    //    objComando.Parameters.Add("@ID", SqlDbType.Int).Value = Id;        

    //    try
    //    {
    //        objConexao.Open();

    //        Usuario objUsuario = new Usuario();

    //        IDataReader idrReader = default(IDataReader);

    //        idrReader = objComando.ExecuteReader();

    //        while ((idrReader.Read()))
    //        {
    //            objUsuario.FromIDataReader(idrReader);
    //        }

    //        return objUsuario;

    //    }
    //    catch (Exception ex)
    //    {
    //        throw ex;

    //    }
    //    finally
    //    {
    //        //Fecha a conexao se aberta
    //        if (objConexao.State != ConnectionState.Closed)
    //        {
    //            objConexao.Close();
    //        }
    //    }

    //}
    #endregion

    #region Atualizar
    /// <summary>
    /// Objeto Usuario
    /// </summary>
    /// <param name="pobjCliente">Obejto Usuario</param>
    /// <returns></returns>
    public static int Atualizar(Cliente pobjCliente)
    {
        string strConectionString = ConfigurationManager.ConnectionStrings["BradescoExpresso"].ConnectionString;
        SqlConnection objConexao = new SqlConnection(strConectionString);

        SqlCommand objComando = new SqlCommand("SPE_U_CLIENTE");
        objComando.Connection = objConexao;
        objComando.CommandType = CommandType.StoredProcedure;

        //Define parametros da procedure
        objComando.Parameters.Add("@ID", SqlDbType.Int).Value = pobjCliente.Id;
        objComando.Parameters.Add("@NOME", SqlDbType.VarChar, 200).Value = pobjCliente.Nome;
        objComando.Parameters.Add("@TELEFONE", SqlDbType.VarChar, 20).Value = pobjCliente.Telefone;

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

    /// <summary>
    /// Atualiza último acesso do usuário
    /// </summary>
    /// <param name="pstrLogin">Login</param>
    /// <returns></returns>
    public static int AtualizarAcesso(string pstrLogin)
    {
        string strConectionString = ConfigurationManager.ConnectionStrings["BradescoExpresso"].ConnectionString;
        SqlConnection objConexao = new SqlConnection(strConectionString);

        SqlCommand objComando = new SqlCommand("SPE_U_USUARIO_ACESSO");
        objComando.Connection = objConexao;
        objComando.CommandType = CommandType.StoredProcedure;

        //Define parametros da procedure
        objComando.Parameters.Add("@login", SqlDbType.VarChar, 50).Value = pstrLogin;


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

    /// <summary>
    /// Atualiza a senha do usuário
    /// </summary>
    /// <param name="pintId">ID</param>
    /// <param name="pstrSenha">Senha gerada pelo sistema</param>
    /// <returns></returns>
    public static int AtualizarSenha(int pintId, string pstrSenha)
    {
        string strConectionString = ConfigurationManager.ConnectionStrings["BradescoExpresso"].ConnectionString;
        SqlConnection objConexao = new SqlConnection(strConectionString);

        SqlCommand objComando = new SqlCommand("SPE_U_USUARIO_SENHA");
        objComando.Connection = objConexao;
        objComando.CommandType = CommandType.StoredProcedure;

        //Define parametros da procedure
        objComando.Parameters.Add("@id", SqlDbType.Int).Value = pintId;
        objComando.Parameters.Add("@senha", SqlDbType.NVarChar, 50).Value = pstrSenha;


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

    #region Inserir
    /// <summary>
    /// Objeto Usuario
    /// </summary>
    /// <param name="pobjCliente">Obejto Usuario</param>
    /// <returns></returns>
    public static int Inserir(Cliente pobjCliente)
    {
        string strConectionString = ConfigurationManager.ConnectionStrings["BradescoExpresso"].ConnectionString;
        SqlConnection objConexao = new SqlConnection(strConectionString);

        SqlCommand objComando = new SqlCommand("SPE_I_CLIENTE");
        objComando.Connection = objConexao;
        objComando.CommandType = CommandType.StoredProcedure;

        //Define parametros da procedure               
        objComando.Parameters.Add("@NOME", SqlDbType.VarChar, 200).Value = pobjCliente.Nome;
        objComando.Parameters.Add("@TELEFONE", SqlDbType.VarChar, 20).Value = pobjCliente.Telefone;

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

    #region Listar
    /// <summary>
    /// Obter usuário pelo login e senha
    /// </summary>
    /// <param name="pstrLogin">Login</param>
    /// <param name="pstrSenha">Senha</param>
    /// <returns></returns>
    public static List<Cliente> Listar(string pstrNome = null)
    {
        string strConectionString = ConfigurationManager.ConnectionStrings["BradescoExpresso"].ConnectionString;
        SqlConnection objConexao = new SqlConnection(strConectionString);

        SqlCommand objComando = new SqlCommand("SPE_L_CLIENTE");
        objComando.Connection = objConexao;
        objComando.CommandType = CommandType.StoredProcedure;

        ///Parametros
        if (pstrNome != string.Empty && pstrNome != null) objComando.Parameters.Add("@NOMECLIENTE", SqlDbType.VarChar, 200).Value = pstrNome;

        try
        {
            //Abre Conexao
            objConexao.Open();

            //Declara variavel de retorno           
            List<Cliente> objListCliente = new List<Cliente>();
            Cliente objCliente = default(Cliente);

            IDataReader idrReader = default(IDataReader);

            idrReader = objComando.ExecuteReader();

            while ((idrReader.Read()))
            {
                objCliente = new Cliente();
                objCliente.FromIDataReader(idrReader);
                objListCliente.Add(objCliente);                
            }

            return objListCliente;

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
    public static void Excluir(int pintId)
    {
        string strConectionString = ConfigurationManager.ConnectionStrings["BradescoExpresso"].ConnectionString;
        SqlConnection objConexao = new SqlConnection(strConectionString);

        SqlCommand objComando = new SqlCommand("SPE_D_CLIENTE");
        objComando.Connection = objConexao;
        objComando.CommandType = CommandType.StoredProcedure;

        //Define parametros da procedure               
        objComando.Parameters.Add("@ID", SqlDbType.Int).Value = pintId;

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
}
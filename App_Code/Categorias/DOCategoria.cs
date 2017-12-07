using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using Manager;
using System.Collections.Generic;

public class DOCategoria
{

    #region  Obter
    /// <summary>
    /// Obter usuário pelo login e senha
    /// </summary>
    /// <param name="pstrLogin">Login</param>
    /// <param name="pstrSenha">Senha</param>
    /// <returns></returns>
    public static Categoria ObterCategoria(int pintId)
    {

        string strConectionString = ConfigurationManager.ConnectionStrings["BradescoExpresso"].ConnectionString;
        SqlConnection objConexao = new SqlConnection(strConectionString);

        SqlCommand objComando = new SqlCommand("SPE_L_CATEGORIA");
        objComando.Connection = objConexao;
        objComando.CommandType = CommandType.StoredProcedure;

        objComando.Parameters.Add("@IDCATEGORIA", SqlDbType.Int).Value = pintId;

        try
        {
            objConexao.Open();

            Categoria objCategoria = new Categoria();

            IDataReader idrReader = default(IDataReader);

            idrReader = objComando.ExecuteReader();

            while ((idrReader.Read()))
            {
                objCategoria.FromIDataReader(idrReader);
            }

            return objCategoria;

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
    /// <param name="pobjCategoria">Obejto Usuario</param>
    /// <returns></returns>
    public static int Atualizar(Categoria pobjCategoria)
    {
        string strConectionString = ConfigurationManager.ConnectionStrings["BradescoExpresso"].ConnectionString;
        SqlConnection objConexao = new SqlConnection(strConectionString);

        SqlCommand objComando = new SqlCommand("SPE_U_CATEGORIA");
        objComando.Connection = objConexao;
        objComando.CommandType = CommandType.StoredProcedure;

        //Define parametros da procedure
        objComando.Parameters.Add("@ID", SqlDbType.Int).Value = pobjCategoria.Id;
        objComando.Parameters.Add("@NOME", SqlDbType.VarChar, 200).Value = pobjCategoria.Nome;

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
    /// <param name="pobjCategoria">Obejto Usuario</param>
    /// <returns></returns>
    public static int Inserir(Categoria pobjCategoria)
    {
        string strConectionString = ConfigurationManager.ConnectionStrings["BradescoExpresso"].ConnectionString;
        SqlConnection objConexao = new SqlConnection(strConectionString);

        SqlCommand objComando = new SqlCommand("SPE_I_CATEGORIA");
        objComando.Connection = objConexao;
        objComando.CommandType = CommandType.StoredProcedure;

        //Define parametros da procedure               
        objComando.Parameters.Add("@NOME", SqlDbType.VarChar, 200).Value = pobjCategoria.Nome;

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
    public static List<Categoria> Listar(string pstrNome = null)
    {
        string strConectionString = ConfigurationManager.ConnectionStrings["BradescoExpresso"].ConnectionString;
        SqlConnection objConexao = new SqlConnection(strConectionString);

        SqlCommand objComando = new SqlCommand("SPE_L_CATEGORIA");
        objComando.Connection = objConexao;
        objComando.CommandType = CommandType.StoredProcedure;

        ///Parametros
        if (pstrNome != string.Empty && pstrNome != null) objComando.Parameters.Add("@NOMECATEGORIA", SqlDbType.VarChar, 200).Value = pstrNome;

        try
        {
            //Abre Conexao
            objConexao.Open();

            //Declara variavel de retorno           
            List<Categoria> objListCategoria = new List<Categoria>();
            Categoria objCategoria = default(Categoria);

            IDataReader idrReader = default(IDataReader);

            idrReader = objComando.ExecuteReader();

            while ((idrReader.Read()))
            {
                objCategoria = new Categoria();
                objCategoria.FromIDataReader(idrReader);
                objListCategoria.Add(objCategoria);                
            }

            return objListCategoria;

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

        SqlCommand objComando = new SqlCommand("SPE_D_CATEGORIA");
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
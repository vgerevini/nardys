using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using Manager;
using System.Collections.Generic;

public class DOProduto
{

    #region  Obter
    /// <summary>
    /// Obter usuário pelo login e senha
    /// </summary>
    /// <param name="pstrLogin">Login</param>
    /// <param name="pintCategoriaId">Senha</param>
    /// <returns></returns>
    //public static Produto ObterUsuarioLogin(string nome, int pintCategoriaId)
    //{

    //    string strConectionString = ConfigurationManager.ConnectionStrings["BradescoExpresso"].ConnectionString;
    //    SqlConnection objConexao = new SqlConnection(strConectionString);

    //    SqlCommand objComando = new SqlCommand("SPE_L_PRODUTO");
    //    objComando.Connection = objConexao;
    //    objComando.CommandType = CommandType.StoredProcedure;

    //    objComando.Parameters.Add("@NOMEPRODUTO", SqlDbType.NVarChar, 200).Value = nome;
    //    objComando.Parameters.Add("@IDCATEGORIA", SqlDbType.Int).Value = pintCategoriaId;

    //    try
    //    {
    //        objConexao.Open();

    //        Produto objProduto = new Produto();

    //        IDataReader idrReader = default(IDataReader);

    //        idrReader = objComando.ExecuteReader();

    //        while ((idrReader.Read()))
    //        {
    //            objProduto.FromIDataReader(idrReader);
    //        }

    //        return objProduto;

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

    //public static Usuario ObterUsuarioEmail(string pstrEmail)
    //{

    //    string strConectionString = ConfigurationManager.ConnectionStrings["BradescoExpresso"].ConnectionString;
    //    SqlConnection objConexao = new SqlConnection(strConectionString);

    //    SqlCommand objComando = new SqlCommand("SPE_L_USUARIO_EMAIL");
    //    objComando.Connection = objConexao;
    //    objComando.CommandType = CommandType.StoredProcedure;
        
    //    objComando.Parameters.Add("@EMAIL", SqlDbType.VarChar, 300).Value = pstrEmail;

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

    /// <summary>
    /// Obter usuário pelo id
    /// </summary>
    /// <param name="Id">Id Usuario</param>
    /// <param name="pstrSenha">Senha</param>
    /// <returns></returns>
    public static Produto ObterProduto(int Id)
    {

        string strConectionString = ConfigurationManager.ConnectionStrings["BradescoExpresso"].ConnectionString;
        SqlConnection objConexao = new SqlConnection(strConectionString);

        SqlCommand objComando = new SqlCommand("SPE_L_PRODUTO");
        objComando.Connection = objConexao;
        objComando.CommandType = CommandType.StoredProcedure;

        objComando.Parameters.Add("@IDPRODUTO", SqlDbType.Int).Value = Id;        

        try
        {
            objConexao.Open();

            Produto objProduto = new Produto();

            IDataReader idrReader = default(IDataReader);

            idrReader = objComando.ExecuteReader();

            while ((idrReader.Read()))
            {
                objProduto.FromIDataReader(idrReader);
            }

            return objProduto;

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
      
    #region Atualizar
    /// <summary>
    /// Objeto Usuario
    /// </summary>
    /// <param name="pobjProduto">Obejto Usuario</param>
    /// <returns></returns>
    public static int Atualizar(Produto pobjProduto)
    {
        string strConectionString = ConfigurationManager.ConnectionStrings["BradescoExpresso"].ConnectionString;
        SqlConnection objConexao = new SqlConnection(strConectionString);

        SqlCommand objComando = new SqlCommand("SPE_U_PRODUTO");
        objComando.Connection = objConexao;
        objComando.CommandType = CommandType.StoredProcedure;

        //Define parametros da procedure
        objComando.Parameters.Add("@ID", SqlDbType.Int).Value = pobjProduto.Id;
        objComando.Parameters.Add("@CATEGORIAID", SqlDbType.Int).Value = pobjProduto.IdCategoria;
        objComando.Parameters.Add("@NOMEPRODUTO", SqlDbType.VarChar).Value = pobjProduto.Nome;        
        objComando.Parameters.Add("VALOR", SqlDbType.Decimal).Value = pobjProduto.Valor;    

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
    /// <param name="pobjUsuario">Obejto Usuario</param>
    /// <returns></returns>
    public static int Inserir(Produto pobjProduto)
    {
        string strConectionString = ConfigurationManager.ConnectionStrings["BradescoExpresso"].ConnectionString;
        SqlConnection objConexao = new SqlConnection(strConectionString);

        SqlCommand objComando = new SqlCommand("SPE_I_PRODUTO");
        objComando.Connection = objConexao;
        objComando.CommandType = CommandType.StoredProcedure;

        //Define parametros da procedure               
        objComando.Parameters.Add("@CATEGORIAID", SqlDbType.Int).Value = pobjProduto.IdCategoria;
        objComando.Parameters.Add("@NOMEPRODUTO", SqlDbType.VarChar).Value = pobjProduto.Nome;
        objComando.Parameters.Add("VALOR", SqlDbType.Decimal).Value = pobjProduto.Valor;

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
    public static List<Produto> Listar(string pstrNome = null, int pintCategoriaId = 0)
    {
        string strConectionString = ConfigurationManager.ConnectionStrings["BradescoExpresso"].ConnectionString;
        SqlConnection objConexao = new SqlConnection(strConectionString);

        SqlCommand objComando = new SqlCommand("SPE_L_PRODUTO");
        objComando.Connection = objConexao;
        objComando.CommandType = CommandType.StoredProcedure;

        ///Parametros
        if (!string.IsNullOrEmpty(pstrNome)) objComando.Parameters.Add("@NOMEPRODUTO", SqlDbType.VarChar, 200).Value = pstrNome;
        if (pintCategoriaId > 0) objComando.Parameters.Add("@IDPRODUTO", SqlDbType.Int).Value = pintCategoriaId;

        try
        {
            //Abre Conexao
            objConexao.Open();

            //Declara variavel de retorno           
            List<Produto> objListProduto = new List<Produto>();
            Produto objProduto = default(Produto);

            IDataReader idrReader = default(IDataReader);

            idrReader = objComando.ExecuteReader();

            while ((idrReader.Read()))
            {
                objProduto = new Produto();
                objProduto.FromIDataReader(idrReader);
                objListProduto.Add(objProduto);                
            }

            return objListProduto;

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

        SqlCommand objComando = new SqlCommand("SPE_D_PRODUTO");
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
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
    /// Obter produto pelo ID ou código de barras
    /// </summary>
    /// <param name="pintId">ID</param>
    /// <param name="pstrCodigo">Código de Barras</param>
    /// <returns></returns>
    public static Produto Obter(string pstrCodigo = null)
    {

        string strConectionString = ConfigurationManager.ConnectionStrings["BradescoExpresso"].ConnectionString;
        SqlConnection objConexao = new SqlConnection(strConectionString);

        SqlCommand objComando = new SqlCommand("SPE_L_PRODUTO");
        objComando.Connection = objConexao;
        objComando.CommandType = CommandType.StoredProcedure;
            
        if (!String.IsNullOrWhiteSpace(pstrCodigo))
            objComando.Parameters.Add("@CODIGOPRODUTO", SqlDbType.VarChar, 200).Value = pstrCodigo;

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

    #region Listar
    /// <summary>
    /// Obter Produtos pelo código de Barras ou nome
    /// </summary>
    /// <param name="pstrBusca">Termo de busca</param>
    /// <returns></returns>
    public static List<Produto> Listar(string pstrBusca)
    {
        string strConectionString = ConfigurationManager.ConnectionStrings["BradescoExpresso"].ConnectionString;
        SqlConnection objConexao = new SqlConnection(strConectionString);

        SqlCommand objComando = new SqlCommand("SPE_L_PRODUTO_BUSCA");
        objComando.Connection = objConexao;
        objComando.CommandType = CommandType.StoredProcedure;

        ///Parametros
        objComando.Parameters.Add("@BUSCA", SqlDbType.VarChar, 200).Value = pstrBusca;
        
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

    #region Atualizar
    /// <summary>
    /// Atualiza produto
    /// </summary>
    /// <param name="pobjProduto">Produto</param>
    /// <returns></returns>
    public static int Atualizar(Produto pobjProduto)
    {
        string strConectionString = ConfigurationManager.ConnectionStrings["BradescoExpresso"].ConnectionString;
        SqlConnection objConexao = new SqlConnection(strConectionString);

        SqlCommand objComando = new SqlCommand("SPE_U_PRODUTO");
        objComando.Connection = objConexao;
        objComando.CommandType = CommandType.StoredProcedure;

        //Define parametros da procedure
        objComando.Parameters.Add("@CODIGOPRODUTO", SqlDbType.VarChar, 200).Value = pobjProduto.Codigo;
        objComando.Parameters.Add("@CATEGORIAID", SqlDbType.Int).Value = pobjProduto.IdCategoria;
        objComando.Parameters.Add("@NOME", SqlDbType.VarChar).Value = pobjProduto.Nome;
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
    /// Insere novo produto
    /// </summary>
    /// <param name="pobjProduto">Produto</param>
    /// <returns></returns>
    public static int Inserir(Produto pobjProduto)
    {
        string strConectionString = ConfigurationManager.ConnectionStrings["BradescoExpresso"].ConnectionString;
        SqlConnection objConexao = new SqlConnection(strConectionString);

        SqlCommand objComando = new SqlCommand("SPE_I_PRODUTO");
        objComando.Connection = objConexao;
        objComando.CommandType = CommandType.StoredProcedure;

        //Define parametros da procedure               
        objComando.Parameters.Add("@CODIGOPRODUTO", SqlDbType.VarChar, 200).Value = pobjProduto.Codigo;
        objComando.Parameters.Add("@CATEGORIAID", SqlDbType.Int).Value = pobjProduto.IdCategoria;
        objComando.Parameters.Add("@NOME", SqlDbType.VarChar).Value = pobjProduto.Nome;
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
        if (!string.IsNullOrEmpty(pstrNome)) objComando.Parameters.Add("@NOME", SqlDbType.VarChar, 200).Value = pstrNome;
        if (pintCategoriaId > 0) objComando.Parameters.Add("@IDCATEGORIA", SqlDbType.Int).Value = pintCategoriaId;

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
    public static void Excluir(string pstrId)
    {
        string strConectionString = ConfigurationManager.ConnectionStrings["BradescoExpresso"].ConnectionString;
        SqlConnection objConexao = new SqlConnection(strConectionString);

        SqlCommand objComando = new SqlCommand("SPE_D_PRODUTO");
        objComando.Connection = objConexao;
        objComando.CommandType = CommandType.StoredProcedure;

        //Define parametros da procedure               
        objComando.Parameters.Add("@codigoProduto", SqlDbType.VarChar, 200).Value = pstrId;

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
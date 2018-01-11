using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using Manager;
using System.Collections.Generic;

public class DOPedido
{

    #region  Obter
    /// <summary>
    /// Obter pedido pelo ID
    /// </summary>
    /// <param name="pintId">ID</param>
    /// <returns></returns>
    public static Pedido Obter(int pintId)
    {

        string strConectionString = ConfigurationManager.ConnectionStrings["BradescoExpresso"].ConnectionString;
        SqlConnection objConexao = new SqlConnection(strConectionString);

        SqlCommand objComando = new SqlCommand("SPE_L_PEDIDO");
        objComando.Connection = objConexao;
        objComando.CommandType = CommandType.StoredProcedure;
        objComando.Parameters.Add("@pedidoId", SqlDbType.Int).Value = pintId;

        try
        {
            objConexao.Open();

            Pedido obj = new Pedido();

            IDataReader idrReader = default(IDataReader);

            idrReader = objComando.ExecuteReader();

            while ((idrReader.Read()))
            {
                obj.FromIDataReader(idrReader);
            }

            return obj;

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
    public static int Atualizar(Pedido pobjPedido)
    {
        string strConectionString = ConfigurationManager.ConnectionStrings["BradescoExpresso"].ConnectionString;
        SqlConnection objConexao = new SqlConnection(strConectionString);

        SqlCommand objComando = new SqlCommand("SPE_U_PEDIDO");
        objComando.Connection = objConexao;
        objComando.CommandType = CommandType.StoredProcedure;

        //Define parametros da procedure
        objComando.Parameters.Add("@pedidoId", SqlDbType.Int).Value = pobjPedido.IdPedido;
        if (!String.IsNullOrWhiteSpace(pobjPedido.NomeCliente))
            objComando.Parameters.Add("@nomeCliente", SqlDbType.VarChar, 100).Value = pobjPedido.NomeCliente;
        if (!String.IsNullOrWhiteSpace(pobjPedido.Observacao))
            objComando.Parameters.Add("@observacao", SqlDbType.VarChar, 400).Value = pobjPedido.Observacao;

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
    /// Insere novo Pedido
    /// </summary>
    /// <param name="pobjPedido">Pedido</param>
    /// <returns></returns>
    public static int Inserir(Pedido pobjPedido)
    {
        string strConectionString = ConfigurationManager.ConnectionStrings["BradescoExpresso"].ConnectionString;
        SqlConnection objConexao = new SqlConnection(strConectionString);

        SqlCommand objComando = new SqlCommand("SPE_I_PEDIDO");
        objComando.Connection = objConexao;
        objComando.CommandType = CommandType.StoredProcedure;

        //Define parametros da procedure               
        objComando.Parameters.Add("@nomeCliente", SqlDbType.VarChar, 100).Value = pobjPedido.NomeCliente;
        objComando.Parameters.Add("@statusPedidoId", SqlDbType.Int).Value = pobjPedido.IdStatusPedido;
        if (!String.IsNullOrWhiteSpace(pobjPedido.Observacao))
            objComando.Parameters.Add("@observacao", SqlDbType.VarChar, 400).Value = pobjPedido.Observacao;

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
    /// Lista de pedidos
    /// </summary>
    /// <param name="pstrNomeCliente">Nome do Cliente</param>
    /// <param name="pintIdStatusPedido">Status do Pedido</param>
    /// <returns></returns>
    public static List<Pedido> Listar(string pstrNomeCliente = null, int pintIdStatusPedido = 0)
    {
        string strConectionString = ConfigurationManager.ConnectionStrings["BradescoExpresso"].ConnectionString;
        SqlConnection objConexao = new SqlConnection(strConectionString);

        SqlCommand objComando = new SqlCommand("SPE_L_PEDIDO");
        objComando.Connection = objConexao;
        objComando.CommandType = CommandType.StoredProcedure;

        ///Parametros
        if (!string.IsNullOrEmpty(pstrNomeCliente)) objComando.Parameters.Add("@nomeCliente", SqlDbType.VarChar, 100).Value = pstrNomeCliente;
        if (pintIdStatusPedido > 0) objComando.Parameters.Add("@statusPedidoId", SqlDbType.Int).Value = pintIdStatusPedido;

        try
        {
            //Abre Conexao
            objConexao.Open();

            //Declara variavel de retorno           
            List<Pedido> objList = new List<Pedido>();
            Pedido obj = default(Pedido);

            IDataReader idrReader = default(IDataReader);

            idrReader = objComando.ExecuteReader();

            while ((idrReader.Read()))
            {
                obj = new Pedido();
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

    #region Excluir
    public static void Excluir(int pintId)
    {
        string strConectionString = ConfigurationManager.ConnectionStrings["BradescoExpresso"].ConnectionString;
        SqlConnection objConexao = new SqlConnection(strConectionString);

        SqlCommand objComando = new SqlCommand("SPE_D_PEDIDO");
        objComando.Connection = objConexao;
        objComando.CommandType = CommandType.StoredProcedure;

        //Define parametros da procedure               
        objComando.Parameters.Add("@pedidoId", SqlDbType.Int).Value = pintId;

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
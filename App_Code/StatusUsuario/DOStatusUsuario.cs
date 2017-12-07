using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using Manager;
using System.Collections.Generic;

public class DOStatusUsuario
{
    
    #region Listar
    public static List<StatusUsuario> Listar()
    {
        string strConectionString = ConfigurationManager.ConnectionStrings["BradescoExpresso"].ConnectionString;
        SqlConnection objConexao = new SqlConnection(strConectionString);

        SqlCommand objComando = new SqlCommand("SPE_L_STATUS_USUARIO");
        objComando.Connection = objConexao;
        objComando.CommandType = CommandType.StoredProcedure;
        
        try
        {
            //Abre Conexao
            objConexao.Open();

            //Declara variavel de retorno           
            List<StatusUsuario> objListStatusUsuario = new List<StatusUsuario>();
            StatusUsuario objStatusUsuario = default(StatusUsuario);

            IDataReader idrReader = default(IDataReader);

            idrReader = objComando.ExecuteReader();

            while ((idrReader.Read()))
            {
                objStatusUsuario = new StatusUsuario();
                objStatusUsuario.FromIDataReader(idrReader);
                objListStatusUsuario.Add(objStatusUsuario);                
            }

            return objListStatusUsuario;

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
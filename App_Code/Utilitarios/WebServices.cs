using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.Script.Services;
using System.Web.Services;

/// <summary>
/// Summary description for WebServices
/// </summary>
public class WebServices
{
    #region CEP
    public static BuscaEnderecoCEP BuscaEnderecoPorCEP(string cep)
    {
        //Tag configurada para ambiente de testes.... sem acesso aos webservices
        if (Convert.ToBoolean(System.Configuration.ConfigurationManager.AppSettings["DesabilitarWS"]))
        {
            return null;
        }
        WsCEP.Service cepService = new WsCEP.Service();
        string strcep = cep.Replace("-", "");

        if (Regex.IsMatch(strcep, @"\d{8}"))
        {
            DataTable dtt = cepService.retLogradouroPorCep(strcep).Tables[0];

            if (dtt.Rows.Count > 0)
            {
                DataRow drLOgradouro = cepService.retLogradouroPorCep(strcep).Tables[0].Rows[0];
                if (drLOgradouro.Table.TableName != "WsErro")
                {
                    BuscaEnderecoCEP objRetorno = new BuscaEnderecoCEP();
                    objRetorno.Logradouro = drLOgradouro["logradouro"].ToString().Trim();
                    objRetorno.Complemento = drLOgradouro["complemento"].ToString().Trim();
                    objRetorno.Bairro = drLOgradouro["bairro"].ToString().Trim();
                    objRetorno.Cidade = drLOgradouro["cidade"].ToString().Trim();
                    objRetorno.Estado = drLOgradouro["uf"].ToString().Trim();

                    return objRetorno;
                }
            }
            return null;
        }
        return null;
    }

    #endregion

    #region Rede Atendimento
    public class RedeAtendimentoService
    {
        protected BradescoAtendimento.RededeAtendimento _proxy;

        public RedeAtendimentoService()
        {
            this._proxy = new BradescoAtendimento.RededeAtendimento();
        }

        ~RedeAtendimentoService()
        {
            this._proxy.Dispose();
        }

        public bool ValidarAgencia(String agencia, Char? digito)
        {
            //Tag configurada para ambiente de testes.... sem acesso aos webservices
            if (Convert.ToBoolean(System.Configuration.ConfigurationManager.AppSettings["DesabilitarWS"]))
            {
                return true;
            }

            if (String.IsNullOrEmpty(agencia))
            {
                return false;
            }

            DataSet dsAgencia = this._proxy.ProcurarAgenciaPorCodigo(BradescoAtendimento.AgenciaTipo.Todas, agencia);

            if (dsAgencia.Tables[0].Rows.Count > 0)
            {
                String digitoRetornado = dsAgencia.Tables[0].Rows[0]["digitoAgencia"].ToString().Trim();

                if (digitoRetornado == digito.ToString())
                {
                    return true;
                }
                else
                {

                    return false;
                }              
            }
            else
            {
                return false;
            }
        }
    }

    #endregion
}

public class BuscaEnderecoCEP
{
    public string Logradouro { get; set; }
    public string Complemento { get; set; }
    public string Bairro { get; set; }
    public string Cidade { get; set; }
    public string Estado { get; set; }
}
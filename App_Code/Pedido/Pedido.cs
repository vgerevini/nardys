
using Microsoft.VisualBasic;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Diagnostics;

[Serializable()]
public class Pedido
{
    #region Propriedades
    public virtual int IdPedido { get; set; }
    public virtual DateTime Data { get; set; }
    public virtual string NomeCliente { get; set; }
    public virtual int IdStatusPedido { get; set; }
    public virtual string DescricaoStatus { get; set; }
    public virtual string Observacao { get; set; }
    public virtual double ValorTotal { get; set; }
    #endregion

    #region FromIDataReader

    public void FromIDataReader(IDataReader pobjIDataReader)
    {
        if (pobjIDataReader == null)
        {
            return;
        }
        if ((!object.ReferenceEquals(pobjIDataReader["pedidoId"], DBNull.Value)))
        {
            this.IdPedido = Convert.ToInt32(pobjIDataReader["pedidoId"].ToString());
        }
        if ((!object.ReferenceEquals(pobjIDataReader["data"], DBNull.Value)))
        {
            this.Data = Convert.ToDateTime(pobjIDataReader["data"]);
        }
        if ((!object.ReferenceEquals(pobjIDataReader["nomeCliente"], DBNull.Value)))
        {
            this.NomeCliente = pobjIDataReader["nomeCliente"].ToString();
        }
        if ((!object.ReferenceEquals(pobjIDataReader["statusPedidoId"], DBNull.Value)))
        {
            this.IdStatusPedido = Convert.ToInt32(pobjIDataReader["statusPedidoId"].ToString());
        }
        if ((!object.ReferenceEquals(pobjIDataReader["descricaoStatus"], DBNull.Value)))
        {
            this.DescricaoStatus = pobjIDataReader["descricaoStatus"].ToString();
        }
        if ((!object.ReferenceEquals(pobjIDataReader["observacao"], DBNull.Value)))
        {
            this.Observacao = pobjIDataReader["observacao"].ToString();
        }
        if ((!object.ReferenceEquals(pobjIDataReader["observacao"], DBNull.Value)))
        {
            this.Observacao = pobjIDataReader["observacao"].ToString();
        }
        if ((!object.ReferenceEquals(pobjIDataReader["valorTotal"], DBNull.Value)))
        {
            this.ValorTotal = Convert.ToDouble(pobjIDataReader["valorTotal"].ToString());
        }
    }

    #endregion
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Pedido
/// </summary>
[Serializable()]
public class Pedido
{
    #region Propriedades
    public virtual int Id { get; set; }
    public virtual string Descricao { get; set; }
    public virtual string Status { get; set; }
    
    //public virtual DateTime DataCriacao{ get; set; }

    public string DataCriacao { get; set; }

    public string HoraCriacao { get; set; }

    public virtual string Observacao { get; set; }
    public virtual List<ItemPedido> Itens { get; set; }
    #endregion
}
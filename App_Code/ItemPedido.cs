using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for ItemPedido
/// </summary>
[Serializable()]
public class ItemPedido
{
    #region Propriedades
    public virtual int IdItemPedido { get; set; }
    public virtual int IdPedido { get; set; }
    public virtual int IdProduto { get; set; }

    public virtual DateTime Data { get; set; }
    #endregion
}
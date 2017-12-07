
using Microsoft.VisualBasic;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Diagnostics;

[Serializable()]
public class Categoria
{
    #region Propriedades
    public virtual int Id { get; set; }
    public virtual string Nome { get; set; }

    #endregion

    #region FromIDataReader

    public void FromIDataReader(IDataReader pobjIDataReader)
    {
        if (pobjIDataReader == null)
        {
            return;
        }

        if ((!object.ReferenceEquals(pobjIDataReader["id"], DBNull.Value)))
        {
            this.Id = Convert.ToInt32(pobjIDataReader["id"]);
        }

        if ((!object.ReferenceEquals(pobjIDataReader["nome"], DBNull.Value)))
        {
            this.Nome = pobjIDataReader["nome"].ToString();
        }  
    }

    #endregion
}
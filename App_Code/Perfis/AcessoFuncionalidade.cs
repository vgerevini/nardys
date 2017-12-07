
using Microsoft.VisualBasic;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Diagnostics;

[Serializable()]
public class AcessoFuncionalidade
{
    #region Propriedades

    public virtual int IdPerfil { get; set; }
    public virtual int IdSecao { get; set; }
    public virtual int IdSecaoFuncionalidade { get; set; }

    #endregion

    #region FromIDataReader

    public void FromIDataReader(IDataReader pobjIDataReader)
    {
        if (pobjIDataReader == null)
        {
            return;
        }

        if ((!object.ReferenceEquals(pobjIDataReader["perfilId"], DBNull.Value)))
        {
            this.IdPerfil = Convert.ToInt32(pobjIDataReader["perfilId"]);
        }

        if ((!object.ReferenceEquals(pobjIDataReader["secaoId"], DBNull.Value)))
        {
            this.IdSecao = Convert.ToInt32(pobjIDataReader["secaoId"]);
        }

        if ((!object.ReferenceEquals(pobjIDataReader["secaoFuncionalidadeId"], DBNull.Value)))
        {
            this.IdSecaoFuncionalidade = Convert.ToInt32(pobjIDataReader["secaoFuncionalidadeId"]);
        }
    }

    #endregion
}
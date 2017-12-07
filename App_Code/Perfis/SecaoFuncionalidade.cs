
using Microsoft.VisualBasic;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Diagnostics;

[Serializable()]
public class SecaoFuncionalidade
{
    #region Propriedades

    public virtual int Id { get; set; }
    public virtual int SecaoId { get; set; }
    public virtual string Nome { get; set; }
    public virtual int OrdemMenu { get; set; }
    public virtual bool Selecionado { get; set; }
    
    #endregion

    #region FromIDataReader

    public void FromIDataReader(IDataReader pobjIDataReader)
    {
        if (pobjIDataReader == null)
        {
            return;
        }

        if ((!object.ReferenceEquals(pobjIDataReader["secaoFuncionalidadeId"], DBNull.Value)))
        {
            this.Id = Convert.ToInt32(pobjIDataReader["secaoFuncionalidadeId"]);
        }

        if ((!object.ReferenceEquals(pobjIDataReader["secaoId"], DBNull.Value)))
        {
            this.SecaoId = Convert.ToInt32(pobjIDataReader["secaoId"]);
        }

        if ((!object.ReferenceEquals(pobjIDataReader["nomeSecaoFuncionalidade"], DBNull.Value)))
        {
            this.Nome = pobjIDataReader["nomeSecaoFuncionalidade"].ToString();
        }

        if ((!object.ReferenceEquals(pobjIDataReader["ordemMenu"], DBNull.Value)))
        {
            this.OrdemMenu = Convert.ToInt32(pobjIDataReader["ordemMenu"]);
        }

        if ((!object.ReferenceEquals(pobjIDataReader["selecionado"], DBNull.Value)))
        {
            this.Selecionado = Convert.ToBoolean(pobjIDataReader["selecionado"]);
        }
    }

    #endregion
}
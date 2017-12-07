
using Microsoft.VisualBasic;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Diagnostics;

[Serializable()]
public class Secao
{
    #region Propriedades

    public virtual int Id { get; set; }
    public virtual string Grupo { get; set; }
    public virtual string Nome { get; set; }
    public virtual string Caminho { get; set; }
    public virtual int Ordem { get; set; }
    public virtual bool Selecionado { get; set; }
    public virtual bool Habilitado { get; set; }

    #endregion

    #region FromIDataReader

    public void FromIDataReader(IDataReader pobjIDataReader)
    {
        if (pobjIDataReader == null)
        {
            return;
        }

        if ((!object.ReferenceEquals(pobjIDataReader["secaoId"], DBNull.Value)))
        {
            this.Id = Convert.ToInt32(pobjIDataReader["secaoId"]);
        }

        if ((!object.ReferenceEquals(pobjIDataReader["grupo"], DBNull.Value)))
        {
            this.Grupo = pobjIDataReader["grupo"].ToString();
        }

        if ((!object.ReferenceEquals(pobjIDataReader["nomeSecao"], DBNull.Value)))
        {
            this.Nome = pobjIDataReader["nomeSecao"].ToString();
        }

        if ((!object.ReferenceEquals(pobjIDataReader["path"], DBNull.Value)))
        {
            this.Caminho = pobjIDataReader["path"].ToString();
        }

        if ((!object.ReferenceEquals(pobjIDataReader["ordemMenu"], DBNull.Value)))
        {
            this.Ordem = Convert.ToInt32(pobjIDataReader["ordemMenu"]);
        }
        
        if ((!object.ReferenceEquals(pobjIDataReader["selecionado"], DBNull.Value)))
        {
            this.Selecionado = Convert.ToBoolean(pobjIDataReader["selecionado"]);
        }

        if ((!object.ReferenceEquals(pobjIDataReader["habilitado"], DBNull.Value)))
        {
            this.Habilitado = Convert.ToBoolean(pobjIDataReader["habilitado"]);
        }
    }

    #endregion
}
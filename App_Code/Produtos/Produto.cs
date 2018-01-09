
using Microsoft.VisualBasic;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Diagnostics;

[Serializable()]
public class Produto
{
    #region Propriedades
    public virtual string Codigo { get; set; }
    public virtual int IdCategoria { get; set; }
    public virtual string NomeCategoria { get; set; }
    public virtual string Nome { get; set; }
    public virtual double Valor { get; set; }
    #endregion

    #region FromIDataReader

    public void FromIDataReader(IDataReader pobjIDataReader)
    {
        if (pobjIDataReader == null)
        {
            return;
        }
        if ((!object.ReferenceEquals(pobjIDataReader["Codigo"], DBNull.Value)))
        {
            this.Codigo = pobjIDataReader["Codigo"].ToString();
        }
        if ((!object.ReferenceEquals(pobjIDataReader["CategoriaId"], DBNull.Value)))
        {
            this.IdCategoria = Convert.ToInt32(pobjIDataReader["CategoriaId"]);
        }
        if ((!object.ReferenceEquals(pobjIDataReader["NOMECATEGORIA"], DBNull.Value)))
        {
            this.NomeCategoria = pobjIDataReader["NOMECATEGORIA"].ToString();
        }
        if ((!object.ReferenceEquals(pobjIDataReader["nome"], DBNull.Value)))
        {
            this.Nome = pobjIDataReader["nome"].ToString();
        }
        if ((!object.ReferenceEquals(pobjIDataReader["valor"], DBNull.Value)))
        {
            this.Valor = Convert.ToDouble(pobjIDataReader["valor"]);
        }
    }

    #endregion
}
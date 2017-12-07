using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

[Serializable()]
public class Status
{
    #region Propriedades
    public virtual int Id { get; set; }
    public virtual int DiasRetorno { get; set; }
    public virtual string StatusBanco { get; set; }
    public virtual string StatusVan { get; set; }

    #endregion

    #region FromIDataReader

    public void FromIDataReader(IDataReader pobjIDataReader)
    {
        if (pobjIDataReader == null)
        {
            return;
        }

        if ((!object.ReferenceEquals(pobjIDataReader["statusId"], DBNull.Value)))
        {
            this.Id = Convert.ToInt32(pobjIDataReader["statusId"]);
        }
        if ((!object.ReferenceEquals(pobjIDataReader["diasRetorno"], DBNull.Value)))
        {
            this.DiasRetorno = Convert.ToInt32(pobjIDataReader["diasRetorno"]);
        }
        if ((!object.ReferenceEquals(pobjIDataReader["statusBanco"], DBNull.Value)))
        {
            this.StatusBanco = pobjIDataReader["statusBanco"].ToString();
        }
        if ((!object.ReferenceEquals(pobjIDataReader["statusVAN"], DBNull.Value)))
        {
            this.StatusVan= pobjIDataReader["statusVAN"].ToString();
        }
    }

    #endregion
}

using Microsoft.VisualBasic;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Diagnostics;

[Serializable()]
public class StatusUsuario
{
    #region Propriedades
    public virtual int UsuarioStatusId { get; set; }
    public virtual string Status { get; set; }
    
    #endregion

    #region FromIDataReader

    public void FromIDataReader(IDataReader pobjIDataReader)
    {
        if (pobjIDataReader == null)
        {
            return;
        }

        if ((!object.ReferenceEquals(pobjIDataReader["usuarioStatusId"], DBNull.Value)))
        {
            this.UsuarioStatusId = Convert.ToInt32(pobjIDataReader["usuarioStatusId"]);
        }
        
        if ((!object.ReferenceEquals(pobjIDataReader["status"], DBNull.Value)))
        {
            this.Status = pobjIDataReader["status"].ToString();
        }        
    }

    #endregion
}
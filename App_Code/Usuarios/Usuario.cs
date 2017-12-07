﻿
using Microsoft.VisualBasic;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Diagnostics;

[Serializable()]
public class Usuario
{
    #region Propriedades
    public virtual int Id { get; set; }
    public virtual int IdPerfil { get; set; }
    public virtual string NomePerfil { get; set; }
    public virtual int IdStatus { get; set; }
    public virtual string Status { get; set; }
    public virtual int IdParceiro { get; set; }
    public virtual string NomeFantasia { get; set; }
    public virtual DateTime? DataUltimoAcesso { get; set; }
    public virtual string Nome { get; set; }
    public virtual string Email { get; set; }
    public virtual string Login { get; set; }
    public virtual string Senha { get; set; }
    public virtual string Agencia { get; set; }
    public virtual string Van { get; set; }

    #endregion

    #region FromIDataReader

    public void FromIDataReader(IDataReader pobjIDataReader)
    {
        if (pobjIDataReader == null)
        {
            return;
        }

        if ((!object.ReferenceEquals(pobjIDataReader["usuarioId"], DBNull.Value)))
        {
            this.Id = Convert.ToInt32(pobjIDataReader["usuarioId"]);
        }

        if ((!object.ReferenceEquals(pobjIDataReader["perfilId"], DBNull.Value)))
        {
            this.IdPerfil = Convert.ToInt32(pobjIDataReader["perfilId"]);
        }

        if ((!object.ReferenceEquals(pobjIDataReader["nomePerfil"], DBNull.Value)))
        {
            this.NomePerfil = pobjIDataReader["nomePerfil"].ToString();
        }

        if ((!object.ReferenceEquals(pobjIDataReader["usuarioStatusId"], DBNull.Value)))
        {
            this.IdStatus = Convert.ToInt32(pobjIDataReader["usuarioStatusId"]);
        }

        if ((!object.ReferenceEquals(pobjIDataReader["status"], DBNull.Value)))
        {
            this.Status = pobjIDataReader["status"].ToString();
        }

        if ((!object.ReferenceEquals(pobjIDataReader["parceiroId"], DBNull.Value)))
        {
            this.IdParceiro = Convert.ToInt32(pobjIDataReader["parceiroId"]);
        }

        if ((!object.ReferenceEquals(pobjIDataReader["nomeFantasia"], DBNull.Value)))
        {
            this.NomeFantasia = pobjIDataReader["nomeFantasia"].ToString();
        }

        if ((!object.ReferenceEquals(pobjIDataReader["dataUltimoAcesso"], DBNull.Value)))
        {
            this.DataUltimoAcesso = Convert.ToDateTime(pobjIDataReader["dataUltimoAcesso"]);
        }

        if ((!object.ReferenceEquals(pobjIDataReader["nomeUsuario"], DBNull.Value)))
        {
            this.Nome = pobjIDataReader["nomeUsuario"].ToString();
        }

        if ((!object.ReferenceEquals(pobjIDataReader["emailUsuario"], DBNull.Value)))
        {
            this.Email = pobjIDataReader["emailUsuario"].ToString();
        }

        if ((!object.ReferenceEquals(pobjIDataReader["login"], DBNull.Value)))
        {
            this.Login = pobjIDataReader["login"].ToString();
        }

        if ((!object.ReferenceEquals(pobjIDataReader["senha"], DBNull.Value)))
        {
            this.Senha = pobjIDataReader["senha"].ToString();
        }

        if ((!object.ReferenceEquals(pobjIDataReader["agencia"], DBNull.Value)))
        {
            this.Agencia = pobjIDataReader["agencia"].ToString();
        }
    }

    #endregion
}
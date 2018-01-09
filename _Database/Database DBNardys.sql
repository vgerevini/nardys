USE [DBNardys]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SPE_U_USUARIO_SENHA]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SPE_U_USUARIO_SENHA]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SPE_U_USUARIO_CHECKLIST]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SPE_U_USUARIO_CHECKLIST]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SPE_U_USUARIO_ACESSO]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SPE_U_USUARIO_ACESSO]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SPE_U_USUARIO]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SPE_U_USUARIO]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SPE_U_PRODUTO]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SPE_U_PRODUTO]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SPE_U_PERFIL]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SPE_U_PERFIL]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SPE_U_CLIENTE]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SPE_U_CLIENTE]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SPE_U_CATEGORIA]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SPE_U_CATEGORIA]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SPE_L_USUARIO_VAN]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SPE_L_USUARIO_VAN]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SPE_L_USUARIO_LOGIN]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SPE_L_USUARIO_LOGIN]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SPE_L_USUARIO_ID]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SPE_L_USUARIO_ID]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SPE_L_USUARIO_EMAIL]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SPE_L_USUARIO_EMAIL]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SPE_L_USUARIO_CHECKLIST_LOGIN]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SPE_L_USUARIO_CHECKLIST_LOGIN]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SPE_L_USUARIO_CHECKLIST_ID]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SPE_L_USUARIO_CHECKLIST_ID]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SPE_L_USUARIO_CHECKLIST]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SPE_L_USUARIO_CHECKLIST]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SPE_L_USUARIO]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SPE_L_USUARIO]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SPE_L_STATUS_USUARIO]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SPE_L_STATUS_USUARIO]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SPE_L_STATUS]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SPE_L_STATUS]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SPE_L_SECAO_PERFIL_MENU]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SPE_L_SECAO_PERFIL_MENU]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SPE_L_SECAO_PERFIL]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SPE_L_SECAO_PERFIL]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SPE_L_SECAO_FUNCIONALIDADE_PERFIL]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SPE_L_SECAO_FUNCIONALIDADE_PERFIL]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SPE_L_PRODUTO]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SPE_L_PRODUTO]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SPE_L_PERFIL]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SPE_L_PERFIL]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SPE_L_LOG]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SPE_L_LOG]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SPE_L_CLIENTE]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SPE_L_CLIENTE]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SPE_L_CATEGORIA]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SPE_L_CATEGORIA]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SPE_L_ACESSO_FUNCIONALIDADE]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SPE_L_ACESSO_FUNCIONALIDADE]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SPE_I_USUARIO_CHECKLIST]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SPE_I_USUARIO_CHECKLIST]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SPE_I_USUARIO]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SPE_I_USUARIO]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SPE_I_PRODUTO]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SPE_I_PRODUTO]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SPE_I_LOG]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SPE_I_LOG]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SPE_I_CLIENTE]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SPE_I_CLIENTE]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SPE_I_CATEGORIA]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SPE_I_CATEGORIA]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SPE_I_ACESSO_FUNCIONALIDADE]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SPE_I_ACESSO_FUNCIONALIDADE]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SPE_D_USUARIO]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SPE_D_USUARIO]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SPE_D_PRODUTO]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SPE_D_PRODUTO]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SPE_D_CLIENTE]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SPE_D_CLIENTE]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SPE_D_CATEGORIA]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SPE_D_CATEGORIA]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SPE_D_ACESSO_FUNCIONALIDADE]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SPE_D_ACESSO_FUNCIONALIDADE]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TB_Usuario_TB_Usuario_Status]') AND parent_object_id = OBJECT_ID(N'[dbo].[TB_Usuario]'))
ALTER TABLE [dbo].[TB_Usuario] DROP CONSTRAINT [FK_TB_Usuario_TB_Usuario_Status]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TB_Usuario_TB_Perfil]') AND parent_object_id = OBJECT_ID(N'[dbo].[TB_Usuario]'))
ALTER TABLE [dbo].[TB_Usuario] DROP CONSTRAINT [FK_TB_Usuario_TB_Perfil]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TB_Usuario_TB_Parceiro]') AND parent_object_id = OBJECT_ID(N'[dbo].[TB_Usuario]'))
ALTER TABLE [dbo].[TB_Usuario] DROP CONSTRAINT [FK_TB_Usuario_TB_Parceiro]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TB_Secao_Funcionalidade_TB_Secao]') AND parent_object_id = OBJECT_ID(N'[dbo].[TB_Secao_Funcionalidade]'))
ALTER TABLE [dbo].[TB_Secao_Funcionalidade] DROP CONSTRAINT [FK_TB_Secao_Funcionalidade_TB_Secao]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TB_Produtos_TB_ProdutoCategoria]') AND parent_object_id = OBJECT_ID(N'[dbo].[TB_Produtos]'))
ALTER TABLE [dbo].[TB_Produtos] DROP CONSTRAINT [FK_TB_Produtos_TB_ProdutoCategoria]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TB_Log_TB_Usuario]') AND parent_object_id = OBJECT_ID(N'[dbo].[TB_Log]'))
ALTER TABLE [dbo].[TB_Log] DROP CONSTRAINT [FK_TB_Log_TB_Usuario]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TB_Acesso_Funcionalidade_TB_Secao_Funcionalidade]') AND parent_object_id = OBJECT_ID(N'[dbo].[TB_Acesso_Funcionalidade]'))
ALTER TABLE [dbo].[TB_Acesso_Funcionalidade] DROP CONSTRAINT [FK_TB_Acesso_Funcionalidade_TB_Secao_Funcionalidade]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TB_Acesso_Funcionalidade_TB_Secao]') AND parent_object_id = OBJECT_ID(N'[dbo].[TB_Acesso_Funcionalidade]'))
ALTER TABLE [dbo].[TB_Acesso_Funcionalidade] DROP CONSTRAINT [FK_TB_Acesso_Funcionalidade_TB_Secao]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TB_Acesso_Funcionalidade_TB_Perfil]') AND parent_object_id = OBJECT_ID(N'[dbo].[TB_Acesso_Funcionalidade]'))
ALTER TABLE [dbo].[TB_Acesso_Funcionalidade] DROP CONSTRAINT [FK_TB_Acesso_Funcionalidade_TB_Perfil]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TB_Acesso_TB_Secao]') AND parent_object_id = OBJECT_ID(N'[dbo].[TB_Acesso]'))
ALTER TABLE [dbo].[TB_Acesso] DROP CONSTRAINT [FK_TB_Acesso_TB_Secao]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TB_Acesso_TB_Perfil]') AND parent_object_id = OBJECT_ID(N'[dbo].[TB_Acesso]'))
ALTER TABLE [dbo].[TB_Acesso] DROP CONSTRAINT [FK_TB_Acesso_TB_Perfil]
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__TB_Log__DataLog__7849DB76]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[TB_Log] DROP CONSTRAINT [DF__TB_Log__DataLog__7849DB76]
END

GO
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[TB_Usuario]') AND name = N'IX_TB_Usuario')
DROP INDEX [IX_TB_Usuario] ON [dbo].[TB_Usuario]
GO
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[TB_Produtos]') AND name = N'UQ_TB_Produtos_Nome')
ALTER TABLE [dbo].[TB_Produtos] DROP CONSTRAINT [UQ_TB_Produtos_Nome]
GO
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[TB_ProdutoCategoria]') AND name = N'UQ_TB_ProdutoCategoria_NOME')
ALTER TABLE [dbo].[TB_ProdutoCategoria] DROP CONSTRAINT [UQ_TB_ProdutoCategoria_NOME]
GO
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[TB_Parceiro]') AND name = N'UQ_TB_Parceiro_cnpjParceiro')
ALTER TABLE [dbo].[TB_Parceiro] DROP CONSTRAINT [UQ_TB_Parceiro_cnpjParceiro]
GO
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[TB_Clientes]') AND name = N'UQ_TB_CLIENTES_NOME')
ALTER TABLE [dbo].[TB_Clientes] DROP CONSTRAINT [UQ_TB_CLIENTES_NOME]
GO
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[TB_Acesso_Funcionalidade]') AND name = N'IX_TB_Acesso_Funcionalidade')
DROP INDEX [IX_TB_Acesso_Funcionalidade] ON [dbo].[TB_Acesso_Funcionalidade]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TB_Usuario_Status]') AND type in (N'U'))
DROP TABLE [dbo].[TB_Usuario_Status]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TB_Usuario]') AND type in (N'U'))
DROP TABLE [dbo].[TB_Usuario]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TB_Status]') AND type in (N'U'))
DROP TABLE [dbo].[TB_Status]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TB_Secao_Funcionalidade]') AND type in (N'U'))
DROP TABLE [dbo].[TB_Secao_Funcionalidade]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TB_Secao]') AND type in (N'U'))
DROP TABLE [dbo].[TB_Secao]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TB_Produtos]') AND type in (N'U'))
DROP TABLE [dbo].[TB_Produtos]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TB_ProdutoCategoria]') AND type in (N'U'))
DROP TABLE [dbo].[TB_ProdutoCategoria]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TB_Perfil]') AND type in (N'U'))
DROP TABLE [dbo].[TB_Perfil]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TB_Pedido]') AND type in (N'U'))
DROP TABLE [dbo].[TB_Pedido]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TB_Parceiro]') AND type in (N'U'))
DROP TABLE [dbo].[TB_Parceiro]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TB_Log]') AND type in (N'U'))
DROP TABLE [dbo].[TB_Log]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TB_Clientes]') AND type in (N'U'))
DROP TABLE [dbo].[TB_Clientes]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TB_Acesso_Funcionalidade]') AND type in (N'U'))
DROP TABLE [dbo].[TB_Acesso_Funcionalidade]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TB_Acesso]') AND type in (N'U'))
DROP TABLE [dbo].[TB_Acesso]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fnSplit]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[fnSplit]
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DBNardys].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fnSplit]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'
CREATE FUNCTION [dbo].[fnSplit](
    @sInputList VARCHAR(8000) -- List of delimited items
  , @sDelimiter VARCHAR(1) = '','' -- delimiter that separates items
) RETURNS @List TABLE (item VARCHAR(8000))

BEGIN
DECLARE @sItem VARCHAR(8000)
WHILE CHARINDEX(@sDelimiter,@sInputList,0) <> 0
 BEGIN
 SELECT
  @sItem=RTRIM(LTRIM(SUBSTRING(@sInputList,1,CHARINDEX(@sDelimiter,@sInputList,0)-1))),
  @sInputList=RTRIM(LTRIM(SUBSTRING(@sInputList,CHARINDEX(@sDelimiter,@sInputList,0)+LEN(@sDelimiter),LEN(@sInputList))))
 
 IF LEN(@sItem) > 0
  INSERT INTO  @List SELECT @sItem
 END

IF LEN(@sInputList) > 0
 INSERT INTO  @List SELECT @sInputList -- Put the last item in
RETURN
END






' 
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TB_Acesso]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TB_Acesso](
	[perfilId] [int] NOT NULL,
	[secaoId] [int] NOT NULL,
 CONSTRAINT [PK_TB_Acesso] PRIMARY KEY CLUSTERED 
(
	[perfilId] ASC,
	[secaoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TB_Acesso_Funcionalidade]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TB_Acesso_Funcionalidade](
	[perfilId] [int] NOT NULL,
	[secaoId] [int] NOT NULL,
	[secaoFuncionalidadeId] [int] NOT NULL,
 CONSTRAINT [PK_TB_Acesso_Funcionalidade] PRIMARY KEY CLUSTERED 
(
	[perfilId] ASC,
	[secaoId] ASC,
	[secaoFuncionalidadeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TB_Clientes]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TB_Clientes](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nome] [varchar](200) NULL,
	[tel] [varchar](20) NULL,
 CONSTRAINT [PK_TB_Clientes] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TB_Log]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TB_Log](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MsgLog] [varchar](max) NULL,
	[DataLog] [datetime] NULL,
	[Tipo] [int] NULL,
	[usuarioId] [int] NULL,
 CONSTRAINT [PK_TB_Log] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TB_Parceiro]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TB_Parceiro](
	[parceiroId] [int] IDENTITY(1,1) NOT NULL,
	[cnpjParceiro] [nvarchar](20) NOT NULL,
	[razaoSocialParceiro] [nvarchar](200) NOT NULL,
	[nomeFantasia] [nvarchar](200) NULL,
	[codigoVan] [int] NOT NULL,
	[nomeContato] [nvarchar](200) NULL,
	[telefoneDDD] [nvarchar](5) NULL,
	[telefoneNumero] [nvarchar](10) NULL,
	[dataHoraCadastro] [datetime] NOT NULL,
	[tipo] [char](1) NULL,
 CONSTRAINT [PK_TB_Parceiro] PRIMARY KEY CLUSTERED 
(
	[parceiroId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TB_Pedido]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TB_Pedido](
	[id] [int] NOT NULL,
	[nomeCliente] [varchar](100) NOT NULL,
	[status] [int] NOT NULL,
 CONSTRAINT [PK_TB_Pedido] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TB_Perfil]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TB_Perfil](
	[perfilId] [int] NOT NULL,
	[nomePerfil] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_TB_Perfil] PRIMARY KEY CLUSTERED 
(
	[perfilId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TB_ProdutoCategoria]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TB_ProdutoCategoria](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nome] [varchar](200) NOT NULL,
 CONSTRAINT [PK_TB_ProdutoCategoria] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TB_Produtos]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TB_Produtos](
	[Codigo] [varchar](200) NOT NULL,
	[CategoriaId] [int] NOT NULL,
	[nome] [varchar](200) NOT NULL,
	[valor] [decimal](18, 2) NULL,
 CONSTRAINT [PK_TB_Produtos_1] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TB_Secao]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TB_Secao](
	[secaoId] [int] NOT NULL,
	[grupo] [nvarchar](50) NULL,
	[nomeSecao] [nvarchar](50) NOT NULL,
	[path] [nvarchar](250) NULL,
	[ordemMenu] [int] NOT NULL CONSTRAINT [DF__TB_Secao__ordemM__145C0A3F]  DEFAULT ((0)),
	[habilitado] [bit] NOT NULL CONSTRAINT [DF_TB_Secao_habilitado]  DEFAULT ((1)),
 CONSTRAINT [PK_TB_Secao] PRIMARY KEY CLUSTERED 
(
	[secaoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TB_Secao_Funcionalidade]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TB_Secao_Funcionalidade](
	[secaoFuncionalidadeId] [int] NOT NULL,
	[secaoId] [int] NOT NULL,
	[nomeSecaoFuncionalidade] [nvarchar](500) NOT NULL,
	[ordemMenu] [int] NOT NULL,
 CONSTRAINT [PK_TB_Perfil_Funcionalidade] PRIMARY KEY CLUSTERED 
(
	[secaoFuncionalidadeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TB_Status]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TB_Status](
	[statusId] [int] NOT NULL,
	[diasRetorno] [int] NOT NULL DEFAULT ((0)),
	[statusBanco] [nvarchar](50) NOT NULL,
	[statusVAN] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_TB_Status] PRIMARY KEY CLUSTERED 
(
	[statusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TB_Usuario]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TB_Usuario](
	[usuarioId] [int] IDENTITY(1,1) NOT NULL,
	[perfilId] [int] NOT NULL,
	[usuarioStatusId] [int] NOT NULL,
	[parceiroId] [int] NULL,
	[dataUltimoAcesso] [datetime] NULL,
	[nomeUsuario] [nvarchar](200) NOT NULL,
	[emailUsuario] [nvarchar](200) NOT NULL,
	[login] [nvarchar](50) NOT NULL,
	[senha] [nvarchar](50) NOT NULL,
	[agencia] [varchar](5) NOT NULL DEFAULT ('0'),
 CONSTRAINT [PK_TB_Usuario] PRIMARY KEY CLUSTERED 
(
	[usuarioId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TB_Usuario_Status]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TB_Usuario_Status](
	[usuarioStatusId] [int] NOT NULL,
	[status] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_TB_Usuario_Status] PRIMARY KEY CLUSTERED 
(
	[usuarioStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
INSERT [dbo].[TB_Acesso] ([perfilId], [secaoId]) VALUES (1, 29)
GO
INSERT [dbo].[TB_Acesso] ([perfilId], [secaoId]) VALUES (3, 3)
GO
INSERT [dbo].[TB_Acesso] ([perfilId], [secaoId]) VALUES (3, 16)
GO
INSERT [dbo].[TB_Acesso] ([perfilId], [secaoId]) VALUES (3, 17)
GO
INSERT [dbo].[TB_Acesso] ([perfilId], [secaoId]) VALUES (3, 19)
GO
INSERT [dbo].[TB_Acesso] ([perfilId], [secaoId]) VALUES (3, 26)
GO
INSERT [dbo].[TB_Acesso] ([perfilId], [secaoId]) VALUES (3, 27)
GO
INSERT [dbo].[TB_Acesso] ([perfilId], [secaoId]) VALUES (3, 28)
GO
INSERT [dbo].[TB_Acesso] ([perfilId], [secaoId]) VALUES (3, 29)
GO
SET IDENTITY_INSERT [dbo].[TB_Clientes] ON 

GO
INSERT [dbo].[TB_Clientes] ([id], [nome], [tel]) VALUES (1, N'Vitor', N'15 99878765299')
GO
INSERT [dbo].[TB_Clientes] ([id], [nome], [tel]) VALUES (2, N'Tiago Gerevini', N'11 2345655567')
GO
INSERT [dbo].[TB_Clientes] ([id], [nome], [tel]) VALUES (12, N'Rood', N'')
GO
INSERT [dbo].[TB_Clientes] ([id], [nome], [tel]) VALUES (13, N'Bette', N'')
GO
SET IDENTITY_INSERT [dbo].[TB_Clientes] OFF
GO
SET IDENTITY_INSERT [dbo].[TB_Parceiro] ON 

GO
INSERT [dbo].[TB_Parceiro] ([parceiroId], [cnpjParceiro], [razaoSocialParceiro], [nomeFantasia], [codigoVan], [nomeContato], [telefoneDDD], [telefoneNumero], [dataHoraCadastro], [tipo]) VALUES (58, N'04.235.110/0001-93', N'RPC REDE PONTO CERTO TECNOLOGIA E SERVICOS LTDA', N'RPC REDE PONTO CERTO TECNOLOGIA E SERVICOS LTDA', 29, N'Mary Joi', N'11', N'33512080', CAST(N'2010-06-07 23:37:46.317' AS DateTime), N'V')
GO
INSERT [dbo].[TB_Parceiro] ([parceiroId], [cnpjParceiro], [razaoSocialParceiro], [nomeFantasia], [codigoVan], [nomeContato], [telefoneDDD], [telefoneNumero], [dataHoraCadastro], [tipo]) VALUES (59, N'04.096.008/0001-54', N'CTICOM REDE DE SERVICOS LTDA', N'CTICOM INFORMATICA LTDA', 40, N'ANDRE LUCENA', N'81', N'21287000', CAST(N'2010-06-07 23:37:46.317' AS DateTime), N'M')
GO
INSERT [dbo].[TB_Parceiro] ([parceiroId], [cnpjParceiro], [razaoSocialParceiro], [nomeFantasia], [codigoVan], [nomeContato], [telefoneDDD], [telefoneNumero], [dataHoraCadastro], [tipo]) VALUES (60, N'00.896.571/0001-56', N'TENDENCIA INFOMACOES E SISTEMAS LTDA', N'TENDENCIA INFOMACOES E SISTEMAS', 36, N'Magnum Valentim', N'67', N'33163315', CAST(N'2010-06-07 23:37:46.317' AS DateTime), N'V')
GO
INSERT [dbo].[TB_Parceiro] ([parceiroId], [cnpjParceiro], [razaoSocialParceiro], [nomeFantasia], [codigoVan], [nomeContato], [telefoneDDD], [telefoneNumero], [dataHoraCadastro], [tipo]) VALUES (61, N'60.889.631/0001-35', N'IMAGE SERVICE COMERCIO E ASSITENCIA TECNICA LTDA', N'TEC POINT', 6, N'EDSON TADEU AVI JR', N'11', N'21067730', CAST(N'2010-06-07 23:37:46.317' AS DateTime), N'V')
GO
INSERT [dbo].[TB_Parceiro] ([parceiroId], [cnpjParceiro], [razaoSocialParceiro], [nomeFantasia], [codigoVan], [nomeContato], [telefoneDDD], [telefoneNumero], [dataHoraCadastro], [tipo]) VALUES (62, N'37.884.434/0001-01', N'TALENTO ASSESSORIA EMPRESARIAL LTDA', N'PRONTO INTEGRACAO', 33, N'MARCELO ABI CHAHINE SQUARISI', N'61', N'39618001', CAST(N'2010-06-07 23:37:46.317' AS DateTime), N'V')
GO
INSERT [dbo].[TB_Parceiro] ([parceiroId], [cnpjParceiro], [razaoSocialParceiro], [nomeFantasia], [codigoVan], [nomeContato], [telefoneDDD], [telefoneNumero], [dataHoraCadastro], [tipo]) VALUES (63, N'01.027.058/0001-91', N'CIELO S.A', N'CIELO S.A', 20, N'CARLOS CAFE', N'11', N'21843450', CAST(N'2010-06-07 23:37:46.317' AS DateTime), N'M')
GO
INSERT [dbo].[TB_Parceiro] ([parceiroId], [cnpjParceiro], [razaoSocialParceiro], [nomeFantasia], [codigoVan], [nomeContato], [telefoneDDD], [telefoneNumero], [dataHoraCadastro], [tipo]) VALUES (64, N'58.503.129/0001-00', N'TEMPO SERVICOS', N'AMEX', 99, N'ADRIANA LYS', N'11', N'37411565', CAST(N'2010-06-07 23:37:46.317' AS DateTime), N'V')
GO
INSERT [dbo].[TB_Parceiro] ([parceiroId], [cnpjParceiro], [razaoSocialParceiro], [nomeFantasia], [codigoVan], [nomeContato], [telefoneDDD], [telefoneNumero], [dataHoraCadastro], [tipo]) VALUES (65, N'03.282.579/0001-10', N'TELECOM NET S/A LOGISTICA DIGITAL', N'EPAY', 34, N'REGIANE REIS', N'11', N'52131421', CAST(N'2010-06-07 23:37:46.317' AS DateTime), N'V')
GO
INSERT [dbo].[TB_Parceiro] ([parceiroId], [cnpjParceiro], [razaoSocialParceiro], [nomeFantasia], [codigoVan], [nomeContato], [telefoneDDD], [telefoneNumero], [dataHoraCadastro], [tipo]) VALUES (66, N'02.231.701/0001-67', N'T D S INFORMATICA LTDA', N'T D S INFORMATICA LTDA', 13, N'EDSON ABREU', N'11', N'35348585', CAST(N'2010-06-07 23:37:46.317' AS DateTime), N'V')
GO
INSERT [dbo].[TB_Parceiro] ([parceiroId], [cnpjParceiro], [razaoSocialParceiro], [nomeFantasia], [codigoVan], [nomeContato], [telefoneDDD], [telefoneNumero], [dataHoraCadastro], [tipo]) VALUES (67, N'04.962.772/0001-65', N'FD DO BRASIL PROCESSAMENTO DE DADOS LTDA', N'FD DO BRASIL PROCESSAMENTO DE DADOS LTDA', 41, N'MARCIO PINHEIRO', N'11', N'21260203', CAST(N'2010-06-07 23:37:46.317' AS DateTime), N'V')
GO
INSERT [dbo].[TB_Parceiro] ([parceiroId], [cnpjParceiro], [razaoSocialParceiro], [nomeFantasia], [codigoVan], [nomeContato], [telefoneDDD], [telefoneNumero], [dataHoraCadastro], [tipo]) VALUES (68, N'05.334.427/0002-20', N'NÃO INFORMADO (00.000.000/0000-00)', N'NÃO INFORMADO (00.000.000/0000-00)', 101, N'CARLOS', N'11', N'11111111', CAST(N'2010-06-07 23:37:46.317' AS DateTime), N'M')
GO
INSERT [dbo].[TB_Parceiro] ([parceiroId], [cnpjParceiro], [razaoSocialParceiro], [nomeFantasia], [codigoVan], [nomeContato], [telefoneDDD], [telefoneNumero], [dataHoraCadastro], [tipo]) VALUES (69, N'03.440.147/0001-90', N'CHECK EXPRESS', N'CHECK EXPRESS', 28, N'Max Nascimento Santos', N'11', N'21315084', CAST(N'2010-06-07 23:37:46.317' AS DateTime), N'V')
GO
INSERT [dbo].[TB_Parceiro] ([parceiroId], [cnpjParceiro], [razaoSocialParceiro], [nomeFantasia], [codigoVan], [nomeContato], [telefoneDDD], [telefoneNumero], [dataHoraCadastro], [tipo]) VALUES (71, N'00.904.951/0001-95', N'POLICARD SYSTEMS E SERVICOS S/A', N'POLICARD SYSTEM', 26, N'MARINA MELLO', N'34', N'32333437', CAST(N'2010-06-07 23:37:46.317' AS DateTime), N'V')
GO
INSERT [dbo].[TB_Parceiro] ([parceiroId], [cnpjParceiro], [razaoSocialParceiro], [nomeFantasia], [codigoVan], [nomeContato], [telefoneDDD], [telefoneNumero], [dataHoraCadastro], [tipo]) VALUES (90, N'06.933.171/0001-50', N'IPRIME TECNOLOGIA LTDA', N'IPRIME TECNOLOGIA', 45, N'CARLOS TELLINI', N'11', N'37570600', CAST(N'2010-11-25 13:05:42.507' AS DateTime), N'V')
GO
INSERT [dbo].[TB_Parceiro] ([parceiroId], [cnpjParceiro], [razaoSocialParceiro], [nomeFantasia], [codigoVan], [nomeContato], [telefoneDDD], [telefoneNumero], [dataHoraCadastro], [tipo]) VALUES (91, N'07.529.932/0001-75', N'ALN COBRANCAS ATENDIMENTOS SERVICOS LTDA ME', N'VL SERVICOS CAMPOTEC', 35, N'ALMIR PAULINO DE SOUZA', N'67', N'33822455', CAST(N'2010-11-25 13:09:20.507' AS DateTime), N'M')
GO
INSERT [dbo].[TB_Parceiro] ([parceiroId], [cnpjParceiro], [razaoSocialParceiro], [nomeFantasia], [codigoVan], [nomeContato], [telefoneDDD], [telefoneNumero], [dataHoraCadastro], [tipo]) VALUES (93, N'40.538.965/0001-57', N'CARLOS', N'CARLOS', 510, N'CARLOS', N'11', N'38594157', CAST(N'2011-10-14 03:54:09.443' AS DateTime), N'M')
GO
INSERT [dbo].[TB_Parceiro] ([parceiroId], [cnpjParceiro], [razaoSocialParceiro], [nomeFantasia], [codigoVan], [nomeContato], [telefoneDDD], [telefoneNumero], [dataHoraCadastro], [tipo]) VALUES (96, N'11.873.625/0001-84', N'ANGELINO MENEZES DA SILVA', N'ANGELINO MENEZES DA SILVA', 99, N'ANGELINO MENEZES DA SILVA', N'88', N'99618312', CAST(N'2011-11-03 14:38:36.763' AS DateTime), N'M')
GO
INSERT [dbo].[TB_Parceiro] ([parceiroId], [cnpjParceiro], [razaoSocialParceiro], [nomeFantasia], [codigoVan], [nomeContato], [telefoneDDD], [telefoneNumero], [dataHoraCadastro], [tipo]) VALUES (97, N'12.040.516/0001-49', N'ANTONIO CARLOS FURNIELIS - ME', N'ANTONIO CARLOS FURNIELIS - ME', 99, N'ANTONIO CARLOS FURNIELIS', N'11', N'85953348', CAST(N'2011-11-03 14:39:40.997' AS DateTime), N'M')
GO
INSERT [dbo].[TB_Parceiro] ([parceiroId], [cnpjParceiro], [razaoSocialParceiro], [nomeFantasia], [codigoVan], [nomeContato], [telefoneDDD], [telefoneNumero], [dataHoraCadastro], [tipo]) VALUES (98, N'12.040.779/0001-58', N'ANTONIO LUIZ DE FREITAS - ME', N'ANTONIO LUIZ DE FREITAS - ME', 99, N'ANTONIO LUIZ DE FREITAS', N'12', N'39218420', CAST(N'2011-11-03 14:40:51.593' AS DateTime), N'M')
GO
INSERT [dbo].[TB_Parceiro] ([parceiroId], [cnpjParceiro], [razaoSocialParceiro], [nomeFantasia], [codigoVan], [nomeContato], [telefoneDDD], [telefoneNumero], [dataHoraCadastro], [tipo]) VALUES (99, N'11.818.734/0001-07', N'CARLOS A. EDUARDO DA SILVA - TREINAMENTOS ', N'CARLOS A. EDUARDO DA SILVA - TREINAMENTOS ', 99, N'CARLOS ANTONIO EDUARDO DA SILVA', N'66', N'35322995', CAST(N'2011-11-03 14:54:10.310' AS DateTime), N'M')
GO
INSERT [dbo].[TB_Parceiro] ([parceiroId], [cnpjParceiro], [razaoSocialParceiro], [nomeFantasia], [codigoVan], [nomeContato], [telefoneDDD], [telefoneNumero], [dataHoraCadastro], [tipo]) VALUES (100, N'12.043.549/0001-42', N'CARLOS ROBERTO PUPO DENADAI TREINAMENTO - ME ', N'CARLOS ROBERTO PUPO DENADAI TREINAMENTO - ME ', 32, N'CARLOS ROBERTO PUPO DENADAI', N'19', N'93158050', CAST(N'2011-11-03 14:55:20.450' AS DateTime), N'M')
GO
INSERT [dbo].[TB_Parceiro] ([parceiroId], [cnpjParceiro], [razaoSocialParceiro], [nomeFantasia], [codigoVan], [nomeContato], [telefoneDDD], [telefoneNumero], [dataHoraCadastro], [tipo]) VALUES (101, N'11.984.090/0001-19', N'CASSIANO DE SOUZA AMPARO - C. S. A.', N'CASSIANO DE SOUZA AMPARO - C. S. A.', 99, N'CASSIANO DE SOUZA AMPARO', N'62', N'33183027', CAST(N'2011-11-03 14:56:28.577' AS DateTime), N'M')
GO
INSERT [dbo].[TB_Parceiro] ([parceiroId], [cnpjParceiro], [razaoSocialParceiro], [nomeFantasia], [codigoVan], [nomeContato], [telefoneDDD], [telefoneNumero], [dataHoraCadastro], [tipo]) VALUES (102, N'11.702.397/0001-80', N'PONTO CERTO CORRETORA DE SEGUROS LTDA ', N'PONTO CERTO CORRETORA DE SEGUROS LTDA ', 103, N'CELSO SIDNAY BARBOSA', N'31', N'37867623', CAST(N'2011-11-03 14:57:28.437' AS DateTime), N'V')
GO
INSERT [dbo].[TB_Parceiro] ([parceiroId], [cnpjParceiro], [razaoSocialParceiro], [nomeFantasia], [codigoVan], [nomeContato], [telefoneDDD], [telefoneNumero], [dataHoraCadastro], [tipo]) VALUES (103, N'12.229.657/0001-04', N'CICERA BATISTA LIMA ', N'CICERA BATISTA LIMA ', 99, N'CICERA BATISTA LIMA DE SOUZA', N'88', N'35231621', CAST(N'2011-11-03 15:03:41.727' AS DateTime), N'M')
GO
INSERT [dbo].[TB_Parceiro] ([parceiroId], [cnpjParceiro], [razaoSocialParceiro], [nomeFantasia], [codigoVan], [nomeContato], [telefoneDDD], [telefoneNumero], [dataHoraCadastro], [tipo]) VALUES (104, N'05.898.080/0001-68', N'CRYSTAL UTILIDADES E SERVICOS LTDA ME ', N'CRYSTAL UTILIDADES E SERVICOS LTDA ME ', 99, N'CLAUDIO ALBA', N'67', N'30251685', CAST(N'2011-11-03 15:06:34.303' AS DateTime), N'M')
GO
INSERT [dbo].[TB_Parceiro] ([parceiroId], [cnpjParceiro], [razaoSocialParceiro], [nomeFantasia], [codigoVan], [nomeContato], [telefoneDDD], [telefoneNumero], [dataHoraCadastro], [tipo]) VALUES (105, N'11.688.568/0001-63', N'C. A. FEITOSA TREINAMENTOS ', N'C. A. FEITOSA TREINAMENTOS ', 99, N'CYRO DE AMORIM FEITOSA', N'85', N'91282888', CAST(N'2011-11-03 15:07:35.710' AS DateTime), N'M')
GO
INSERT [dbo].[TB_Parceiro] ([parceiroId], [cnpjParceiro], [razaoSocialParceiro], [nomeFantasia], [codigoVan], [nomeContato], [telefoneDDD], [telefoneNumero], [dataHoraCadastro], [tipo]) VALUES (106, N'01.751.852/0001-83', N'ELIAS ALVES DE CARVALHO ', N'ELIAS ALVES DE CARVALHO ', 99, N'ELIAS ALVES DE CARVALHO', N'69', N'34434028', CAST(N'2011-11-03 15:13:51.367' AS DateTime), N'M')
GO
INSERT [dbo].[TB_Parceiro] ([parceiroId], [cnpjParceiro], [razaoSocialParceiro], [nomeFantasia], [codigoVan], [nomeContato], [telefoneDDD], [telefoneNumero], [dataHoraCadastro], [tipo]) VALUES (107, N'12.140.767/0001-03', N'RELIANS SERVICOS E TREINAMENTO LTDA - ME ', N'RELIANS SERVICOS E TREINAMENTO LTDA - ME ', 99, N'ELIAS SOUZA LIMA', N'44', N'91094160', CAST(N'2011-11-03 15:20:13.623' AS DateTime), N'M')
GO
INSERT [dbo].[TB_Parceiro] ([parceiroId], [cnpjParceiro], [razaoSocialParceiro], [nomeFantasia], [codigoVan], [nomeContato], [telefoneDDD], [telefoneNumero], [dataHoraCadastro], [tipo]) VALUES (108, N'12.272.470/0001-93', N'CORDEIRO & VILHENA SERVICOS ADMINISTRATIVOS LTDA ', N'CORDEIRO & VILHENA SERVICOS ADMINISTRATIVOS LTDA ', 107, N'ELISAMA CORDEIRO SILVA LIMA', N'91', N'88505928', CAST(N'2011-11-03 15:21:50.687' AS DateTime), N'M')
GO
INSERT [dbo].[TB_Parceiro] ([parceiroId], [cnpjParceiro], [razaoSocialParceiro], [nomeFantasia], [codigoVan], [nomeContato], [telefoneDDD], [telefoneNumero], [dataHoraCadastro], [tipo]) VALUES (109, N'11.619.612/0001-83', N'E. A. DE ARAUJO MENEZES', N'E. A. DE ARAUJO MENEZES', 99, N'EUCLIDES ALEXANDRE DE ARAUJO MENEZES', N'85', N'30871582', CAST(N'2011-11-03 15:27:12.227' AS DateTime), N'M')
GO
INSERT [dbo].[TB_Parceiro] ([parceiroId], [cnpjParceiro], [razaoSocialParceiro], [nomeFantasia], [codigoVan], [nomeContato], [telefoneDDD], [telefoneNumero], [dataHoraCadastro], [tipo]) VALUES (110, N'11.773.927/0001-80', N'EULALIO ANTONIO RODRIGUES ', N'EULALIO ANTONIO RODRIGUES ', 99, N'EULALIO ANTONIO RODRIGUES', N'31', N'99990277', CAST(N'2011-11-03 15:28:05.927' AS DateTime), N'M')
GO
INSERT [dbo].[TB_Parceiro] ([parceiroId], [cnpjParceiro], [razaoSocialParceiro], [nomeFantasia], [codigoVan], [nomeContato], [telefoneDDD], [telefoneNumero], [dataHoraCadastro], [tipo]) VALUES (111, N'11.872.840/0001-60', N'F ALVES RODRIGUES', N'F ALVES RODRIGUES', 99, N'FRANCISCO ALVES RODRIGUES', N'98', N'81414772', CAST(N'2011-11-03 15:28:55.257' AS DateTime), N'M')
GO
INSERT [dbo].[TB_Parceiro] ([parceiroId], [cnpjParceiro], [razaoSocialParceiro], [nomeFantasia], [codigoVan], [nomeContato], [telefoneDDD], [telefoneNumero], [dataHoraCadastro], [tipo]) VALUES (112, N'12.034.060/0001-04', N'GAL TREINAMENTOS E ASSESSORIA LTDA', N'GAL TREINAMENTOS E ASSESSORIA LTDA', 99, N'GENILSON ALVES LESSA', N'79', N'88019868', CAST(N'2011-11-03 15:29:45.070' AS DateTime), N'M')
GO
INSERT [dbo].[TB_Parceiro] ([parceiroId], [cnpjParceiro], [razaoSocialParceiro], [nomeFantasia], [codigoVan], [nomeContato], [telefoneDDD], [telefoneNumero], [dataHoraCadastro], [tipo]) VALUES (113, N'12.061.378/0001-84', N'BARRA GRANDE TREINAMENTOS LTDA - ME ', N'BARRA GRANDE TREINAMENTOS LTDA - ME ', 99, N'GESRAEL ARISTIDES DE CARVALHO', N'75', N'36236419', CAST(N'2011-11-03 15:30:21.943' AS DateTime), N'M')
GO
INSERT [dbo].[TB_Parceiro] ([parceiroId], [cnpjParceiro], [razaoSocialParceiro], [nomeFantasia], [codigoVan], [nomeContato], [telefoneDDD], [telefoneNumero], [dataHoraCadastro], [tipo]) VALUES (114, N'04.007.697/0001-83', N'FGL ASSESSORIA EMPRESARIAL LTDA ME', N'FGL ASSESSORIA EMPRESARIAL LTDA ME', 99, N'GILBERTO GUIMARAES JUNIOR', N'47', N'99841276', CAST(N'2011-11-03 15:30:57.117' AS DateTime), N'M')
GO
INSERT [dbo].[TB_Parceiro] ([parceiroId], [cnpjParceiro], [razaoSocialParceiro], [nomeFantasia], [codigoVan], [nomeContato], [telefoneDDD], [telefoneNumero], [dataHoraCadastro], [tipo]) VALUES (116, N'11.697.556/0001-03', N'GP ASSESSORIA LTDA ', N'GP ASSESSORIA LTDA ', 99, N'GILMAR SIDNEY PEREIRA NEVES', N'35', N'32212322', CAST(N'2011-11-03 15:32:24.647' AS DateTime), N'M')
GO
INSERT [dbo].[TB_Parceiro] ([parceiroId], [cnpjParceiro], [razaoSocialParceiro], [nomeFantasia], [codigoVan], [nomeContato], [telefoneDDD], [telefoneNumero], [dataHoraCadastro], [tipo]) VALUES (117, N'11.881.111/0001-70', N'HP TREINAMENTO E CONSULTORIA COMERCIAL LTDA - ME ', N'HP TREINAMENTO E CONSULTORIA COMERCIAL LTDA - ME ', 99, N'HAROLDO PEREIRA DE SOUZA FILHO', N'32', N'34228957', CAST(N'2011-11-03 15:33:09.287' AS DateTime), N'M')
GO
INSERT [dbo].[TB_Parceiro] ([parceiroId], [cnpjParceiro], [razaoSocialParceiro], [nomeFantasia], [codigoVan], [nomeContato], [telefoneDDD], [telefoneNumero], [dataHoraCadastro], [tipo]) VALUES (118, N'12.194.179/0001-44', N'HELAINE MARCIA GONCALVES ', N'HELAINE MARCIA GONCALVES ', 78, N'HELAINE MARCIA GONCALVES', N'31', N'91243386', CAST(N'2011-11-03 15:33:48.927' AS DateTime), N'M')
GO
INSERT [dbo].[TB_Parceiro] ([parceiroId], [cnpjParceiro], [razaoSocialParceiro], [nomeFantasia], [codigoVan], [nomeContato], [telefoneDDD], [telefoneNumero], [dataHoraCadastro], [tipo]) VALUES (119, N'11.332.043/0001-90', N'JAKSON MOREIRA DA ROCHA - ME', N'JAKSON MOREIRA DA ROCHA - ME', 99, N'JAKSON MOREIRA DA ROCHA ', N'18', N'33235137', CAST(N'2011-11-03 15:39:45.163' AS DateTime), N'M')
GO
INSERT [dbo].[TB_Parceiro] ([parceiroId], [cnpjParceiro], [razaoSocialParceiro], [nomeFantasia], [codigoVan], [nomeContato], [telefoneDDD], [telefoneNumero], [dataHoraCadastro], [tipo]) VALUES (120, N'12.047.276/0001-04', N'JAMIL RODRIGUES CARDOSO ', N'JAMIL RODRIGUES CARDOSO ', 99, N'JAMIL RODRIGUES CARDOSO ', N'18', N'36246059', CAST(N'2011-11-03 15:40:40.490' AS DateTime), N'M')
GO
INSERT [dbo].[TB_Parceiro] ([parceiroId], [cnpjParceiro], [razaoSocialParceiro], [nomeFantasia], [codigoVan], [nomeContato], [telefoneDDD], [telefoneNumero], [dataHoraCadastro], [tipo]) VALUES (121, N'12.012.311/0001-50', N'J B DA ROSA MATOS', N'J B DA ROSA MATOS', 99, N'JOAO BATISTA DA ROSA MATOS', N'92', N'91403312', CAST(N'2011-11-03 15:41:39.053' AS DateTime), N'M')
GO
INSERT [dbo].[TB_Parceiro] ([parceiroId], [cnpjParceiro], [razaoSocialParceiro], [nomeFantasia], [codigoVan], [nomeContato], [telefoneDDD], [telefoneNumero], [dataHoraCadastro], [tipo]) VALUES (122, N'11.987.444/0001-89', N'JBJ - TREINAMENTOS GERENCIAIS LTDA -ME', N'JBJ - TREINAMENTOS GERENCIAIS LTDA -ME', 99, N'JOAO BATISTA DE JESUS', N'48', N'99624920', CAST(N'2011-11-03 15:42:25.023' AS DateTime), N'M')
GO
INSERT [dbo].[TB_Parceiro] ([parceiroId], [cnpjParceiro], [razaoSocialParceiro], [nomeFantasia], [codigoVan], [nomeContato], [telefoneDDD], [telefoneNumero], [dataHoraCadastro], [tipo]) VALUES (123, N'11.955.936/0001-92', N'JOAO MARCOS SOARES VERISSIMO', N'JOAO MARCOS SOARES VERISSIMO', 99, N'JOAO MARCOS VERISSIMO', N'16', N'39134596', CAST(N'2011-11-03 15:45:22.227' AS DateTime), N'M')
GO
INSERT [dbo].[TB_Parceiro] ([parceiroId], [cnpjParceiro], [razaoSocialParceiro], [nomeFantasia], [codigoVan], [nomeContato], [telefoneDDD], [telefoneNumero], [dataHoraCadastro], [tipo]) VALUES (124, N'11.849.750/0001-59', N'M.G. MOREIRA ', N'M.G. MOREIRA ', 99, N'JOSE AUGUSTO MOREIRA', N'71', N'99781455', CAST(N'2011-11-03 15:46:46.630' AS DateTime), N'M')
GO
INSERT [dbo].[TB_Parceiro] ([parceiroId], [cnpjParceiro], [razaoSocialParceiro], [nomeFantasia], [codigoVan], [nomeContato], [telefoneDDD], [telefoneNumero], [dataHoraCadastro], [tipo]) VALUES (125, N'07.439.364/0001-11', N'JOSE EDUARDO BITTENCOURT G REGO', N'JOSE EDUARDO BITTENCOURT G REGO', 99, N'JOSE EDUARDO BITTENCOURT G REGO', N'71', N'32431613', CAST(N'2011-11-03 15:47:36.897' AS DateTime), N'M')
GO
INSERT [dbo].[TB_Parceiro] ([parceiroId], [cnpjParceiro], [razaoSocialParceiro], [nomeFantasia], [codigoVan], [nomeContato], [telefoneDDD], [telefoneNumero], [dataHoraCadastro], [tipo]) VALUES (126, N'09.180.369/0001-06', N'J. J. PIOTTO ', N'J. J. PIOTTO ', 99, N'JOSE JAIR PIOTTO', N'17', N'33530301', CAST(N'2011-11-03 15:50:40.693' AS DateTime), N'M')
GO
INSERT [dbo].[TB_Parceiro] ([parceiroId], [cnpjParceiro], [razaoSocialParceiro], [nomeFantasia], [codigoVan], [nomeContato], [telefoneDDD], [telefoneNumero], [dataHoraCadastro], [tipo]) VALUES (127, N'14.286.461/0001-87', N'J M DAS CHAGAS VAZ CONSULTORIA', N'J M DAS CHAGAS VAZ CONSULTORIA', 99, N'JOSE MARIA DAS CHAGAS VAZ', N'98', N'99728633', CAST(N'2011-11-03 15:52:02.787' AS DateTime), N'M')
GO
INSERT [dbo].[TB_Parceiro] ([parceiroId], [cnpjParceiro], [razaoSocialParceiro], [nomeFantasia], [codigoVan], [nomeContato], [telefoneDDD], [telefoneNumero], [dataHoraCadastro], [tipo]) VALUES (128, N'13.721.752/0001-93', N'JOSE RAIMUNDO CERQUEIRA FREITAS', N'JOSE RAIMUNDO CERQUEIRA FREITAS', 99, N'JOSE RAIMUNDO CERQUEIRA FREITAS', N'71', N'96045255', CAST(N'2011-11-03 15:52:44.273' AS DateTime), N'M')
GO
INSERT [dbo].[TB_Parceiro] ([parceiroId], [cnpjParceiro], [razaoSocialParceiro], [nomeFantasia], [codigoVan], [nomeContato], [telefoneDDD], [telefoneNumero], [dataHoraCadastro], [tipo]) VALUES (129, N'14.280.114/0001-47', N'MULT CONSULTORIA EMPRESARIAL LTDA', N'MULT CONSULTORIA EMPRESARIAL LTDA', 99, N'LILLIAN APARECIDA DE MELO CAMPOS', N'63', N'92366925', CAST(N'2011-11-03 15:54:57.880' AS DateTime), N'M')
GO
INSERT [dbo].[TB_Parceiro] ([parceiroId], [cnpjParceiro], [razaoSocialParceiro], [nomeFantasia], [codigoVan], [nomeContato], [telefoneDDD], [telefoneNumero], [dataHoraCadastro], [tipo]) VALUES (130, N'12.065.701/0001-98', N'JILC TREINAMENTO E PROSPECCAO DE NEGOCIOS LTDA', N'JILC TREINAMENTO E PROSPECCAO DE NEGOCIOS LTDA', 99, N'LUCIA DOS ANJOS COSTA FERREIRA', N'21', N'78678265', CAST(N'2011-11-03 15:56:12.820' AS DateTime), N'M')
GO
INSERT [dbo].[TB_Parceiro] ([parceiroId], [cnpjParceiro], [razaoSocialParceiro], [nomeFantasia], [codigoVan], [nomeContato], [telefoneDDD], [telefoneNumero], [dataHoraCadastro], [tipo]) VALUES (131, N'08.088.454/0001-78', N'TEODORO COBRANCA LTDA ', N'TEODORO COBRANCA LTDA ', 43, N'LUIS ANTONIO TEODORO', N'34', N'32168396', CAST(N'2011-11-03 15:57:05.007' AS DateTime), N'M')
GO
INSERT [dbo].[TB_Parceiro] ([parceiroId], [cnpjParceiro], [razaoSocialParceiro], [nomeFantasia], [codigoVan], [nomeContato], [telefoneDDD], [telefoneNumero], [dataHoraCadastro], [tipo]) VALUES (132, N'09.175.367/0001-10', N'I9 SERVICOS ADMINISTRATIVOS LTDA - ME ', N'I9 SERVICOS ADMINISTRATIVOS LTDA - ME ', 99, N'LUIS FERNANDO LIBERATTI', N'43', N'91399991', CAST(N'2011-11-03 15:57:49.630' AS DateTime), N'M')
GO
INSERT [dbo].[TB_Parceiro] ([parceiroId], [cnpjParceiro], [razaoSocialParceiro], [nomeFantasia], [codigoVan], [nomeContato], [telefoneDDD], [telefoneNumero], [dataHoraCadastro], [tipo]) VALUES (133, N'11.864.937/0001-21', N'LUIZ CARLOS LOPES TREINAMENTO ME ', N'LUIZ CARLOS LOPES TREINAMENTO ME ', 99, N'LUIZ CARLOS LOPES', N'17', N'91176163', CAST(N'2011-11-03 15:58:30.350' AS DateTime), N'M')
GO
INSERT [dbo].[TB_Parceiro] ([parceiroId], [cnpjParceiro], [razaoSocialParceiro], [nomeFantasia], [codigoVan], [nomeContato], [telefoneDDD], [telefoneNumero], [dataHoraCadastro], [tipo]) VALUES (134, N'11.987.080/0001-37', N'MARCELO JOSE FERREIRA SOARES - ME', N'MARCELO JOSE FERREIRA SOARES - ME', 99, N'MARCELO JOSE FERREIRA SOARES', N'18', N'97851775', CAST(N'2011-11-03 15:59:18.867' AS DateTime), N'M')
GO
INSERT [dbo].[TB_Parceiro] ([parceiroId], [cnpjParceiro], [razaoSocialParceiro], [nomeFantasia], [codigoVan], [nomeContato], [telefoneDDD], [telefoneNumero], [dataHoraCadastro], [tipo]) VALUES (135, N'11.890.069/0001-54', N'MARCIO GONCALVES DE MORAES -ME ', N'MARCIO GONCALVES DE MORAES -ME ', 99, N'MARCIO GONCALVES DE MORAIS', N'71', N'92843000', CAST(N'2011-11-03 16:00:06.083' AS DateTime), N'M')
GO
INSERT [dbo].[TB_Parceiro] ([parceiroId], [cnpjParceiro], [razaoSocialParceiro], [nomeFantasia], [codigoVan], [nomeContato], [telefoneDDD], [telefoneNumero], [dataHoraCadastro], [tipo]) VALUES (136, N'11.864.460/0001-84', N'MARIA ELENA PROMPERO - ME ', N'MARIA ELENA PROMPERO - ME ', 99, N'MARIA ELENA PROMPERO', N'19', N'97767767', CAST(N'2011-11-03 16:01:17.413' AS DateTime), N'M')
GO
INSERT [dbo].[TB_Parceiro] ([parceiroId], [cnpjParceiro], [razaoSocialParceiro], [nomeFantasia], [codigoVan], [nomeContato], [telefoneDDD], [telefoneNumero], [dataHoraCadastro], [tipo]) VALUES (137, N'11.738.979/0001-16', N'MATEO & MATEO LTDA ', N'MATEO & MATEO LTDA ', 99, N'MATHEUS DE MATEO', N'54', N'96267007', CAST(N'2011-11-03 16:04:41.100' AS DateTime), N'M')
GO
INSERT [dbo].[TB_Parceiro] ([parceiroId], [cnpjParceiro], [razaoSocialParceiro], [nomeFantasia], [codigoVan], [nomeContato], [telefoneDDD], [telefoneNumero], [dataHoraCadastro], [tipo]) VALUES (138, N'11.943.855/0001-72', N'DORIA - CONSULTORIA, ASSESSORIA E TREINAMENTO LTDA', N'DORIA - CONSULTORIA, ASSESSORIA E TREINAMENTO LTDA', 99, N'OSCAR DORIA JUNIOR', N'41', N'32624732', CAST(N'2011-11-03 16:05:19.227' AS DateTime), N'M')
GO
INSERT [dbo].[TB_Parceiro] ([parceiroId], [cnpjParceiro], [razaoSocialParceiro], [nomeFantasia], [codigoVan], [nomeContato], [telefoneDDD], [telefoneNumero], [dataHoraCadastro], [tipo]) VALUES (139, N'11.040.115/0001-26', N'O.P TREINAMENTOS E ASSESSORIA LTDA ', N'O.P TREINAMENTOS E ASSESSORIA LTDA ', 99, N'OSMANI JOSE DO PRADO', N'81', N'86434055', CAST(N'2011-11-03 16:05:57.100' AS DateTime), N'M')
GO
INSERT [dbo].[TB_Parceiro] ([parceiroId], [cnpjParceiro], [razaoSocialParceiro], [nomeFantasia], [codigoVan], [nomeContato], [telefoneDDD], [telefoneNumero], [dataHoraCadastro], [tipo]) VALUES (140, N'11.687.923/0001-80', N'INNOVIDEA TREINAMENTO E GESTAO LTDA ', N'INNOVIDEA TREINAMENTO E GESTAO LTDA ', 99, N'PAULO DA PENHA COLOZZI', N'11', N'37271659', CAST(N'2011-11-03 16:07:04.397' AS DateTime), N'M')
GO
INSERT [dbo].[TB_Parceiro] ([parceiroId], [cnpjParceiro], [razaoSocialParceiro], [nomeFantasia], [codigoVan], [nomeContato], [telefoneDDD], [telefoneNumero], [dataHoraCadastro], [tipo]) VALUES (141, N'11.877.849/0001-64', N'P.R.A. TREINAMENTO E ASSESSORIA LTDA', N'P.R.A. TREINAMENTO E ASSESSORIA LTDA', 99, N'PAULO ROBERTO DE ALMEIDA', N'51', N'91137005', CAST(N'2011-11-03 16:07:47.867' AS DateTime), N'M')
GO
INSERT [dbo].[TB_Parceiro] ([parceiroId], [cnpjParceiro], [razaoSocialParceiro], [nomeFantasia], [codigoVan], [nomeContato], [telefoneDDD], [telefoneNumero], [dataHoraCadastro], [tipo]) VALUES (142, N'11.900.128/0001-28', N'PEDRO PEREIRA TAVARES', N'PEDRO PEREIRA TAVARES', 99, N'PEDRO PEREIRA TAVARES', N'31', N'33918285', CAST(N'2011-11-03 16:10:07.023' AS DateTime), N'M')
GO
INSERT [dbo].[TB_Parceiro] ([parceiroId], [cnpjParceiro], [razaoSocialParceiro], [nomeFantasia], [codigoVan], [nomeContato], [telefoneDDD], [telefoneNumero], [dataHoraCadastro], [tipo]) VALUES (143, N'12.160.894/0001-66', N'D VILLE ADMINISTRADORA ASSESSORIA TREINAMENTO EMPRESARIAL E GERENCIAL LTDA EPP', N'D VILLE ADMINISTRADORA ASSESSORIA TREINAMENTO EMPRESARIAL E GERENCIAL LTDA EPP', 99, N'PEDRO ROCHA DE SOUSA', N'65', N'36271597', CAST(N'2011-11-03 16:10:47.537' AS DateTime), N'M')
GO
INSERT [dbo].[TB_Parceiro] ([parceiroId], [cnpjParceiro], [razaoSocialParceiro], [nomeFantasia], [codigoVan], [nomeContato], [telefoneDDD], [telefoneNumero], [dataHoraCadastro], [tipo]) VALUES (144, N'11.203.410/0001-56', N'ROGERIO APARECIDO ALVES DA SILVA', N'ROGERIO APARECIDO ALVES DA SILVA', 99, N'ROGERIO APARECIDO ALVES DA SILVA', N'19', N'97642579', CAST(N'2011-11-03 16:14:24.117' AS DateTime), N'M')
GO
INSERT [dbo].[TB_Parceiro] ([parceiroId], [cnpjParceiro], [razaoSocialParceiro], [nomeFantasia], [codigoVan], [nomeContato], [telefoneDDD], [telefoneNumero], [dataHoraCadastro], [tipo]) VALUES (145, N'11.993.824/0001-26', N'R. C. DO AMARAL SERVICOS COMERCIAIS ', N'R. C. DO AMARAL SERVICOS COMERCIAIS ', 99, N'ROGERIO CARVALHO DO AMARAL', N'24', N'22497588', CAST(N'2011-11-03 16:15:08.570' AS DateTime), N'M')
GO
INSERT [dbo].[TB_Parceiro] ([parceiroId], [cnpjParceiro], [razaoSocialParceiro], [nomeFantasia], [codigoVan], [nomeContato], [telefoneDDD], [telefoneNumero], [dataHoraCadastro], [tipo]) VALUES (146, N'08.108.692/0001-06', N'ROCHA SERVICO DE COBRANCA LTDA - ME ', N'ROCHA SERVICO DE COBRANCA LTDA - ME ', 85, N'RONALDO ROBERTO ROCHA', N'48', N'91467227', CAST(N'2011-11-03 16:17:25.367' AS DateTime), N'M')
GO
INSERT [dbo].[TB_Parceiro] ([parceiroId], [cnpjParceiro], [razaoSocialParceiro], [nomeFantasia], [codigoVan], [nomeContato], [telefoneDDD], [telefoneNumero], [dataHoraCadastro], [tipo]) VALUES (147, N'11.689.307/0001-68', N'SERGIO ANTONIO GRANDO 25011596915', N'SERGIO ANTONIO GRANDO 25011596915', 99, N'SERGIO ANTONIO GRANDO', N'49', N'91578181', CAST(N'2011-11-03 16:18:09.990' AS DateTime), N'M')
GO
INSERT [dbo].[TB_Parceiro] ([parceiroId], [cnpjParceiro], [razaoSocialParceiro], [nomeFantasia], [codigoVan], [nomeContato], [telefoneDDD], [telefoneNumero], [dataHoraCadastro], [tipo]) VALUES (148, N'11.923.637/0001-76', N'SERGIO ROBERTO MARINO - ME ', N'SERGIO ROBERTO MARINO - ME ', 99, N'SERGIO ROBERTO MARINO', N'16', N'92088832', CAST(N'2011-11-03 16:20:34.037' AS DateTime), N'M')
GO
INSERT [dbo].[TB_Parceiro] ([parceiroId], [cnpjParceiro], [razaoSocialParceiro], [nomeFantasia], [codigoVan], [nomeContato], [telefoneDDD], [telefoneNumero], [dataHoraCadastro], [tipo]) VALUES (149, N'11.964.227/0001-73', N'VALMIR CESAR MAZIERO - ME ', N'VALMIR CESAR MAZIERO - ME ', 99, N'VALMIR CESAR MAZIERO', N'18', N'35514677', CAST(N'2011-11-03 16:21:32.880' AS DateTime), N'M')
GO
INSERT [dbo].[TB_Parceiro] ([parceiroId], [cnpjParceiro], [razaoSocialParceiro], [nomeFantasia], [codigoVan], [nomeContato], [telefoneDDD], [telefoneNumero], [dataHoraCadastro], [tipo]) VALUES (150, N'11.969.141/0001-33', N'VOC - REGIONAL CORRESPONDENTES LTDA - EPP', N'VOC - REGIONAL CORRESPONDENTES LTDA - EPP', 99, N'VALTER DE OLIVEIRA CAMPOLIM', N'15', N'32722914', CAST(N'2011-11-03 16:22:13.367' AS DateTime), N'M')
GO
INSERT [dbo].[TB_Parceiro] ([parceiroId], [cnpjParceiro], [razaoSocialParceiro], [nomeFantasia], [codigoVan], [nomeContato], [telefoneDDD], [telefoneNumero], [dataHoraCadastro], [tipo]) VALUES (151, N'12.005.953/0001-21', N'GARBES & DUARTE TREINAMENTOS E DESENVOLVIMENTOS PROFISSIONAIS LTDA ', N'GARBES & DUARTE TREINAMENTOS E DESENVOLVIMENTOS PROFISSIONAIS LTDA ', 99, N'VINICIUS GARBES RODRIGUES', N'13', N'91772940', CAST(N'2011-11-03 16:22:57.913' AS DateTime), N'M')
GO
INSERT [dbo].[TB_Parceiro] ([parceiroId], [cnpjParceiro], [razaoSocialParceiro], [nomeFantasia], [codigoVan], [nomeContato], [telefoneDDD], [telefoneNumero], [dataHoraCadastro], [tipo]) VALUES (152, N'11.970.245/0001-68', N'WALDIR ZELI FERRARESSO TREINAMENTO - ME ', N'WALDIR ZELI FERRARESSO TREINAMENTO - ME ', 99, N'WALDIR ZELI FERRARESSO', N'19', N'32562537', CAST(N'2011-11-03 16:23:56.913' AS DateTime), N'M')
GO
INSERT [dbo].[TB_Parceiro] ([parceiroId], [cnpjParceiro], [razaoSocialParceiro], [nomeFantasia], [codigoVan], [nomeContato], [telefoneDDD], [telefoneNumero], [dataHoraCadastro], [tipo]) VALUES (153, N'11.868.581/0001-02', N'CLASSIC TREINAMENTO E GESTAO LTDA - ME ', N'CLASSIC TREINAMENTO E GESTAO LTDA - ME ', 99, N'WILLIAM OLIVEIRA NONATO', N'11', N'37810108', CAST(N'2011-11-03 16:25:34.523' AS DateTime), N'M')
GO
INSERT [dbo].[TB_Parceiro] ([parceiroId], [cnpjParceiro], [razaoSocialParceiro], [nomeFantasia], [codigoVan], [nomeContato], [telefoneDDD], [telefoneNumero], [dataHoraCadastro], [tipo]) VALUES (154, N'07.436.770/0001-20', N'BRINKS E PAGO TECNOLOGIA LTDA', N'BRINKS', 27, N'MARCELO', N'11', N'21330455', CAST(N'2011-11-08 11:46:02.460' AS DateTime), N'V')
GO
INSERT [dbo].[TB_Parceiro] ([parceiroId], [cnpjParceiro], [razaoSocialParceiro], [nomeFantasia], [codigoVan], [nomeContato], [telefoneDDD], [telefoneNumero], [dataHoraCadastro], [tipo]) VALUES (155, N'05.396.051/0001-06', N'Razão Teste', N'Nome Teste', 10, N'Julio Teste', N'11', N'123456789', CAST(N'2012-08-16 04:02:06.327' AS DateTime), N'M')
GO
INSERT [dbo].[TB_Parceiro] ([parceiroId], [cnpjParceiro], [razaoSocialParceiro], [nomeFantasia], [codigoVan], [nomeContato], [telefoneDDD], [telefoneNumero], [dataHoraCadastro], [tipo]) VALUES (156, N'07.560.965/0002-69', N'Razão teste', N'Nome Trste', 10, N'Julio Teste  - 2', N'11', N'123456899', CAST(N'2012-08-16 04:02:51.360' AS DateTime), N'M')
GO
INSERT [dbo].[TB_Parceiro] ([parceiroId], [cnpjParceiro], [razaoSocialParceiro], [nomeFantasia], [codigoVan], [nomeContato], [telefoneDDD], [telefoneNumero], [dataHoraCadastro], [tipo]) VALUES (158, N'47.379.565/0001-95', N'SCOPUS SOLUÇÕES LTDA', N'SCOPUS SOLUÇÕES', 30, N'THIAGO ROBERTO ROSENTE RIOS', N'11', N'39093668', CAST(N'2012-08-23 15:37:05.907' AS DateTime), N'V')
GO
INSERT [dbo].[TB_Parceiro] ([parceiroId], [cnpjParceiro], [razaoSocialParceiro], [nomeFantasia], [codigoVan], [nomeContato], [telefoneDDD], [telefoneNumero], [dataHoraCadastro], [tipo]) VALUES (159, N'12.165.136/0001-30', N'M J PINHEIRO & CIA LTDA', N'M J M TREINAMENTOS', 99, N'MARIA JOSE', N'82', N'96089192', CAST(N'2012-10-10 13:16:28.973' AS DateTime), N'M')
GO
INSERT [dbo].[TB_Parceiro] ([parceiroId], [cnpjParceiro], [razaoSocialParceiro], [nomeFantasia], [codigoVan], [nomeContato], [telefoneDDD], [telefoneNumero], [dataHoraCadastro], [tipo]) VALUES (160, N'01.491.769/0001-12', N'MAGUI & R.PRINTES CORRETORA DE SEGUROS DE VIDA E SERVICOS DE TREINAMENTO LTDA ME ', N'MAGUI & R.PRINTES CORRETORA DE SEGUROS DE VIDA E SERVICOS DE TREINAMENTO LTDA ME ', 99, N'ROMMEL RODARTE PRINTES', N'11', N'996661983', CAST(N'2013-01-28 12:54:29.280' AS DateTime), N'M')
GO
INSERT [dbo].[TB_Parceiro] ([parceiroId], [cnpjParceiro], [razaoSocialParceiro], [nomeFantasia], [codigoVan], [nomeContato], [telefoneDDD], [telefoneNumero], [dataHoraCadastro], [tipo]) VALUES (161, N'11.821.746/0001-82', N'JOAO BOSCO DE OLIVEIRA J.B.O', N'JOAO BOSCO DE OLIVEIRA J.B.O', 99, N'JOAO BOSCO DE OLIVEIRA', N'62', N'99756783', CAST(N'2013-01-28 15:26:09.883' AS DateTime), N'M')
GO
INSERT [dbo].[TB_Parceiro] ([parceiroId], [cnpjParceiro], [razaoSocialParceiro], [nomeFantasia], [codigoVan], [nomeContato], [telefoneDDD], [telefoneNumero], [dataHoraCadastro], [tipo]) VALUES (162, N'11.938.250/0001-93', N'PAULO SERGIO DE CARVALHO 46426850659', N'PAULO SERGIO DE CARVALHO 46426850659', 99, N'PAULO SERGIO DE CARVALHO', N'31', N'94014462', CAST(N'2013-01-28 15:27:43.273' AS DateTime), N'M')
GO
INSERT [dbo].[TB_Parceiro] ([parceiroId], [cnpjParceiro], [razaoSocialParceiro], [nomeFantasia], [codigoVan], [nomeContato], [telefoneDDD], [telefoneNumero], [dataHoraCadastro], [tipo]) VALUES (163, N'12.522.152/0001-33', N'ASTROGILDO NASCIMENTO', N'ASTROGILDO NASCIMENTO', 99, N'ASTROGILDO NASCIMENTO', N'61', N'84221854', CAST(N'2013-01-28 15:29:11.370' AS DateTime), N'M')
GO
INSERT [dbo].[TB_Parceiro] ([parceiroId], [cnpjParceiro], [razaoSocialParceiro], [nomeFantasia], [codigoVan], [nomeContato], [telefoneDDD], [telefoneNumero], [dataHoraCadastro], [tipo]) VALUES (164, N'12.194.176/0001-00', N'ROBERTO DE PAULA ESTEVAM', N'ROBERTO DE PAULA ESTEVAM', 99, N'ROBERTO DE PAULA ESTEVAM', N'92', N'91122114', CAST(N'2013-01-28 15:33:10.837' AS DateTime), N'M')
GO
INSERT [dbo].[TB_Parceiro] ([parceiroId], [cnpjParceiro], [razaoSocialParceiro], [nomeFantasia], [codigoVan], [nomeContato], [telefoneDDD], [telefoneNumero], [dataHoraCadastro], [tipo]) VALUES (165, N'11.825.949/0001-47', N'L.T. DE QUADROS ME', N'L.T. DE QUADROS ME', 99, N'LAFAIETE TEIXEIRA DE QUADROS', N'66', N'99983320', CAST(N'2013-01-28 15:52:29.540' AS DateTime), N'M')
GO
INSERT [dbo].[TB_Parceiro] ([parceiroId], [cnpjParceiro], [razaoSocialParceiro], [nomeFantasia], [codigoVan], [nomeContato], [telefoneDDD], [telefoneNumero], [dataHoraCadastro], [tipo]) VALUES (166, N'11.744.975/0001-40', N'HERON RIBEIRO DE SOUZA', N'HERON RIBEIRO DE SOUZA', 99, N'HERON RIBEIRO DE SOUZA', N'31', N'87318900', CAST(N'2013-01-28 15:53:50.947' AS DateTime), N'M')
GO
INSERT [dbo].[TB_Parceiro] ([parceiroId], [cnpjParceiro], [razaoSocialParceiro], [nomeFantasia], [codigoVan], [nomeContato], [telefoneDDD], [telefoneNumero], [dataHoraCadastro], [tipo]) VALUES (167, N'11.931.718/0001-18', N'JIMM TREINAMENTO E ASSESSORIA COMERCIAL LTDA', N'JIMM TREINAMENTO E ASSESSORIA COMERCIAL LTDA', 99, N'JOSE INACIO DE MORAES MARINHO', N'83', N'99868868', CAST(N'2013-01-28 15:55:53.917' AS DateTime), N'M')
GO
INSERT [dbo].[TB_Parceiro] ([parceiroId], [cnpjParceiro], [razaoSocialParceiro], [nomeFantasia], [codigoVan], [nomeContato], [telefoneDDD], [telefoneNumero], [dataHoraCadastro], [tipo]) VALUES (168, N'14.712.861/0001-07', N'DONIZETH LONGUINHO DA SILVA', N'DONIZETH LONGUINHO DA SILVA', 99, N'DONIZETH LONGUINHO DA SILVA', N'62', N'85114578', CAST(N'2013-01-28 16:00:32.167' AS DateTime), N'M')
GO
INSERT [dbo].[TB_Parceiro] ([parceiroId], [cnpjParceiro], [razaoSocialParceiro], [nomeFantasia], [codigoVan], [nomeContato], [telefoneDDD], [telefoneNumero], [dataHoraCadastro], [tipo]) VALUES (169, N'14.818.551/0001-71', N'CAIRO FORTE FERREIRA', N'CAIRO FORTE FERREIRA', 112, N'CAIRO FORTE FERREIRA', N'85', N'99465500', CAST(N'2013-01-28 16:01:42.790' AS DateTime), N'M')
GO
INSERT [dbo].[TB_Parceiro] ([parceiroId], [cnpjParceiro], [razaoSocialParceiro], [nomeFantasia], [codigoVan], [nomeContato], [telefoneDDD], [telefoneNumero], [dataHoraCadastro], [tipo]) VALUES (170, N'15.311.618/0001-40', N'CICERO EDUARDO CAVALCANTE CALLOU', N'CICERO EDUARDO CAVALCANTE CALLOU', 99, N'CICERO EDUARDO CAVALCANTE CALLOU', N'88', N'99050057', CAST(N'2013-01-28 16:03:34.290' AS DateTime), N'M')
GO
INSERT [dbo].[TB_Parceiro] ([parceiroId], [cnpjParceiro], [razaoSocialParceiro], [nomeFantasia], [codigoVan], [nomeContato], [telefoneDDD], [telefoneNumero], [dataHoraCadastro], [tipo]) VALUES (171, N'15.832.771/0001-12', N'E F DANTAS ME', N'E F DANTAS ME', 99, N'ELDERJAN FERREIRA DANTAS', N'85', N'97408237', CAST(N'2013-01-28 16:05:54.087' AS DateTime), N'M')
GO
INSERT [dbo].[TB_Parceiro] ([parceiroId], [cnpjParceiro], [razaoSocialParceiro], [nomeFantasia], [codigoVan], [nomeContato], [telefoneDDD], [telefoneNumero], [dataHoraCadastro], [tipo]) VALUES (172, N'15.159.238/0001-31', N'MARQUES CRED CONSORCIO LTDA ME', N'MARQUES CRED CONSORCIO LTDA ME', 116, N'JOSE FARIA MARQUES', N'71', N'91715657', CAST(N'2013-01-28 16:08:54.557' AS DateTime), N'M')
GO
INSERT [dbo].[TB_Parceiro] ([parceiroId], [cnpjParceiro], [razaoSocialParceiro], [nomeFantasia], [codigoVan], [nomeContato], [telefoneDDD], [telefoneNumero], [dataHoraCadastro], [tipo]) VALUES (173, N'15.086.426/0001-87', N'JURACI A BESERRA ME', N'JURACI A BESERRA ME', 99, N'JURACI ALVES BESERRA', N'86', N'88182965', CAST(N'2013-01-28 16:14:16.917' AS DateTime), N'M')
GO
INSERT [dbo].[TB_Parceiro] ([parceiroId], [cnpjParceiro], [razaoSocialParceiro], [nomeFantasia], [codigoVan], [nomeContato], [telefoneDDD], [telefoneNumero], [dataHoraCadastro], [tipo]) VALUES (174, N'14.937.557/0001-68', N'R. A. CAPACITACAO PROFISSIONAL EIRELI', N'R. A. CAPACITACAO PROFISSIONAL EIRELI', 99, N'RAFAEL ABREU E SILVA', N'62', N'81210652', CAST(N'2013-01-28 16:18:28.820' AS DateTime), N'M')
GO
INSERT [dbo].[TB_Parceiro] ([parceiroId], [cnpjParceiro], [razaoSocialParceiro], [nomeFantasia], [codigoVan], [nomeContato], [telefoneDDD], [telefoneNumero], [dataHoraCadastro], [tipo]) VALUES (175, N'02.706.127/0001-56', N'SOLINT ASSESSORIA EMPRESARIAL LTDA', N'SOLINT ASSESSORIA EMPRESARIAL LTDA', 99, N'ISAIAS FIGUEIREDO DE ABREU', N'11', N'99934228', CAST(N'2013-01-28 16:21:24.587' AS DateTime), N'M')
GO
INSERT [dbo].[TB_Parceiro] ([parceiroId], [cnpjParceiro], [razaoSocialParceiro], [nomeFantasia], [codigoVan], [nomeContato], [telefoneDDD], [telefoneNumero], [dataHoraCadastro], [tipo]) VALUES (177, N'15.712.984/0001-00', N'J CHALEGRE', N'J CHALEGRE', 99, N'JOSE CHALEGRE', N'44', N'84184123', CAST(N'2013-04-08 13:04:56.110' AS DateTime), N'M')
GO
INSERT [dbo].[TB_Parceiro] ([parceiroId], [cnpjParceiro], [razaoSocialParceiro], [nomeFantasia], [codigoVan], [nomeContato], [telefoneDDD], [telefoneNumero], [dataHoraCadastro], [tipo]) VALUES (178, N'18.101.362/0001-34', N'ARF CONSULTORIA', N'ARF CONSULTORIA ', 99, N'ADERBAL RODRIGUES', N'35', N'98980485', CAST(N'2013-10-17 13:54:50.640' AS DateTime), N'M')
GO
INSERT [dbo].[TB_Parceiro] ([parceiroId], [cnpjParceiro], [razaoSocialParceiro], [nomeFantasia], [codigoVan], [nomeContato], [telefoneDDD], [telefoneNumero], [dataHoraCadastro], [tipo]) VALUES (179, N'18.233.871/0001-10', N'Marcio Gabriel Paulino - ME', N'Marcio Gabriel Paulino - ME', 99, N'Márcio Gabriel', N'34', N'91348945', CAST(N'2014-09-17 14:51:51.190' AS DateTime), N'M')
GO
INSERT [dbo].[TB_Parceiro] ([parceiroId], [cnpjParceiro], [razaoSocialParceiro], [nomeFantasia], [codigoVan], [nomeContato], [telefoneDDD], [telefoneNumero], [dataHoraCadastro], [tipo]) VALUES (180, N'09.519.290/0001-59', N'Atlantis Assessoria e Consultoria em Crédito ME', N'Atlantis Assessoria e Consultoria em Crédito ME', 99, N'Sergio Nazareno', N'38', N'98895008', CAST(N'2015-01-29 13:28:42.057' AS DateTime), N'M')
GO
INSERT [dbo].[TB_Parceiro] ([parceiroId], [cnpjParceiro], [razaoSocialParceiro], [nomeFantasia], [codigoVan], [nomeContato], [telefoneDDD], [telefoneNumero], [dataHoraCadastro], [tipo]) VALUES (181, N'35.638.188/0001-82', N'TESTE A FERREIRA DA SILVA', N'TESTE A FERREIRA DA SILVA', 88, N'TESTE FERREIRA DA SILVA', N'13', N'911111111', CAST(N'2015-01-30 13:18:20.477' AS DateTime), N'M')
GO
INSERT [dbo].[TB_Parceiro] ([parceiroId], [cnpjParceiro], [razaoSocialParceiro], [nomeFantasia], [codigoVan], [nomeContato], [telefoneDDD], [telefoneNumero], [dataHoraCadastro], [tipo]) VALUES (183, N'18.033.011/0001-33', N'Bressan Serviços e Treinamentos Ltda - ME', N'Bressan Serviços e Treinamentos Ltda - ME', 99, N'Antonio Carlos Bressan', N'54', N'81042916', CAST(N'2015-02-24 15:43:54.407' AS DateTime), N'M')
GO
INSERT [dbo].[TB_Parceiro] ([parceiroId], [cnpjParceiro], [razaoSocialParceiro], [nomeFantasia], [codigoVan], [nomeContato], [telefoneDDD], [telefoneNumero], [dataHoraCadastro], [tipo]) VALUES (184, N'21.664.219/0001-65', N'Marcos Aparecido Mazucatto ', N'Marcos Aparecido Mazucatto ', 99, N'Marcos', N'12', N'997779944', CAST(N'2015-09-21 11:04:58.643' AS DateTime), NULL)
GO
INSERT [dbo].[TB_Parceiro] ([parceiroId], [cnpjParceiro], [razaoSocialParceiro], [nomeFantasia], [codigoVan], [nomeContato], [telefoneDDD], [telefoneNumero], [dataHoraCadastro], [tipo]) VALUES (185, N'01.701.201/0001-89', N'Firstdata/HSBC', N'Firstdata/HSBC', 52, N'Wender Santos', N'11', N'36843550', CAST(N'2016-06-16 09:55:39.907' AS DateTime), NULL)
GO
INSERT [dbo].[TB_Parceiro] ([parceiroId], [cnpjParceiro], [razaoSocialParceiro], [nomeFantasia], [codigoVan], [nomeContato], [telefoneDDD], [telefoneNumero], [dataHoraCadastro], [tipo]) VALUES (186, N'01.701.201/0054-90', N'TDS/HSBC', N'TDS/HSBC', 51, N'Wender A. F. Santos', N'11', N'36846072', CAST(N'2016-07-13 15:14:05.433' AS DateTime), NULL)
GO
SET IDENTITY_INSERT [dbo].[TB_Parceiro] OFF
GO
INSERT [dbo].[TB_Perfil] ([perfilId], [nomePerfil]) VALUES (1, N'Perfil 1')
GO
INSERT [dbo].[TB_Perfil] ([perfilId], [nomePerfil]) VALUES (2, N'Perfil 2')
GO
INSERT [dbo].[TB_Perfil] ([perfilId], [nomePerfil]) VALUES (3, N'Administrador')
GO
INSERT [dbo].[TB_Perfil] ([perfilId], [nomePerfil]) VALUES (4, N'Perfil 3')
GO
INSERT [dbo].[TB_Perfil] ([perfilId], [nomePerfil]) VALUES (5, N'Perfil 4')
GO
INSERT [dbo].[TB_Perfil] ([perfilId], [nomePerfil]) VALUES (6, N'Perfil 5')
GO
INSERT [dbo].[TB_Perfil] ([perfilId], [nomePerfil]) VALUES (7, N'Perfil 6')
GO
INSERT [dbo].[TB_Perfil] ([perfilId], [nomePerfil]) VALUES (8, N'Perfil 7')
GO
INSERT [dbo].[TB_Perfil] ([perfilId], [nomePerfil]) VALUES (10, N'Perfil 8')
GO
SET IDENTITY_INSERT [dbo].[TB_ProdutoCategoria] ON 

GO
INSERT [dbo].[TB_ProdutoCategoria] ([id], [nome]) VALUES (1, N'Bebidas')
GO
INSERT [dbo].[TB_ProdutoCategoria] ([id], [nome]) VALUES (3, N'Outros')
GO
INSERT [dbo].[TB_ProdutoCategoria] ([id], [nome]) VALUES (9, N'Salgados')
GO
INSERT [dbo].[TB_ProdutoCategoria] ([id], [nome]) VALUES (2, N'Sorvetes')
GO
SET IDENTITY_INSERT [dbo].[TB_ProdutoCategoria] OFF
GO
INSERT [dbo].[TB_Produtos] ([Codigo], [CategoriaId], [nome], [valor]) VALUES (N'1', 1, N'Brahma Litro', CAST(10.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[TB_Produtos] ([Codigo], [CategoriaId], [nome], [valor]) VALUES (N'2', 1, N'Brahma Lata', CAST(3.50 AS Decimal(18, 2)))
GO
INSERT [dbo].[TB_Produtos] ([Codigo], [CategoriaId], [nome], [valor]) VALUES (N'3', 3, N'Carvão', CAST(9.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[TB_Produtos] ([Codigo], [CategoriaId], [nome], [valor]) VALUES (N'4', 1, N'Coca Cola 2L', CAST(9.50 AS Decimal(18, 2)))
GO
INSERT [dbo].[TB_Produtos] ([Codigo], [CategoriaId], [nome], [valor]) VALUES (N'5', 9, N'Coxinha', CAST(3.50 AS Decimal(18, 2)))
GO
INSERT [dbo].[TB_Produtos] ([Codigo], [CategoriaId], [nome], [valor]) VALUES (N'5010994814403', 1, N'asdadasdasdas', CAST(30.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[TB_Produtos] ([Codigo], [CategoriaId], [nome], [valor]) VALUES (N'6', 9, N'Esfiha ', CAST(3.50 AS Decimal(18, 2)))
GO
INSERT [dbo].[TB_Secao] ([secaoId], [grupo], [nomeSecao], [path], [ordemMenu], [habilitado]) VALUES (3, N'Home', N'Home', N'/Modulos/Default.aspx', 0, 1)
GO
INSERT [dbo].[TB_Secao] ([secaoId], [grupo], [nomeSecao], [path], [ordemMenu], [habilitado]) VALUES (16, N'Administração do Sistema', N'Usuários', N'/Modulos/Usuarios/Listar.aspx', 17, 1)
GO
INSERT [dbo].[TB_Secao] ([secaoId], [grupo], [nomeSecao], [path], [ordemMenu], [habilitado]) VALUES (17, N'Administração do Sistema', N'Perfis', N'/Modulos/Perfis/Listar.aspx', 18, 1)
GO
INSERT [dbo].[TB_Secao] ([secaoId], [grupo], [nomeSecao], [path], [ordemMenu], [habilitado]) VALUES (19, N'Log', N'Log', N'/Modulos/Log/Listar.aspx', 20, 1)
GO
INSERT [dbo].[TB_Secao] ([secaoId], [grupo], [nomeSecao], [path], [ordemMenu], [habilitado]) VALUES (26, N'Cadastros', N'Clientes', N'/Modulos/Clientes/Listar.aspx', 4, 1)
GO
INSERT [dbo].[TB_Secao] ([secaoId], [grupo], [nomeSecao], [path], [ordemMenu], [habilitado]) VALUES (27, N'Cadastros', N'Categorias ', N'/Modulos/Categorias/Listar.aspx', 2, 1)
GO
INSERT [dbo].[TB_Secao] ([secaoId], [grupo], [nomeSecao], [path], [ordemMenu], [habilitado]) VALUES (28, N'Cadastros', N'Produtos', N'/Modulos/Produtos/Listar.aspx', 3, 1)
GO
INSERT [dbo].[TB_Secao] ([secaoId], [grupo], [nomeSecao], [path], [ordemMenu], [habilitado]) VALUES (29, N'Pedidos', N'Pedidos', N'/Modulos/Pedidos/Default.aspx', 1, 1)
GO
INSERT [dbo].[TB_Status] ([statusId], [diasRetorno], [statusBanco], [statusVAN]) VALUES (1, 2, N'AGENDANDO VISITA', N'AGENDANDO VISITA')
GO
INSERT [dbo].[TB_Status] ([statusId], [diasRetorno], [statusBanco], [statusVAN]) VALUES (2, 3, N'AGUARDANDO RESPOSTA DO CLIENTE', N'AGUARDANDO RESPOSTA DO CLIENTE')
GO
INSERT [dbo].[TB_Status] ([statusId], [diasRetorno], [statusBanco], [statusVAN]) VALUES (3, 3, N'ABERTURA DE CONTA', N'ABERTURA DE CONTA')
GO
INSERT [dbo].[TB_Status] ([statusId], [diasRetorno], [statusBanco], [statusVAN]) VALUES (4, 2, N'GERAR / ATUALIZAR CADASTRO', N'ATUALIZANDO CADASTRO')
GO
INSERT [dbo].[TB_Status] ([statusId], [diasRetorno], [statusBanco], [statusVAN]) VALUES (5, 1, N'GERAR CONSULTA DE NEGOCIOS', N'CONSULTANDO DEPTO')
GO
INSERT [dbo].[TB_Status] ([statusId], [diasRetorno], [statusBanco], [statusVAN]) VALUES (6, 1, N'FORMALIZAR CONTRATO', N'FORMALIZAR CONTRATO')
GO
INSERT [dbo].[TB_Status] ([statusId], [diasRetorno], [statusBanco], [statusVAN]) VALUES (7, 2, N'CONTRATO COM CLIENTE', N'CONTRATO COM CLIENTE')
GO
INSERT [dbo].[TB_Status] ([statusId], [diasRetorno], [statusBanco], [statusVAN]) VALUES (8, 3, N'CONTRATO ENVIADO AO DEPTO', N'CONTRATO ENVIADO AO DEPTO')
GO
INSERT [dbo].[TB_Status] ([statusId], [diasRetorno], [statusBanco], [statusVAN]) VALUES (9, 3, N'CONSULTAR OUTROS RAMOS', N'CONSULTANDO DEPTO')
GO
INSERT [dbo].[TB_Status] ([statusId], [diasRetorno], [statusBanco], [statusVAN]) VALUES (10, 0, N'DESENQUADRADO - RESTRICAO', N'DESENQUADRADO ')
GO
INSERT [dbo].[TB_Status] ([statusId], [diasRetorno], [statusBanco], [statusVAN]) VALUES (11, 0, N'CLIENTE DESISTIU', N'CLIENTE DESISTIU')
GO
INSERT [dbo].[TB_Status] ([statusId], [diasRetorno], [statusBanco], [statusVAN]) VALUES (12, 0, N'NEGADO PELA AGENCIA', N'DESENQUADRADO')
GO
INSERT [dbo].[TB_Status] ([statusId], [diasRetorno], [statusBanco], [statusVAN]) VALUES (13, 0, N'DESENQUADRADO - FUNDACAO', N'DESENQUADRADO')
GO
INSERT [dbo].[TB_Status] ([statusId], [diasRetorno], [statusBanco], [statusVAN]) VALUES (14, 0, N'SEM ESPACO FISICO / ESTRUTURA', N'DESENQUADRADO')
GO
INSERT [dbo].[TB_Status] ([statusId], [diasRetorno], [statusBanco], [statusVAN]) VALUES (15, 0, N'DESENQUADRADO - RAMO DE ATIVIDADE', N'DESENQUADRADO')
GO
INSERT [dbo].[TB_Status] ([statusId], [diasRetorno], [statusBanco], [statusVAN]) VALUES (16, 0, N'DESENQUADRADO - FATURAMENTO', N'DESENQUADRADO')
GO
INSERT [dbo].[TB_Status] ([statusId], [diasRetorno], [statusBanco], [statusVAN]) VALUES (17, 0, N'PROSPECTADO POR OUTRA VAN', N'PROSPECTADO POR OUTRA VAN')
GO
INSERT [dbo].[TB_Status] ([statusId], [diasRetorno], [statusBanco], [statusVAN]) VALUES (18, 0, N'CLIENTE ATUA COMO BRADESCO EXPRESSO', N'CLIENTE ATUA COMO BRADESCO EXPRESSO')
GO
INSERT [dbo].[TB_Status] ([statusId], [diasRetorno], [statusBanco], [statusVAN]) VALUES (19, 0, N'CORRESPONDENTE DE OUTRA INSTITUICAO', N'CORRESPONDENTE DE OUTRA INSTITUICAO')
GO
INSERT [dbo].[TB_Status] ([statusId], [diasRetorno], [statusBanco], [statusVAN]) VALUES (20, 0, N'ANALISE DO DEPTO', N'ANALISE DO DEPTO')
GO
INSERT [dbo].[TB_Status] ([statusId], [diasRetorno], [statusBanco], [statusVAN]) VALUES (21, 3, N'CONTRATO DEVOLVIDO PARA REGULARIZACAO', N'CONTRATO DEVOLVIDO PARA REGULARIZACAO')
GO
INSERT [dbo].[TB_Status] ([statusId], [diasRetorno], [statusBanco], [statusVAN]) VALUES (22, 0, N'IMPLANTADO', N'IMPLANTADO')
GO
INSERT [dbo].[TB_Status] ([statusId], [diasRetorno], [statusBanco], [statusVAN]) VALUES (23, 0, N'INDEFINIDO', N'INDEFINIDO')
GO
INSERT [dbo].[TB_Status] ([statusId], [diasRetorno], [statusBanco], [statusVAN]) VALUES (24, 0, N'RECEPÇÃO DO CONTRATO/TERMO PELO DEPTO', N'RECEPÇÃO DO CONTRATO/TERMO PELO DEPTO')
GO
INSERT [dbo].[TB_Status] ([statusId], [diasRetorno], [statusBanco], [statusVAN]) VALUES (25, 0, N'AGUARDANDO REGULARIZAÇÃO DA AGÊNCIA', N'AGUARDANDO REGULARIZAÇÃO DA AGÊNCIA')
GO
INSERT [dbo].[TB_Status] ([statusId], [diasRetorno], [statusBanco], [statusVAN]) VALUES (34, 0, N'AUSÊNCIA TERMO DE ADESÃO/AÇÃO CPFL TDS 01/2016', N'INDEFINIDO')
GO
INSERT [dbo].[TB_Status] ([statusId], [diasRetorno], [statusBanco], [statusVAN]) VALUES (35, 0, N'AUSÊNCIA TERMO DE ADESÃO Firstdata/HSBC', N'INDEFINIDO')
GO
INSERT [dbo].[TB_Status] ([statusId], [diasRetorno], [statusBanco], [statusVAN]) VALUES (36, 0, N'AUSÊNCIA TERMO DE ADESÃO TDS/HSBC', N'INDEFINIDO')
GO
SET IDENTITY_INSERT [dbo].[TB_Usuario] ON 

GO
INSERT [dbo].[TB_Usuario] ([usuarioId], [perfilId], [usuarioStatusId], [parceiroId], [dataUltimoAcesso], [nomeUsuario], [emailUsuario], [login], [senha], [agencia]) VALUES (14038, 3, 1, NULL, CAST(N'2018-01-08 22:18:35.533' AS DateTime), N'Administrador Sistema', N'tiago3.yoshioka@solucoes.wf', N'admin', N'jnûsô', N'0')
GO
SET IDENTITY_INSERT [dbo].[TB_Usuario] OFF
GO
INSERT [dbo].[TB_Usuario_Status] ([usuarioStatusId], [status]) VALUES (1, N'Ativo')
GO
INSERT [dbo].[TB_Usuario_Status] ([usuarioStatusId], [status]) VALUES (2, N'Bloqueado')
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[TB_Acesso_Funcionalidade]') AND name = N'IX_TB_Acesso_Funcionalidade')
CREATE NONCLUSTERED INDEX [IX_TB_Acesso_Funcionalidade] ON [dbo].[TB_Acesso_Funcionalidade]
(
	[perfilId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[TB_Clientes]') AND name = N'UQ_TB_CLIENTES_NOME')
ALTER TABLE [dbo].[TB_Clientes] ADD  CONSTRAINT [UQ_TB_CLIENTES_NOME] UNIQUE NONCLUSTERED 
(
	[nome] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[TB_Parceiro]') AND name = N'UQ_TB_Parceiro_cnpjParceiro')
ALTER TABLE [dbo].[TB_Parceiro] ADD  CONSTRAINT [UQ_TB_Parceiro_cnpjParceiro] UNIQUE NONCLUSTERED 
(
	[cnpjParceiro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[TB_ProdutoCategoria]') AND name = N'UQ_TB_ProdutoCategoria_NOME')
ALTER TABLE [dbo].[TB_ProdutoCategoria] ADD  CONSTRAINT [UQ_TB_ProdutoCategoria_NOME] UNIQUE NONCLUSTERED 
(
	[nome] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[TB_Produtos]') AND name = N'UQ_TB_Produtos_Nome')
ALTER TABLE [dbo].[TB_Produtos] ADD  CONSTRAINT [UQ_TB_Produtos_Nome] UNIQUE NONCLUSTERED 
(
	[nome] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[TB_Usuario]') AND name = N'IX_TB_Usuario')
CREATE UNIQUE NONCLUSTERED INDEX [IX_TB_Usuario] ON [dbo].[TB_Usuario]
(
	[login] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__TB_Log__DataLog__7849DB76]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[TB_Log] ADD  CONSTRAINT [DF__TB_Log__DataLog__7849DB76]  DEFAULT (getdate()) FOR [DataLog]
END

GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TB_Acesso_TB_Perfil]') AND parent_object_id = OBJECT_ID(N'[dbo].[TB_Acesso]'))
ALTER TABLE [dbo].[TB_Acesso]  WITH CHECK ADD  CONSTRAINT [FK_TB_Acesso_TB_Perfil] FOREIGN KEY([perfilId])
REFERENCES [dbo].[TB_Perfil] ([perfilId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TB_Acesso_TB_Perfil]') AND parent_object_id = OBJECT_ID(N'[dbo].[TB_Acesso]'))
ALTER TABLE [dbo].[TB_Acesso] CHECK CONSTRAINT [FK_TB_Acesso_TB_Perfil]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TB_Acesso_TB_Secao]') AND parent_object_id = OBJECT_ID(N'[dbo].[TB_Acesso]'))
ALTER TABLE [dbo].[TB_Acesso]  WITH CHECK ADD  CONSTRAINT [FK_TB_Acesso_TB_Secao] FOREIGN KEY([secaoId])
REFERENCES [dbo].[TB_Secao] ([secaoId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TB_Acesso_TB_Secao]') AND parent_object_id = OBJECT_ID(N'[dbo].[TB_Acesso]'))
ALTER TABLE [dbo].[TB_Acesso] CHECK CONSTRAINT [FK_TB_Acesso_TB_Secao]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TB_Acesso_Funcionalidade_TB_Perfil]') AND parent_object_id = OBJECT_ID(N'[dbo].[TB_Acesso_Funcionalidade]'))
ALTER TABLE [dbo].[TB_Acesso_Funcionalidade]  WITH CHECK ADD  CONSTRAINT [FK_TB_Acesso_Funcionalidade_TB_Perfil] FOREIGN KEY([perfilId])
REFERENCES [dbo].[TB_Perfil] ([perfilId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TB_Acesso_Funcionalidade_TB_Perfil]') AND parent_object_id = OBJECT_ID(N'[dbo].[TB_Acesso_Funcionalidade]'))
ALTER TABLE [dbo].[TB_Acesso_Funcionalidade] CHECK CONSTRAINT [FK_TB_Acesso_Funcionalidade_TB_Perfil]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TB_Acesso_Funcionalidade_TB_Secao]') AND parent_object_id = OBJECT_ID(N'[dbo].[TB_Acesso_Funcionalidade]'))
ALTER TABLE [dbo].[TB_Acesso_Funcionalidade]  WITH CHECK ADD  CONSTRAINT [FK_TB_Acesso_Funcionalidade_TB_Secao] FOREIGN KEY([secaoId])
REFERENCES [dbo].[TB_Secao] ([secaoId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TB_Acesso_Funcionalidade_TB_Secao]') AND parent_object_id = OBJECT_ID(N'[dbo].[TB_Acesso_Funcionalidade]'))
ALTER TABLE [dbo].[TB_Acesso_Funcionalidade] CHECK CONSTRAINT [FK_TB_Acesso_Funcionalidade_TB_Secao]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TB_Acesso_Funcionalidade_TB_Secao_Funcionalidade]') AND parent_object_id = OBJECT_ID(N'[dbo].[TB_Acesso_Funcionalidade]'))
ALTER TABLE [dbo].[TB_Acesso_Funcionalidade]  WITH CHECK ADD  CONSTRAINT [FK_TB_Acesso_Funcionalidade_TB_Secao_Funcionalidade] FOREIGN KEY([secaoFuncionalidadeId])
REFERENCES [dbo].[TB_Secao_Funcionalidade] ([secaoFuncionalidadeId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TB_Acesso_Funcionalidade_TB_Secao_Funcionalidade]') AND parent_object_id = OBJECT_ID(N'[dbo].[TB_Acesso_Funcionalidade]'))
ALTER TABLE [dbo].[TB_Acesso_Funcionalidade] CHECK CONSTRAINT [FK_TB_Acesso_Funcionalidade_TB_Secao_Funcionalidade]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TB_Log_TB_Usuario]') AND parent_object_id = OBJECT_ID(N'[dbo].[TB_Log]'))
ALTER TABLE [dbo].[TB_Log]  WITH CHECK ADD  CONSTRAINT [FK_TB_Log_TB_Usuario] FOREIGN KEY([usuarioId])
REFERENCES [dbo].[TB_Usuario] ([usuarioId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TB_Log_TB_Usuario]') AND parent_object_id = OBJECT_ID(N'[dbo].[TB_Log]'))
ALTER TABLE [dbo].[TB_Log] CHECK CONSTRAINT [FK_TB_Log_TB_Usuario]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TB_Produtos_TB_ProdutoCategoria]') AND parent_object_id = OBJECT_ID(N'[dbo].[TB_Produtos]'))
ALTER TABLE [dbo].[TB_Produtos]  WITH CHECK ADD  CONSTRAINT [FK_TB_Produtos_TB_ProdutoCategoria] FOREIGN KEY([CategoriaId])
REFERENCES [dbo].[TB_ProdutoCategoria] ([id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TB_Produtos_TB_ProdutoCategoria]') AND parent_object_id = OBJECT_ID(N'[dbo].[TB_Produtos]'))
ALTER TABLE [dbo].[TB_Produtos] CHECK CONSTRAINT [FK_TB_Produtos_TB_ProdutoCategoria]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TB_Secao_Funcionalidade_TB_Secao]') AND parent_object_id = OBJECT_ID(N'[dbo].[TB_Secao_Funcionalidade]'))
ALTER TABLE [dbo].[TB_Secao_Funcionalidade]  WITH CHECK ADD  CONSTRAINT [FK_TB_Secao_Funcionalidade_TB_Secao] FOREIGN KEY([secaoId])
REFERENCES [dbo].[TB_Secao] ([secaoId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TB_Secao_Funcionalidade_TB_Secao]') AND parent_object_id = OBJECT_ID(N'[dbo].[TB_Secao_Funcionalidade]'))
ALTER TABLE [dbo].[TB_Secao_Funcionalidade] CHECK CONSTRAINT [FK_TB_Secao_Funcionalidade_TB_Secao]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TB_Usuario_TB_Parceiro]') AND parent_object_id = OBJECT_ID(N'[dbo].[TB_Usuario]'))
ALTER TABLE [dbo].[TB_Usuario]  WITH CHECK ADD  CONSTRAINT [FK_TB_Usuario_TB_Parceiro] FOREIGN KEY([parceiroId])
REFERENCES [dbo].[TB_Parceiro] ([parceiroId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TB_Usuario_TB_Parceiro]') AND parent_object_id = OBJECT_ID(N'[dbo].[TB_Usuario]'))
ALTER TABLE [dbo].[TB_Usuario] CHECK CONSTRAINT [FK_TB_Usuario_TB_Parceiro]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TB_Usuario_TB_Perfil]') AND parent_object_id = OBJECT_ID(N'[dbo].[TB_Usuario]'))
ALTER TABLE [dbo].[TB_Usuario]  WITH CHECK ADD  CONSTRAINT [FK_TB_Usuario_TB_Perfil] FOREIGN KEY([perfilId])
REFERENCES [dbo].[TB_Perfil] ([perfilId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TB_Usuario_TB_Perfil]') AND parent_object_id = OBJECT_ID(N'[dbo].[TB_Usuario]'))
ALTER TABLE [dbo].[TB_Usuario] CHECK CONSTRAINT [FK_TB_Usuario_TB_Perfil]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TB_Usuario_TB_Usuario_Status]') AND parent_object_id = OBJECT_ID(N'[dbo].[TB_Usuario]'))
ALTER TABLE [dbo].[TB_Usuario]  WITH CHECK ADD  CONSTRAINT [FK_TB_Usuario_TB_Usuario_Status] FOREIGN KEY([usuarioStatusId])
REFERENCES [dbo].[TB_Usuario_Status] ([usuarioStatusId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TB_Usuario_TB_Usuario_Status]') AND parent_object_id = OBJECT_ID(N'[dbo].[TB_Usuario]'))
ALTER TABLE [dbo].[TB_Usuario] CHECK CONSTRAINT [FK_TB_Usuario_TB_Usuario_Status]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SPE_D_ACESSO_FUNCIONALIDADE]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[SPE_D_ACESSO_FUNCIONALIDADE] AS' 
END
GO
ALTER PROCEDURE [dbo].[SPE_D_ACESSO_FUNCIONALIDADE]
(
	 @ID INT
)
AS
 
DELETE from TB_Acesso_Funcionalidade WHERE perfilId = @ID



GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SPE_D_CATEGORIA]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[SPE_D_CATEGORIA] AS' 
END
GO
ALTER PROCEDURE [dbo].[SPE_D_CATEGORIA]
(
	 @ID INT
)
AS
 
 DELETE TB_ProdutoCategoria WHERE id = @ID
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SPE_D_CLIENTE]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[SPE_D_CLIENTE] AS' 
END
GO
ALTER PROCEDURE [dbo].[SPE_D_CLIENTE]
(
	 @ID INT
)
AS
 
 DELETE TB_CLIENTEs WHERE id = @ID
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SPE_D_PRODUTO]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[SPE_D_PRODUTO] AS' 
END
GO
ALTER PROCEDURE [dbo].[SPE_D_PRODUTO]
(
	 @CODIGO VARCHAR(200)
)
AS
 
 DELETE TB_PRODUTOS WHERE CODIGO = @CODIGO

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SPE_D_USUARIO]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[SPE_D_USUARIO] AS' 
END
GO

ALTER PROCEDURE [dbo].[SPE_D_USUARIO]
(
	 @ID INT
)
AS
 
 DELETE TB_USUARIO WHERE USUARIOID = @ID



GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SPE_I_ACESSO_FUNCIONALIDADE]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[SPE_I_ACESSO_FUNCIONALIDADE] AS' 
END
GO
ALTER PROCEDURE [dbo].[SPE_I_ACESSO_FUNCIONALIDADE]
(
	@perfilId				INT,
	@secaoId				INT,
	@secaoFuncionalidadeId	INT
)
AS

INSERT INTO TB_Acesso_Funcionalidade
(
	perfilId,
	secaoId,
	secaoFuncionalidadeId
)
VALUES
(
	@perfilId,
	@secaoId,
	@secaoFuncionalidadeId
)



GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SPE_I_CATEGORIA]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[SPE_I_CATEGORIA] AS' 
END
GO
ALTER PROCEDURE [dbo].[SPE_I_CATEGORIA]
(	 
	@NOME		VARCHAR(200)
)
AS

INSERT INTO TB_ProdutoCategoria (NOME) 
VALUES (@NOME)



GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SPE_I_CLIENTE]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[SPE_I_CLIENTE] AS' 
END
GO
ALTER PROCEDURE [dbo].[SPE_I_CLIENTE]
(	 
	@NOME		VARCHAR(200)
	,@TELEFONE		VARCHAR(20)
)
AS

INSERT INTO TB_CLIENTES (NOME, TEL) 
VALUES (@NOME ,@TELEFONE)



GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SPE_I_LOG]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[SPE_I_LOG] AS' 
END
GO
ALTER PROCEDURE [dbo].[SPE_I_LOG]
(
	 @LOG_ID		INT = NULL OUTPUT,
	 @MENSAGEM		VARCHAR(MAX) = NULL,
	 @TIPO			INT = NULL,
	 @USUARIOID		INT = NULL
)
AS
 
 INSERT INTO TB_LOG
 (
	 MSGLOG
	,DATALOG
	,TIPO
	,USUARIOID
 )
 VALUES
 (
    @MENSAGEM	
   ,GETDATE()	
   ,@TIPO		
   ,@USUARIOID	
)

 SELECT @LOG_ID = SCOPE_IDENTITY();

 RETURN @@ERROR




GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SPE_I_PRODUTO]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[SPE_I_PRODUTO] AS' 
END
GO

ALTER PROCEDURE [dbo].[SPE_I_PRODUTO]
(	 
	@CODIGO		VARCHAR(200)
	,@CATEGORIAID		INT	
	,@NOMEPRODUTO		VARCHAR(200)
	,@VALOR				DECIMAL(18,2)
)
AS

INSERT INTO TB_PRODUTOS (CODIGO,CATEGORIAID, NOME, VALOR) 
VALUES   
	(
		@CODIGO
		,@CATEGORIAID
		,@NOMEPRODUTO	
		,@VALOR
	)
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SPE_I_USUARIO]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[SPE_I_USUARIO] AS' 
END
GO
ALTER PROCEDURE [dbo].[SPE_I_USUARIO]
(	 
	 @PERFILID			INT	
	,@PARCEIROID		INT	= NULL
	,@USUARIOSTATUSID	INT	
	,@NOMEUSUARIO		VARCHAR(400)
	,@EMAILUSUARIO		VARCHAR(400)
	,@LOGIN				NVARCHAR(100)
	,@SENHA				NVARCHAR(100)
)
AS

INSERT INTO TB_USUARIO (PERFILID, USUARIOSTATUSID, PARCEIROID, NOMEUSUARIO, EMAILUSUARIO, [LOGIN], SENHA, AGENCIA) 
VALUES   
	(
		 @PERFILID
		,@USUARIOSTATUSID
		,@PARCEIROID	
		,@NOMEUSUARIO
		,@EMAILUSUARIO
		,@LOGIN
		,@SENHA
		,'0'
	)



GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SPE_I_USUARIO_CHECKLIST]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[SPE_I_USUARIO_CHECKLIST] AS' 
END
GO
ALTER PROCEDURE [dbo].[SPE_I_USUARIO_CHECKLIST]
(	 
	 @NOMEUSUARIO		VARCHAR(400)
	,@EMAILUSUARIO		VARCHAR(400)
	,@LOGIN				VARCHAR(100)
	,@SENHA				NVARCHAR(100)
	,@AGENCIA			VARCHAR(5)
)
AS

INSERT INTO TB_USUARIO (PERFILID, USUARIOSTATUSID, PARCEIROID, NOMEUSUARIO, EMAILUSUARIO, [LOGIN], SENHA, AGENCIA) 
VALUES   
	(
		 8
		,1
		,NULL	
		,@NOMEUSUARIO
		,@EMAILUSUARIO
		,@LOGIN
		,@SENHA
		,@AGENCIA
	)


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SPE_L_ACESSO_FUNCIONALIDADE]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[SPE_L_ACESSO_FUNCIONALIDADE] AS' 
END
GO
ALTER PROCEDURE [dbo].[SPE_L_ACESSO_FUNCIONALIDADE]
(
	@USUARIOID INT,
	@SECAID INT,
	@SECAOFUNCIONALIDADEID INT
)
AS
SELECT DISTINCT
	AF.PERFILID,
	AF.SECAOID,
	AF.SECAOFUNCIONALIDADEID
FROM 
	TB_ACESSO_FUNCIONALIDADE AF
INNER JOIN TB_PERFIL P ON P.PERFILID = AF.PERFILID
INNER JOIN TB_USUARIO U ON U.PERFILID = P.PERFILID
WHERE
	U.USUARIOID = @USUARIOID AND
	AF.SECAOID = @SECAID AND
	AF.SECAOFUNCIONALIDADEID = @SECAOFUNCIONALIDADEID

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SPE_L_CATEGORIA]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[SPE_L_CATEGORIA] AS' 
END
GO
ALTER PROCEDURE [dbo].[SPE_L_CATEGORIA]
(
	@NOMECATEGORIA		NVARCHAR(200) = NULL,
	@IDCATEGORIA			INT = NULL
)
AS
	
SELECT 	
	id,
	nome
FROM   
	TB_ProdutoCategoria
WHERE
	(@NOMECATEGORIA		IS NULL	OR NOME					LIKE '%' + @NOMECATEGORIA + '%') AND
	(@IDCATEGORIA			IS NULL	OR ID			= @IDCATEGORIA) 
order by
	nome




GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SPE_L_CLIENTE]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[SPE_L_CLIENTE] AS' 
END
GO
ALTER PROCEDURE [dbo].[SPE_L_CLIENTE]
(
	@NOMECLIENTE		NVARCHAR(200) = NULL,
	@IDCLIENTE			INT = NULL
)
AS
	
SELECT 	
	id,
	nome,
	tel
FROM   
	TB_Clientes
WHERE
	(@NOMECLIENTE		IS NULL	OR NOME					LIKE '%' + @NOMECLIENTE + '%') AND
	(@IDCLIENTE			IS NULL	OR ID			= @IDCLIENTE) 
order by
	nome




GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SPE_L_LOG]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[SPE_L_LOG] AS' 
END
GO
ALTER PROCEDURE [dbo].[SPE_L_LOG]
(
	@MsgLog varchar(200) = null,
	@DataLogInicio datetime = null,
	@DataLogFim datetime = null,
	@Tipo int = null,
	@usuarioId int = null,
	@usuarioNome varchar(200) = null
)
AS
	
SELECT top 300
	L.Id,
	L.MsgLog,
	L.DataLog,
	L.Tipo,
	L.usuarioId,
	U.login
FROM   
	TB_Log L
LEFT JOIN TB_Usuario U ON U.usuarioId = L.usuarioId
WHERE
	(@MsgLog			IS NULL	OR MsgLog	LIKE '%' + @MsgLog + '%') AND
	(@DataLogInicio		IS NULL	OR Convert(varchar(10), DataLog,120) 	>= @DataLogInicio)	AND
	(@DataLogFim		IS NULL	OR Convert(varchar(10), DataLog,120)	<= 	@DataLogFim) AND
	(@Tipo				IS NULL	OR Tipo = @Tipo) AND
	(@usuarioId			IS NULL	OR L.usuarioId = @usuarioId) AND
	(@usuarioNome		IS NULL	OR (U.login	LIKE '%' + @usuarioNome + '%' OR 
									U.nomeUsuario LIKE '%' + @usuarioNome + '%'))
order by DataLog desc


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SPE_L_PERFIL]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[SPE_L_PERFIL] AS' 
END
GO
ALTER PROCEDURE [dbo].[SPE_L_PERFIL] 
(
	@ID INT = NULL
)
AS
	
SELECT 	
	PERFILID,
	NOMEPERFIL
FROM   
	TB_PERFIL
WHERE 
	@ID IS NULL OR PERFILID = @ID







GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SPE_L_PRODUTO]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[SPE_L_PRODUTO] AS' 
END
GO

ALTER PROCEDURE [dbo].[SPE_L_PRODUTO]
(
	@NOMEPRODUTO		NVARCHAR(200) = NULL,
	@IDCATEGORIA		INT = NULL,
	@CODIGO				VARCHAR(200) = NULL
)
AS
	
SELECT 	
	P.CODIGO,
	P.CATEGORIAID,
	PC.NOME AS 'NOMECATEGORIA',
	P.NOME,
	P.VALOR
FROM   
	TB_PRODUTOS P
	INNER JOIN TB_PRODUTOCATEGORIA PC ON PC.ID = P.CATEGORIAID
WHERE
	(@CODIGO		IS NULL OR P.CODIGO = @CODIGO) AND
	(@NOMEPRODUTO	IS NULL	OR P.NOME	LIKE '%' + @NOMEPRODUTO + '%') AND
	(@IDCATEGORIA	IS NULL	OR P.CATEGORIAID = @IDCATEGORIA)
ORDER BY
	P.NOME
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SPE_L_SECAO_FUNCIONALIDADE_PERFIL]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[SPE_L_SECAO_FUNCIONALIDADE_PERFIL] AS' 
END
GO
--select * from TB_Secao
--select * from TB_Secao_Funcionalidade
--select * from TB_Acesso

ALTER PROCEDURE [dbo].[SPE_L_SECAO_FUNCIONALIDADE_PERFIL] --3
(
	@PERFILID		INT = NULL
)
AS
	
SELECT 	
	SECAOFUNCIONALIDADEID,
	SECAOID,
	NOMESECAOFUNCIONALIDADE,
	ORDEMMENU,
	CASE ISNULL((	SELECT AF.PERFILID 
					FROM [TB_ACESSO_FUNCIONALIDADE] AF
					WHERE 
					F.SECAOID = AF.SECAOID AND
					F.SECAOFUNCIONALIDADEID = AF.SECAOFUNCIONALIDADEID AND
					AF.PERFILID = @PERFILID), 0) WHEN 0 THEN 0 ELSE 1 END AS SELECIONADO 
FROM   
	TB_SECAO_FUNCIONALIDADE F
ORDER BY
	ORDEMMENU




GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SPE_L_SECAO_PERFIL]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[SPE_L_SECAO_PERFIL] AS' 
END
GO
ALTER PROCEDURE [dbo].[SPE_L_SECAO_PERFIL]
(
	@perfilId		INT = NULL
)
AS
	
SELECT 	
	secaoId,
	grupo,
	nomeSecao,
	[path],
	ordemMenu,
	CASE IsNull((	SELECT [TB_Acesso].perfilid 
					FROM [TB_Acesso] 
					WHERE [TB_Secao].secaoid = [TB_Acesso].secaoid 
						   and [TB_Acesso].perfilid = @perfilId), 0) WHEN 0 THEN 0 ELSE 1 END as selecionado,
	habilitado
FROM   
	TB_Secao
where
	habilitado = 1
order by
	ordemMenu




GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SPE_L_SECAO_PERFIL_MENU]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[SPE_L_SECAO_PERFIL_MENU] AS' 
END
GO
/*
[SPE_L_SECAO_PERFIL_MENU] 3
*/
ALTER PROCEDURE [dbo].[SPE_L_SECAO_PERFIL_MENU] --3
(
	@PERFILID		INT = NULL
)
AS
	
SELECT 	
	S.SECAOID,
	S.GRUPO,
	S.NOMESECAO,
	S.[PATH],
	S.ORDEMMENU,
	1 'SELECIONADO',
	S.HABILITADO
FROM   
	TB_SECAO S
WHERE 
	(S.SECAOID IN (SELECT A.SECAOID FROM TB_ACESSO A WHERE A.SECAOID = S.SECAOID AND A.PERFILID = @PERFILID)
	OR HABILITADO = 0)
ORDER BY
	ORDEMMENU




GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SPE_L_STATUS]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[SPE_L_STATUS] AS' 
END
GO
ALTER PROCEDURE [dbo].[SPE_L_STATUS]
(
	@statusId int = null,
	@diasRetorno int = null,
	@statusBanco nvarchar(50) = null,
	@statusVAN nvarchar(50) = null
)
AS
	SET NOCOUNT ON

	Select 	
		statusId,
		diasRetorno,
		statusBanco,
		statusVAN
	FROM   
		TB_Status
	WHERE  (statusId = @statusId or @statusId is null)
	 AND  (diasRetorno = @diasRetorno or @diasRetorno is null)
	 AND  (statusBanco = @statusBanco or @statusBanco is null)
	 AND  (statusVAN = @statusVAN or @statusVAN is null)
	ORDER BY statusBanco

	RETURN @@Error


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SPE_L_STATUS_USUARIO]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[SPE_L_STATUS_USUARIO] AS' 
END
GO

ALTER PROCEDURE [dbo].[SPE_L_STATUS_USUARIO]
AS
 
SELECT 
	USUARIOSTATUSID,
	STATUS
FROM 
	TB_USUARIO_STATUS



GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SPE_L_USUARIO]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[SPE_L_USUARIO] AS' 
END
GO
ALTER PROCEDURE [dbo].[SPE_L_USUARIO]
(
	@NOMEUSUARIO		NVARCHAR(200) = NULL,
	@EMAILUSUARIO		NVARCHAR(200) = NULL,
	@LOGIN				NVARCHAR(200) = NULL,
	@PERFILID			INT = NULL,
	@USUARIOSTATUSID	INT = NULL,
	@PARCEIROID			INT = NULL,
	@AGENCIA			INT = NULL
)
AS
	
SELECT 	
	USUARIOID,
	TB_USUARIO.PERFILID,
	NOMEPERFIL,
	TB_USUARIO.USUARIOSTATUSID,
	TB_USUARIO_STATUS.STATUS,
	TB_USUARIO.PARCEIROID,
	NOMEFANTASIA,
	DATAULTIMOACESSO,
	NOMEUSUARIO,
	EMAILUSUARIO,
	[LOGIN],
	SENHA,
	AGENCIA
FROM   
	TB_USUARIO INNER JOIN TB_USUARIO_STATUS ON TB_USUARIO.USUARIOSTATUSID = TB_USUARIO_STATUS.USUARIOSTATUSID
			   INNER JOIN TB_PERFIL ON TB_USUARIO.PERFILID = TB_PERFIL.PERFILID
			   LEFT JOIN TB_PARCEIRO ON TB_USUARIO.PARCEIROID = TB_PARCEIRO.PARCEIROID
WHERE
	(@NOMEUSUARIO		IS NULL	OR NOMEUSUARIO					LIKE '%' + @NOMEUSUARIO + '%') AND
	(@EMAILUSUARIO		IS NULL	OR EMAILUSUARIO					LIKE '%' + @EMAILUSUARIO + '%') AND
	(@LOGIN				IS NULL	OR [LOGIN]						LIKE '%' + @LOGIN + '%') AND
	(@PERFILID			IS NULL	OR TB_USUARIO.PERFILID			= @PERFILID) AND
	(@USUARIOSTATUSID	IS NULL	OR TB_USUARIO.USUARIOSTATUSID	= @USUARIOSTATUSID) AND	
	(@PARCEIROID		IS NULL	OR TB_USUARIO.PARCEIROID    	= @PARCEIROID) AND
	(@AGENCIA   		IS NULL	OR AGENCIA    					= @AGENCIA) 	
order by
	NOMEUSUARIO




GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SPE_L_USUARIO_CHECKLIST]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[SPE_L_USUARIO_CHECKLIST] AS' 
END
GO
ALTER PROCEDURE [dbo].[SPE_L_USUARIO_CHECKLIST]
(
	@NOMEUSUARIO		VARCHAR(200) = NULL
	,@EMAILUSUARIO		VARCHAR(200) = NULL
	,@AGENCIA			INT   = NULL
)
AS
	
SELECT 	
	USUARIOID,
	NOMEUSUARIO,
	EMAILUSUARIO,
	[LOGIN],
	SENHA,
	AGENCIA
FROM   
	TB_USUARIO 
WHERE
	AGENCIA <> 0 AND
	(@AGENCIA			IS NULL	OR AGENCIA		= @AGENCIA) AND
	(@NOMEUSUARIO		IS NULL	OR NOMEUSUARIO	LIKE '%' + @NOMEUSUARIO + '%') AND
	(@EMAILUSUARIO		IS NULL	OR EMAILUSUARIO	LIKE '%' + @EMAILUSUARIO + '%') 
ORDER BY
	NOMEUSUARIO




GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SPE_L_USUARIO_CHECKLIST_ID]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[SPE_L_USUARIO_CHECKLIST_ID] AS' 
END
GO
ALTER PROCEDURE [dbo].[SPE_L_USUARIO_CHECKLIST_ID]
(
	@ID INT
)
AS
	
SELECT 	
	USUARIOID,
	NOMEUSUARIO,
	EMAILUSUARIO,
	[LOGIN],
	SENHA,
	AGENCIA
FROM   
	TB_USUARIO 
WHERE
	 USUARIOID = @ID 

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SPE_L_USUARIO_CHECKLIST_LOGIN]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[SPE_L_USUARIO_CHECKLIST_LOGIN] AS' 
END
GO
ALTER PROCEDURE [dbo].[SPE_L_USUARIO_CHECKLIST_LOGIN]
(
	@LOGIN NVARCHAR(50) = NULL
)
AS
	
SELECT 	
	USUARIOID,
	NOMEUSUARIO,
	EMAILUSUARIO,
	[LOGIN],
	SENHA,
	AGENCIA
FROM   
	TB_USUARIO
WHERE
	 [LOGIN] = @LOGIN AND
	 AGENCIA <> 0






GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SPE_L_USUARIO_EMAIL]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[SPE_L_USUARIO_EMAIL] AS' 
END
GO
ALTER PROCEDURE [dbo].[SPE_L_USUARIO_EMAIL]
(	
	@EMAIL NVARCHAR(300) = NULL
)
AS
	
SELECT 	
	USUARIOID,
	TB_USUARIO.PERFILID,
	TB_USUARIO.USUARIOSTATUSID,
	TB_USUARIO_STATUS.STATUS,
	TB_USUARIO.PARCEIROID,
	NOMEFANTASIA,
	DATAULTIMOACESSO,
	NOMEUSUARIO,
	NOMEPERFIL,
	EMAILUSUARIO,
	[LOGIN],
	SENHA,
	AGENCIA
FROM   
	TB_USUARIO INNER JOIN TB_USUARIO_STATUS ON TB_USUARIO.USUARIOSTATUSID = TB_USUARIO_STATUS.USUARIOSTATUSID
	           INNER JOIN TB_PERFIL ON TB_USUARIO.PERFILID = TB_PERFIL.PERFILID
			   LEFT JOIN TB_PARCEIRO ON TB_USUARIO.PARCEIROID = TB_PARCEIRO.PARCEIROID
WHERE
	 [EMAILUSUARIO] = @EMAIL 

RETURN @@ERROR





GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SPE_L_USUARIO_ID]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[SPE_L_USUARIO_ID] AS' 
END
GO
ALTER PROCEDURE [dbo].[SPE_L_USUARIO_ID]
(
	@ID INT
)
AS
	
SELECT 	
	USUARIOID,
	TB_USUARIO.PERFILID,
	NOMEPERFIL,
	TB_USUARIO.USUARIOSTATUSID,
	TB_USUARIO_STATUS.STATUS,
    TB_USUARIO.PARCEIROID,
	NOMEFANTASIA,
	DATAULTIMOACESSO,
	NOMEUSUARIO,
	EMAILUSUARIO,
	[LOGIN],
	SENHA,
	AGENCIA
FROM   
	TB_USUARIO INNER JOIN TB_USUARIO_STATUS ON TB_USUARIO.USUARIOSTATUSID = TB_USUARIO_STATUS.USUARIOSTATUSID
			   INNER JOIN TB_PERFIL ON TB_USUARIO.PERFILID = TB_PERFIL.PERFILID
			   LEFT JOIN TB_PARCEIRO ON TB_USUARIO.PARCEIROID = TB_PARCEIRO.PARCEIROID
WHERE
	 USUARIOID = @ID 

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SPE_L_USUARIO_LOGIN]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[SPE_L_USUARIO_LOGIN] AS' 
END
GO

ALTER PROCEDURE [dbo].[SPE_L_USUARIO_LOGIN]
(
	@LOGIN NVARCHAR(50) = NULL,
	@SENHA NVARCHAR(200) = NULL
)
AS
	
SELECT 	
	USUARIOID,
	TB_USUARIO.PERFILID,
	NOMEPERFIL,
	TB_USUARIO.USUARIOSTATUSID,
	TB_USUARIO_STATUS.STATUS,
	TB_USUARIO.PARCEIROID,
	NOMEFANTASIA,
	DATAULTIMOACESSO,
	NOMEUSUARIO,
	EMAILUSUARIO,
	[LOGIN],
	SENHA,
	AGENCIA
FROM   
	TB_USUARIO INNER JOIN TB_USUARIO_STATUS ON TB_USUARIO.USUARIOSTATUSID = TB_USUARIO_STATUS.USUARIOSTATUSID
			   INNER JOIN TB_PERFIL ON TB_USUARIO.PERFILID = TB_PERFIL.PERFILID 
			   LEFT JOIN TB_PARCEIRO ON TB_USUARIO.PARCEIROID = TB_PARCEIRO.PARCEIROID
WHERE
	 [LOGIN] = @LOGIN AND  
	 [SENHA] = @SENHA





GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SPE_L_USUARIO_VAN]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[SPE_L_USUARIO_VAN] AS' 
END
GO
	ALTER  PROCEDURE [dbo].[SPE_L_USUARIO_VAN]
(
	@parceiroId int = null
)
AS
	SET NOCOUNT ON

	Select 
	u.usuarioId,
	u.emailUsuario,
	u.nomeUsuario,
	p.nomeContato,
	p.razaoSocialParceiro
	FROM  TB_Usuario u
	Left Join TB_Parceiro p on u.parceiroId = p.parceiroId
	WHERE
	 u.parceiroId = @parceiroId
	RETURN @@Error


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SPE_U_CATEGORIA]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[SPE_U_CATEGORIA] AS' 
END
GO
ALTER PROCEDURE [dbo].[SPE_U_CATEGORIA]
(
	 @ID				INT
	,@NOME			VARCHAR(200))
AS
	
UPDATE TB_ProdutoCategoria SET	
	 NOME = @NOME
WHERE
	 ID = @ID 	 


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SPE_U_CLIENTE]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[SPE_U_CLIENTE] AS' 
END
GO
ALTER PROCEDURE [dbo].[SPE_U_CLIENTE]
(
	 @ID				INT
	,@NOME			VARCHAR(200)
	,@TELEFONE		VARCHAR(20))
AS
	
UPDATE TB_CLIENTES SET	
	 NOME = @NOME
	,TEL = @TELEFONE
WHERE
	 ID = @ID 	 


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SPE_U_PERFIL]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[SPE_U_PERFIL] AS' 
END
GO
ALTER PROCEDURE [dbo].[SPE_U_PERFIL]
(
	@ID				INT,
	@NOMEPERFIL		VARCHAR(50),
	@SELECIONADOS	VARCHAR(500)
)
AS

--ATUALIZA PERFIL
UPDATE TB_PERFIL SET	
	 NOMEPERFIL = @NOMEPERFIL
WHERE
	 PERFILID = @ID 	 

-- ATUALIZA ACESSOS
DELETE FROM TB_ACESSO WHERE PERFILID = @ID

INSERT INTO TB_ACESSO
	SELECT @ID,ITEM FROM FNSPLIT(@SELECIONADOS,';')



GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SPE_U_PRODUTO]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[SPE_U_PRODUTO] AS' 
END
GO
ALTER PROCEDURE [dbo].[SPE_U_PRODUTO]
(
	@CODIGO			VARCHAR(200)
	,@CATEGORIAID		INT	
	,@NOMEPRODUTO		VARCHAR(200)
	,@VALOR				DECIMAL(18,2)
)
AS
	
UPDATE TB_PRODUTOS SET	
	CATEGORIAID = @CATEGORIAID
	,NOME = @NOMEPRODUTO	
	,VALOR = @VALOR
WHERE
	 CODIGO = @CODIGO


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SPE_U_USUARIO]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[SPE_U_USUARIO] AS' 
END
GO
ALTER PROCEDURE [dbo].[SPE_U_USUARIO]
(
	 @ID				INT
	,@PERFILID			INT	
	,@PARCEIROID		INT	= NULL
	,@USUARIOSTATUSID	INT	
	,@NOMEUSUARIO		VARCHAR(400)
	,@EMAILUSUARIO		VARCHAR(400)
	,@LOGIN				VARCHAR(100)	
)
AS
	
UPDATE TB_USUARIO SET	
	 PERFILID = @PERFILID
	,USUARIOSTATUSID = @USUARIOSTATUSID	
	,PARCEIROID = @PARCEIROID
	,NOMEUSUARIO = @NOMEUSUARIO
	,EMAILUSUARIO = @EMAILUSUARIO
	,[LOGIN] = @LOGIN
WHERE
	 USUARIOID = @ID 	 


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SPE_U_USUARIO_ACESSO]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[SPE_U_USUARIO_ACESSO] AS' 
END
GO
ALTER  PROCEDURE [dbo].[SPE_U_USUARIO_ACESSO]
(
	@login nvarchar(50) = null
)
AS
	SET NOCOUNT ON

Update
	TB_Usuario
SET
	[dataUltimoAcesso] = getdate()
WHERE
	 [login] = @login 

RETURN @@Error



GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SPE_U_USUARIO_CHECKLIST]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[SPE_U_USUARIO_CHECKLIST] AS' 
END
GO
ALTER PROCEDURE [dbo].[SPE_U_USUARIO_CHECKLIST]
(
	 @ID				INT
	,@NOMEUSUARIO		VARCHAR(200)
	,@EMAILUSUARIO		VARCHAR(200)
	,@LOGIN				VARCHAR(50)
	,@AGENCIA			VARCHAR(5)
)
AS
	
UPDATE TB_USUARIO SET	
	 NOMEUSUARIO = @NOMEUSUARIO
	,EMAILUSUARIO = @EMAILUSUARIO
	,[LOGIN] = @LOGIN
	,AGENCIA = @AGENCIA
WHERE
	 USUARIOID = @ID 	 



GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SPE_U_USUARIO_SENHA]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[SPE_U_USUARIO_SENHA] AS' 
END
GO
ALTER PROCEDURE [dbo].[SPE_U_USUARIO_SENHA]
(
	 @ID				INT
	,@SENHA				NVARCHAR(100)	
)
AS
	
UPDATE TB_USUARIO 
SET	
	 SENHA = @SENHA,
	 DATAULTIMOACESSO = NULL
WHERE
	 USUARIOID = @ID 	 


GO
USE [master]
GO
ALTER DATABASE [DBNardys] SET  READ_WRITE 
GO

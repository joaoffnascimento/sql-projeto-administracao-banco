-- Created by: João Felipe Fonseca Nascimento
-- joao.nascimento98@academico.ifs.edu.br - 2020

USE Zobooaereo

GO

EXECUTE dbo.USP_REMOVER_ESCALA
    1,
    3
GO

EXECUTE dbo.USP_REMOVER_TARIFA
    1,
    1,
    2
GO

EXECUTE dbo.USP_REMOVER_VOO
    2
GO

EXECUTE dbo.USP_REMOVER_PAIS
    1
GO

EXECUTE dbo.USP_REMOVER_CIDADE
    1
GO

EXECUTE dbo.USP_REMOVER_COMPANHIA_AEREA
    1
    
GO

EXECUTE dbo.USP_REMOVER_TIPO_AVIAO
    1
GO

EXECUTE dbo.USP_REMOVER_AEROPORTO
    1
GO

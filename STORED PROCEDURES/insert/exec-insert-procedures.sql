-- Created by: João Felipe Fonseca Nascimento
-- joao.nascimento98@academico.ifs.edu.br - 2020

USE Zobooaereo

GO

EXECUTE dbo.USP_CRIAR_PAIS
    "BRASIL",
    "A"
GO

EXECUTE dbo.USP_CRIAR_PAIS
    "CANADA",
    "A"
GO

EXECUTE dbo.USP_CRIAR_PAIS
    "ESPANHA",
    "A"
GO

EXECUTE dbo.USP_CRIAR_PAIS
    "RUSSIA",
    "O"
GO

EXECUTE dbo.USP_CRIAR_CIDADE
    "ARACAJU",
    1
GO

EXECUTE dbo.USP_CRIAR_CIDADE
    "SAO PAULO",
    1
GO

EXECUTE dbo.USP_CRIAR_CIDADE
    "TORONTO",
    2
GO

EXECUTE dbo.USP_CRIAR_CIDADE
    "MOSCOU",
    4
GO

EXECUTE dbo.USP_CRIAR_CIDADE
    "MADRID",
    3
GO

EXECUTE dbo.USP_CRIAR_COMPANHIA_AEREA
    1,
    "LATAM"
    
GO

EXECUTE dbo.USP_CRIAR_COMPANHIA_AEREA
    2,
    "AVIANCA"
GO

EXECUTE dbo.USP_CRIAR_COMPANHIA_AEREA
    3,
    "AZUL"
GO

EXECUTE dbo.USP_CRIAR_COMPANHIA_AEREA
    4,
    "EMIRATES"
GO

EXECUTE dbo.USP_CRIAR_TIPO_AVIAO
    "CARGA",
    200
GO

EXECUTE dbo.USP_CRIAR_TIPO_AVIAO
    "PASSEIO",
    10
GO

EXECUTE dbo.USP_CRIAR_VOO
    1,
    1,
    01,
    2000
GO

EXECUTE dbo.USP_CRIAR_VOO
    2,
    2,
    15,
    1930
GO

EXECUTE dbo.USP_CRIAR_AEROPORTO
    "X",
    1,
    "Aeroporto Internacional Santa Maria",
    "O Aeroporto Internacional de Aracaju - Santa Maria é um aeroporto internacional situado na cidade de Aracaju."
GO

EXECUTE dbo.USP_CRIAR_AEROPORTO
    "Y",
    2,
    "Aeroporto de Guarulhos",
    "O Aeroporto Internacional de São Paulo/Guarulhos – Governador André Franco Montoro."
GO

EXECUTE dbo.USP_CRIAR_AEROPORTO
    "Z",
    3,
    "Toronto Pearson International Airport",
    "O Aeroporto de Toronto, ou Toronto Pearson International Airport, é o maior e mais movimentado aeroporto do Canadá."
GO

EXECUTE dbo.USP_CRIAR_ESCALA
    1,
    1,
    1
GO

EXECUTE dbo.USP_CRIAR_ESCALA
    1,
    2,
    2
GO  

EXECUTE dbo.USP_CRIAR_ESCALA
    1,
    3,
    3
GO  

EXECUTE dbo.USP_CRIAR_TARIFAS
    1,
    1,
    2,
    600
GO  

EXECUTE dbo.USP_CRIAR_TARIFAS
    2,
    2,
    3,
    1000
GO  
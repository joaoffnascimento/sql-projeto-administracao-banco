-- Created by: João Felipe Fonseca Nascimento
-- joao.nascimento98@academico.ifs.edu.br - 2020

USE Zobooaereo

GO

CREATE PROCEDURE dbo.USP_REMOVER_PAIS
    @p_cod_pais int
AS
BEGIN
    DELETE FROM pais WHERE cod_pais = @p_cod_pais
END

GO

CREATE PROCEDURE dbo.USP_REMOVER_CIDADE
    @p_cod_cid int
AS
BEGIN
    DELETE FROM cidade WHERE cod_cid = @p_cod_cid
END

GO

CREATE PROCEDURE dbo.USP_REMOVER_COMPANHIA_AEREA
    @p_cod_comp int
AS
BEGIN
   DELETE FROM companhia_aerea WHERE cod_comp = @p_cod_comp
END

GO

CREATE PROCEDURE dbo.USP_REMOVER_TIPO_AVIAO
    @p_cod_tpa int
AS
BEGIN
   DELETE FROM tipo_aviao WHERE cod_tpa = @p_cod_tpa
END

GO

CREATE PROCEDURE dbo.USP_REMOVER_VOO
    @p_cod_voo int
AS
BEGIN
    DELETE FROM voo WHERE cod_voo = @p_cod_voo
END

GO

CREATE PROCEDURE dbo.USP_REMOVER_AEROPORTO
    @p_cod_aero int
AS
BEGIN
    DELETE FROM aeroporto WHERE cod_aero = @p_cod_aero
END

GO

CREATE PROCEDURE dbo.USP_REMOVER_ESCALA
    @p_cod_voo int,
    @p_cod_aero int
AS
BEGIN
    DELETE FROM escala WHERE cod_voo = @p_cod_voo and cod_aero = @p_cod_aero
END

GO

CREATE PROCEDURE dbo.USP_REMOVER_TARIFA
    @p_cod_comp int,
    @p_cod_aero_origem int,
    @p_cod_aero_destino int
AS
BEGIN
    DELETE FROM tarifa WHERE cod_comp = @p_cod_comp and cod_aero_origem = @p_cod_aero_origem and cod_aero_destino = @p_cod_aero_destino
END

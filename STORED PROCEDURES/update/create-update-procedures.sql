-- Created by: João Felipe Fonseca Nascimento
-- joao.nascimento98@academico.ifs.edu.br - 2020

USE Zobooaereo

GO

CREATE PROCEDURE dbo.USP_MODIFICAR_PAIS
    @p_cod_pais int,
    @p_dsc_pais varchar(40),
    @p_continente char(1)
AS
BEGIN
    UPDATE pais
            SET 
            dsc_pais = ISNULL(@p_dsc_pais, dsc_pais),
            continente = ISNULL(@p_continente, continente)
            WHERE cod_pais = @p_cod_pais
END

GO

CREATE PROCEDURE dbo.USP_MODIFICAR_CIDADE
    @p_cod_cid int,
    @p_nom_cid varchar(40),
    @p_cod_pais int
AS
BEGIN
    UPDATE cidade
            SET 
            nom_cid = ISNULL(@p_nom_cid, nom_cid),
            cod_pais = ISNULL(@p_cod_pais, cod_pais)
            WHERE cod_cid = @p_cod_cid
END

GO

CREATE PROCEDURE dbo.USP_MODIFICAR_COMPANHIA_AEREA
    @p_cod_comp int,
    @p_nom_cid varchar(40),
    @p_cod_pais int
AS
BEGIN
    UPDATE companhia_aerea
            SET 
            nom_cid = ISNULL(@p_nom_cid, nom_cid),
            cod_pais = ISNULL(@p_cod_pais, cod_pais)
            WHERE cod_comp = @p_cod_comp
END

GO

CREATE PROCEDURE dbo.USP_MODIFICAR_TIPO_AVIAO
    @p_cod_tpa int,
    @p_dsc_tipo varchar(40),
    @p_capacidade int
AS
BEGIN
    UPDATE tipo_aviao
            SET 
            dsc_tipo = ISNULL(@p_dsc_tipo, dsc_tipo),
            capacidade = ISNULL(@p_capacidade, capacidade)
            WHERE cod_tpa = @p_cod_tpa
END

GO

CREATE PROCEDURE dbo.USP_MODIFICAR_VOO
    @p_cod_voo int,
    @p_cod_comp int,
    @p_dia numeric(2),
    @p_horario numeric(4)
AS
BEGIN
    UPDATE voo
            SET 
            cod_comp = ISNULL(@p_cod_comp, cod_comp),
            cod_tpa = ISNULL(@p_cod_tpa, cod_tpa),
            dia = ISNULL(@p_dia, dia),
            horario = ISNULL(@p_horario, horario)
            WHERE cod_voo = @p_cod_voo
END

GO

CREATE PROCEDURE dbo.USP_MODIFICAR_AEROPORTO
    @p_cod_aero int,
    @p_tpo_aero char(1),
    @p_cod_cid int,
    @p_nom_aero VARCHAR(40),
    @p_obs VARCHAR(200)
AS
BEGIN
    UPDATE aeroporto
            SET 
            tpo_aero = ISNULL(@p_tpo_aero, tpo_aero),
            cod_tpa = ISNULL(@p_cod_tpa, cod_tpa),
            cod_cid = ISNULL(@p_cod_cid, cod_cid),
            nom_aero = ISNULL(@p_nom_aero, nom_aero),
            obs = ISNULL(@p_obs, obs)
            WHERE cod_aero = @p_cod_aero
END

GO

CREATE PROCEDURE dbo.USP_MODIFICAR_ESCALA
    @p_cod_voo int,
    @p_cod_aero int,
    @p_num_esc int
AS
BEGIN
    UPDATE escala
            SET 
            num_esc = ISNULL(@p_num_esc, num_esc)
            WHERE cod_voo = @p_cod_voo and cod_aero = @p_cod_aero
END

GO

CREATE PROCEDURE dbo.USP_MODIFICAR_TARIFA
    @p_cod_comp int,
    @p_cod_aero_origem int,
    @p_cod_aero_destino int,
    @p_valor NUMERIC(7,2)
AS
BEGIN
    UPDATE tarifa
            SET 
            valor = ISNULL(@p_valor, valor)
            WHERE cod_comp = @p_cod_comp and cod_aero_origem = @p_cod_aero_origem and cod_aero_destino = @p_cod_aero_destino
END

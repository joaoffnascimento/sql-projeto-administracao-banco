-- Created by: João Felipe Fonseca Nascimento
-- joao.nascimento98@academico.ifs.edu.br - 2020

USE Zobooaereo

GO

CREATE PROCEDURE dbo.USP_CRIAR_PAIS
    @p_dsc_pais VARCHAR(40),
    @p_continente CHAR(1)
AS
BEGIN
    INSERT INTO pais
        (
        [dsc_pais],
        [continente]
        )
    VALUES
        (
            @p_dsc_pais,
            @p_continente 
        )
END

GO

CREATE PROCEDURE dbo.USP_CRIAR_CIDADE
    @p_nom_cid VARCHAR(40),
    @p_cod_pais INT
AS
BEGIN
    INSERT INTO cidade
        (
        [nom_cid],
        [cod_pais]
        )
    VALUES
        (
            @p_nom_cid,
            @p_cod_pais 
        )
END

GO

CREATE PROCEDURE dbo.USP_CRIAR_COMPANHIA_AEREA
    @p_cod_pais INT,
    @p_dsc_comp VARCHAR(40)
AS
BEGIN
    INSERT INTO companhia_aerea
        (
        [cod_pais],
        [dsc_comp]
        )
    VALUES
        (
            @p_cod_pais,
            @p_dsc_comp 
        )
END

GO

CREATE PROCEDURE dbo.USP_CRIAR_TIPO_AVIAO
    @p_dsc_tipo VARCHAR(40),
    @p_capacidade INT
AS
BEGIN
    INSERT INTO tipo_aviao
        (
        [dsc_tipo],
        [capacidade]
        )
    VALUES
        (
            @p_dsc_tipo,
            @p_capacidade 
        )
END

GO

CREATE PROCEDURE dbo.USP_CRIAR_VOO
    @p_cod_comp VARCHAR(40),
    @p_cod_tpa INT,
    @p_dia VARCHAR(40),
    @p_horario INT
AS
BEGIN
    INSERT INTO voo
        (
        [cod_comp],
        [cod_tpa],
        [dia],
        [horario]
        )
    VALUES
        (
            @p_cod_comp,
            @p_cod_tpa,
            @p_dia,
            @p_horario
        )
END

GO

CREATE PROCEDURE dbo.USP_CRIAR_AEROPORTO
    @p_tpo_aero CHAR(1),
    @p_cod_cid INT NOT NULL,
    @p_nom_aero VARCHAR(40),
    @p_obs VARCHAR(200)
AS
BEGIN
    INSERT INTO aeroporto
        (
        [tpo_aero],
        [cod_cid],
        [nom_aero],
        [obs]
        )
    VALUES
        (
            @p_tpo_aero,
            @p_cod_cid,
            @p_nom_aero,
            @p_obs
        )
END

GO

CREATE PROCEDURE dbo.USP_CRIAR_ESCALA
    @p_cod_voo INT,
    @p_num_esc INT,
    @p_cod_aero INT
AS
BEGIN
    INSERT INTO escala
        (
        [cod_voo],
        [num_esc],
        [cod_aero]
        )
    VALUES
        (
            @p_cod_voo,
            @p_num_esc,
            @p_cod_aero
        )
END

GO


CREATE PROCEDURE dbo.USP_CRIAR_TARIFAS
    @p_cod_comp INT,
    @p_cod_aero_origem INT,
    @p_cod_aero_destino INT,
    @p_valor NUMERIC(7,2)
AS
BEGIN
    INSERT INTO tarifa
        (
        [cod_comp],
        [cod_aero_origem],
        [cod_aero_destino],
        [valor]
        )
    VALUES
        (
            @p_cod_comp,
            @p_cod_aero_origem,
            @p_cod_aero_destino,
            @p_valor
        )
END
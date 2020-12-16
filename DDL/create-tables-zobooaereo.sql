-- Created by: João Felipe Fonseca Nascimento
-- joao.nascimento98@academico.ifs.edu.br - 2020

/* SCRIPT DE CRIAÇÃO DAS TABELA DO PROJETO FINAL DE ADM DE BANCO - ZOBOOAEREO */

USE [Zobooaereo]

PRINT 'Creating tables with their CONSTRAINTs'

PRINT 'Table creation: Paises'

CREATE TABLE pais
(
    cod_pais INT NOT NULL CHECK(cod_pais > 0) IDENTITY(1, 1) PRIMARY KEY,
    dsc_pai VARCHAR(40) NOT NULL,
    continente CHAR(1) NOT NULL
);

--------------------------------------------------------------------

PRINT 'Table creation: Cidades'

CREATE TABLE cidade
(
    cod_cid INT NOT NULL CHECK(cod_cid > 0) IDENTITY(1, 1) PRIMARY KEY,
    nom_cid VARCHAR(40) NOT NULL,
    cod_pais INT NOT NULL,
    CONSTRAINT cidade_fk_pais FOREIGN KEY(cod_pais) REFERENCES pais (cod_pais)
);

--------------------------------------------------------------------

PRINT 'Table creation: Companhias_Aereas'

CREATE TABLE companhia_aerea
(
    cod_comp INT NOT NULL CHECK(cod_comp > 0) IDENTITY(1, 1) PRIMARY KEY,
    cod_pais INT NOT NULL,
    dsc_comp VARCHAR(40) NOT NULL,
    CONSTRAINT companhia_aerea_fk_pais FOREIGN KEY(cod_pais) REFERENCES pais (cod_pais)
);

--------------------------------------------------------------------

PRINT 'Table creation: Tipos_Avioes'

CREATE TABLE tipo_aviao
(
    cod_tpa INT NOT NULL CHECK(cod_tpa > 0) IDENTITY(1, 1) PRIMARY KEY,
    dsc_tipo VARCHAR(40) NOT NULL,
    capacidade INT NOT NULL
);

--------------------------------------------------------------------

PRINT 'Table creation: Voos'

CREATE TABLE voo
(
    cod_voo INT NOT NULL CHECK(cod_voo > 0) IDENTITY(1, 1) PRIMARY KEY,
    cod_comp INT NOT NULL,
    cod_tpa INT NOT NULL,
    dia INT NOT NULL,
    horario INT NOT NULL,
    CONSTRAINT voo_fk_companhia_aerea FOREIGN KEY(cod_comp) REFERENCES companhia_aerea (cod_comp),
    CONSTRAINT voo_fk_tipo_aviao FOREIGN KEY(cod_tpa) REFERENCES tipo_aviao (cod_tpa)
);

--------------------------------------------------------------------

PRINT 'Table creation: Aeroportos'

CREATE TABLE aeroporto
(
    cod_aero INT NOT NULL CHECK(cod_aero > 0) IDENTITY(1, 1) PRIMARY KEY,
    tpo_aero CHAR(1) NOT NULL,
    cod_cid INT NOT NULL,
    nom_aero VARCHAR(40) NOT NULL,
    obs VARCHAR(200) NULL,
    CONSTRAINT aeroporto_fk_cidade FOREIGN KEY(cod_cid) REFERENCES cidade (cod_cid)
);

--------------------------------------------------------------------

PRINT 'Table creation: Escalas'

CREATE TABLE escala
(
    cod_voo INT NOT NULL,
    num_esc INT NOT NULL,
    cod_aero INT NOT NULL,
    CONSTRAINT escala_pk PRIMARY KEY(cod_voo, cod_aero),
    CONSTRAINT escala_fk_voo FOREIGN KEY (cod_voo) REFERENCES voo (cod_voo),
    CONSTRAINT escala_fk_aeroporto FOREIGN KEY (cod_aero) REFERENCES aeroporto (cod_aero),
);

--------------------------------------------------------------------

PRINT 'Table creation: Tarifas'

CREATE TABLE tarifa
(
    cod_comp INT NOT NULL,
    cod_aero_origem INT NOT NULL,
    cod_aero_destino INT NOT NULL,
    valor NUMERIC(9,2) NOT NULL,
    CONSTRAINT tarifa_pk PRIMARY KEY(cod_comp, cod_aero_origem, cod_aero_destino),
    CONSTRAINT tarifa_fk_companhia_aereal FOREIGN KEY (cod_comp) REFERENCES companhia_aerea (cod_comp),
    CONSTRAINT tarifa_fk_aeroporto_origem FOREIGN KEY (cod_aero_origem) REFERENCES aeroporto (cod_aero),
    CONSTRAINT tarifa_fk_aeroporto_destino FOREIGN KEY (cod_aero_destino) REFERENCES aeroporto (cod_aero)
);
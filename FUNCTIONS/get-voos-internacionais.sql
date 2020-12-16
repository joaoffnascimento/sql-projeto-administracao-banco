-- Created by: João Felipe Fonseca Nascimento
-- joao.nascimento98@academico.ifs.edu.br - 2020

USE Zobooaereo

GO

CREATE FUNCTION FN_GET_VOOS_INTERNACIONAIS ()
    RETURNS @table TABLE (
    dia INT,
    horario INT,
    companhia VARCHAR(40),
    pais VARCHAR(40),
    cidade VARCHAR(40)
    )
AS
BEGIN
    INSERT @table
    SELECT DISTINCT
        voo.dia as 'DIA',
        voo.horario as 'HORARIO_VOO',
        companhia_aerea.dsc_comp as 'NOME COMPANHIA',
        pais.dsc_pais as 'NOME PAIS',
        cidade.nom_cid as 'NOME CIDADE'
    FROM voo
        INNER JOIN companhia_aerea ON voo.cod_comp = companhia_aerea.cod_comp
        INNER JOIN pais ON companhia_aerea.cod_pais = pais.cod_pais
        INNER JOIN cidade ON pais.cod_pais = cidade.cod_pais
        INNER JOIN escala ON voo.cod_voo = escala.cod_voo
        INNER JOIN aeroporto as destino ON escala.cod_aero = destino.cod_aero
        INNER JOIN cidade as cidadeDest ON  destino.cod_cid = cidade.cod_cid
        INNER JOIN pais as paisDest ON cidadeDest.cod_pais = pais.cod_pais
    where paisDest.cod_pais != pais.cod_pais

    RETURN
END

GO

select * from FN_GET_VOOS_INTERNACIONAIS()
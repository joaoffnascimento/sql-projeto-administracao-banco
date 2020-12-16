-- Created by: João Felipe Fonseca Nascimento
-- joao.nascimento98@academico.ifs.edu.br - 2020

USE Zobooaereo

GO

CREATE TRIGGER UTG_VALIDAR_TARIFA ON tarifa FOR INSERT, UPDATE
AS
    BEGIN
        DECLARE
            @cod_comp int, 
            @cod_aero_origem int, 
            @cod_aero_destino int, 
            @valor NUMERIC(7,2)

        SELECT 
            @cod_comp = cod_comp, 
            @cod_aero_origem = cod_aero_origem, 
            @cod_aero_destino = cod_aero_destino, 
            @valor = valor
        FROM inserted;
        
        IF ( @valor < 50 )
	        BEGIN
                RAISERROR('NAO E POSSIVEL DEFINIR UMA TARIFA COM VALOR INFERIOR A R$50,00', 10 , 1 );
                ROLLBACK;
            END    

    END
GO
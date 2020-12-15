-- Created by: João Felipe Fonseca Nascimento
-- joao.nascimento98@academico.ifs.edu.br - 2020

if exists (select name from master.dbo.sysdatabases where name = N'Zobooaereo')
	drop database [Zobooaereo]
go

create database [Zobooaereo]	
	on (name = N'Zobooaereo_Data'
		, filename = N'/var/opt/mssql/data/Zobooaereo.mdf' 
		, size = 10
		, filegrowth = 10%) 
	log	
		on (name = N'Zobooaereo_Log'	
		, filename = N'/var/opt/mssql/data/Zobooaereo.ldf'  
		, size = 01
		, filegrowth = 10%)
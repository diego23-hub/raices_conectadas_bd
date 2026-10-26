USE master;
GO

IF NOT EXISTS (SELECT * FROM sys.server_principals WHERE name = 'raices_conectadas_backend')
BEGIN
    CREATE LOGIN raices_conectadas_backend WITH PASSWORD = 'PasswordSeguro2026*';
END
GO

USE raices_conectadas;
GO

IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = 'raices_conectadas_backend')
BEGIN
    CREATE USER raices_conectadas_backend FOR LOGIN raices_conectadas_backend;
END
GO


ALTER ROLE db_datareader ADD MEMBER raices_conectadas_backend;
ALTER ROLE db_datawriter ADD MEMBER raices_conectadas_backend;


GRANT EXECUTE TO raices_conectadas_backend;
GO
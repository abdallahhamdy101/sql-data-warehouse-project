USE master ;
GO

--	drop DataWarehouse database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name= 'DataWarehouse')
BEGIN
	ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE ;
	DROP DATABASE DataWarehouse ;
END
GO

--	create DataWarehouse Database
CREATE DATABASE DataWarehouse ;
GO

USE  DataWarehouse ;
GO

--	create schemas
CREATE SCHEMA bronze ;
GO

CREATE SCHEMA silver ;
GO

CREATE SCHEMA gold ;
GO










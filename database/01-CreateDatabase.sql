/*
 * Vendor Payment Reconciliation System
 * Project #28 - Complete Database Implementation
 * SQL Server 2008/2012
 * Technology: MSSQL, SSIS
 * Created: 2013
 */

USE master;
GO

IF EXISTS (SELECT name FROM sys.databases WHERE name = 'ReconciliationDB')
BEGIN
    ALTER DATABASE ReconciliationDB SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE ReconciliationDB;
END
GO

CREATE DATABASE ReconciliationDB
ON PRIMARY
(
    NAME = 'ReconciliationDB_Data',
    FILENAME = 'C:\SQLData\ReconciliationDB_Data.mdf',
    SIZE = 100MB,
    MAXSIZE = 5GB,
    FILEGROWTH = 10MB
)
LOG ON
(
    NAME = 'ReconciliationDB_Log',
    FILENAME = 'C:\SQLData\ReconciliationDB_Log.ldf',
    SIZE = 50MB,
    MAXSIZE = 1GB,
    FILEGROWTH = 5MB
);
GO

ALTER DATABASE ReconciliationDB SET RECOVERY SIMPLE;
ALTER DATABASE ReconciliationDB SET AUTO_UPDATE_STATISTICS ON;
GO

USE ReconciliationDB;
GO

PRINT 'Database ReconciliationDB created successfully';
PRINT 'Project: Vendor Payment Reconciliation System';
PRINT 'Description: Invoice and payment matching';
GO

CREATE PROCEDURE CreateBackup
AS
BACKUP DATABASE School
TO DISK = 'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\Backup\School.bak'
GO
CREATE PROCEDURE cutConnections
AS
ALTER DATABASE School
SET SINGLE_USER
WITH ROLLBACK IMMEDIATE;
ALTER DATABASE School
SET MULTI_USER
GO
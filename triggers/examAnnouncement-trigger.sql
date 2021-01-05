CREATE TRIGGER zapowiedz ON Exams
FOR INSERT, UPDATE
AS
DECLARE @temp DATE
SELECT @temp = (SELECT Data_Of_Test FROM inserted)
	IF (@temp  < GETDATE() + 14)
		PRINT 'the exam should be carried out at a later date: '
		+ CONVERT(varchar(100), GETDATE() + 14)
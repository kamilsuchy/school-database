CREATE TRIGGER resit ON Exams_Result 
 FOR INSERT
	AS 
	DECLARE  @temp_mark INT
	DECLARE @wynik DATE
	SELECT @temp_mark = (select Mark from inserted)
	SELECT @wynik =  (GETDATE() + 14) 
	IF( @temp_mark = 1)
		PRINT 'obligatory resit: ' + CONVERT(varchar(100),@wynik)
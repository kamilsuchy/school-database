CREATE PROCEDURE getHighestMark 
(@examID INT, @output INT OUTPUT)
AS
SELECT @output = MAX(Mark) 
FROM dbo.Exams_Result WHERE
Exam_ID = @examID
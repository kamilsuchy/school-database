CREATE PROCEDURE DisplayBestStudents
(@examID INT)
AS
DECLARE @highestScore INT;
EXECUTE getHighestMark @examID, @highestScore OUTPUT;
SELECT Name, Surname, Mark FROM dbo.Exams_Result JOIN dbo.Exams ON Exams.Exam_ID = Exams_Result.Exam_ID
JOIN dbo.Students ON dbo.Exams_Result.Student_ID = StudentId
WHERE  Exams.Exam_ID = @examID AND Mark = @highestScore
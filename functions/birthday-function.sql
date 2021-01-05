CREATE FUNCTION DisplayBirthDay
 ( @Day NVARCHAR(2), @Month NVARCHAR(2) )
RETURNS table
AS
RETURN (
SELECT * FROM dbo.Students
WHERE DAY(DateBirth) = @Day AND MONTH(DateBirth) = @Month
)
GO
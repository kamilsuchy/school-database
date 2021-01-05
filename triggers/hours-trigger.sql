CREATE TRIGGER hours ON Class_Date_Details
	FOR INSERT, UPDATE
	AS
		DECLARE @start TIME
		DECLARE @koniec TIME
		DECLARE @temp1 DATETIME
		DECLARE @temp2 DATETIME
		SELECT @start  = (SELECT Start_Hour FROM inserted)
		SELECT @koniec = (SELECT End_Hour FROM inserted)
	
		IF( CONVERT(DATETIME, @koniec) < CONVERT(DATETIME, @start))
			PRINT 'Incorrect start and end hours'

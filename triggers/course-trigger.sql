CREATE TRIGGER course ON Class 
	FOR INSERT, UPDATE
	AS
		DECLARE @start DATE
		DECLARE @koniec DATE
		DECLARE @iloscDni INT 
		SELECT @start = (SELECT Start_Date FROM inserted)
		SELECT @koniec = (SELECT End_Date FROM inserted)
		SELECT  @iloscDNI  = DATEDIFF(DAY, @start, @koniec)
			IF( @iloscDni < 0)
				PRINT 'incorrect dates'
			ELSE IF(@iloscDni < 150 )
				PRINT 'course is too short'

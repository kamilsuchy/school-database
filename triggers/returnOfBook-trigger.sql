CREATE TRIGGER kara ON Borrows
FOR  INSERT,  UPDATE 
AS 
DECLARE @iloscDNI INT
DECLARE @wynik  FLOAT 
DECLARE @wypozyczenie DATE
DECLARE @oddanie DATE

SELECT @wypozyczenie = (SELECT Taken_Date FROM inserted)
SELECT @oddanie = (SELECT Return_Date FROM inserted)
SELECT  @iloscDNI  = DATEDIFF(DAY, @wypozyczenie, @oddanie) 
SELECT @wynik = (@iloscDNI - 14) * 1.2 
	IF (@iloscDNI > 14)
		BEGIN
		PRINT 'to pay: ' + CONVERT(varchar(100),@wynik)
		END
	ELSE
		BEGIN
		PRINT 'Book was returned correctly' 
		END
--DROP TRIGGER PassengerPhoneNumber
/*USE master
USE taxi*/

CREATE TRIGGER PassengerPhoneNumber ON Passengers AFTER INSERT AS
BEGIN
    DECLARE @PhoneNumber VARCHAR(10)
    SELECT @PhoneNumber = '+7' + CAST(FLOOR(RAND() * 100000) AS VARCHAR) + CAST(FLOOR(RAND() * 100000) AS VARCHAR)
    
    UPDATE Passengers SET PhoneNumber = @PhoneNumber WHERE PassengerID IN (SELECT PassengerID FROM inserted)
END
--DROP TRIGGER EmployeePhoneNumber
/*USE master
USE taxi*/

CREATE TRIGGER EmployeePhoneNumber ON Employees AFTER INSERT AS
BEGIN
    DECLARE @PhoneNumber VARCHAR(10)
	SELECT @PhoneNumber = '+7' + CAST(FLOOR(RAND() * 100000) AS VARCHAR) + CAST(FLOOR(RAND() * 100000) AS VARCHAR)
    
    UPDATE Employees SET PhoneNumber = @PhoneNumber WHERE EmployeeID IN (SELECT EmployeeID FROM inserted)
END
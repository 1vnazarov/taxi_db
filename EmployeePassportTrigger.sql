--DROP TRIGGER EmployeePassport
/*USE master
USE taxi*/

CREATE TRIGGER EmployeePassport ON Employees AFTER INSERT AS
BEGIN
    UPDATE Employees SET Passport = CAST(FLOOR(RAND() * 10000) AS VARCHAR) + '-' + CAST(FLOOR(RAND() * 1000000) AS VARCHAR)
    FROM inserted WHERE inserted.EmployeeID = Employees.EmployeeID;
END;
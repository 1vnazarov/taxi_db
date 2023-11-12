--DROP TRIGGER UpdateMileage
/*USE master
USE taxi*/

CREATE TRIGGER UpdateMileage ON Calls AFTER INSERT AS BEGIN
    UPDATE Cars SET Mileage = Mileage + inserted.Distance FROM inserted
    INNER JOIN Cars ON inserted.CarID = cars.CarID
END
--DROP VIEW AvailableDrivers
CREATE VIEW AvailableDrivers AS
SELECT * FROM Employees e
WHERE NOT EXISTS (SELECT 1 FROM Calls c
    JOIN Cars car ON c.CarID = car.CarID
    WHERE car.EmployeeID = e.EmployeeID
      AND c.CallDate = CAST(GETDATE() AS DATE)
      AND c.PickupTime <= CAST(GETDATE() AS TIME)
      AND c.DropOffTime >= CAST(GETDATE() AS TIME))
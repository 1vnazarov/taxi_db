--DROP VIEW YesterdayDriverSalary
CREATE VIEW YesterdayDriverSalary AS
SELECT e.EmployeeID, e.Name AS EmployeeName, SUM(c.Distance * t.PricePerKilometer / 2) AS Salary
FROM Employees e
JOIN Cars cr ON e.EmployeeID = cr.EmployeeID
JOIN Calls c ON cr.CarID = c.CarID
JOIN Tariffs t ON c.TariffID = t.TariffID
WHERE c.CallDate = DATEADD(day, -1, CAST(GETDATE() AS date))
GROUP BY e.EmployeeID, e.Name
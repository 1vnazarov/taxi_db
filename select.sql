USE master
USE taxi

-- ������� ������ � ��������, ������� ���� ���� ���������� ���������� �� �������� �����. 
SELECT TOP 1 e.Name AS DriverName, COUNT(c.CallID) AS TotalDeliveries FROM Employees e
INNER JOIN Cars car ON e.EmployeeID = car.EmployeeID
INNER JOIN Calls c ON c.CarID = car.CarID
WHERE c.DropOffLocation = '����� ����' GROUP BY e.Name ORDER BY COUNT(c.CallID) DESC

-- ������� ������ �� �����������, ������� ����� ������ ����� 250 �����. ���������� � ������� �� ��������� �� � ������� ����. 
SELECT * FROM Cars WHERE Mileage > 250000 AND YEAR(LastRepair) != YEAR(GETDATE())

-- ������� ��� ������ �������� �������������� �������� ����������? 
SELECT Passengers.Name, COUNT(*) AS Calls FROM Passengers
JOIN Calls ON Passengers.PassengerID = Calls.PassengerID
GROUP BY Passengers.Name

-- ������� ������ ���������, ������� �������������� �������� ���������� ������������ ����� ���.
SELECT TOP 1 P.Name, COUNT(C.CallID) as NumberOfTrips FROM Passengers P
JOIN Calls C ON P.PassengerID = C.PassengerID
GROUP BY P.Name
ORDER BY NumberOfTrips DESC

-- ������� ������ � ��������, ������� ����� �� ����� ������� ����������. 
SELECT e.Name, c.Brand, c.ModelName, c.Price FROM Employees e
INNER JOIN Cars c ON e.EmployeeID = c.EmployeeID
WHERE c.Price = (SELECT MAX(Price) FROM Cars)

-- ������� ������ ���������, ������� ������ ����� � ����� � ��� �� ���������. 
SELECT TOP 1 P.*, E.Name AS 'Employee name' FROM Passengers P
JOIN Calls C ON P.PassengerID = C.PassengerID
JOIN Cars CA ON C.CarID = CA.CarID
JOIN Employees E ON CA.EmployeeID = E.EmployeeID
GROUP BY P.PassengerID, P.Name, E.EmployeeID, E.Name, P.PhoneNumber
HAVING COUNT(DISTINCT E.EmployeeID) = 1
ORDER BY COUNT(*) DESC -- ��� ������ ���� ����� � ����� ���������

-- ����� ���������� ����� ������ ������ �������� ������� ��� ����� �����.
SELECT * FROM Cars c WHERE c.Mileage > (SELECT AVG(Mileage) FROM Cars c2 WHERE c2.Brand = c.Brand)

-- �������� � ��������� �� ������ ������ ���������
SELECT * FROM availableDrivers

-- �������� ���� ��������� �� ��������� ����
SELECT * FROM yesterdayDriverSalary
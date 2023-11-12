USE master
USE taxi

-- Вывести данные о водителе, который чаще всех доставляет пассажиров на заданную улицу. 
SELECT TOP 1 e.Name AS DriverName, COUNT(c.CallID) AS TotalDeliveries FROM Employees e
INNER JOIN Cars car ON e.EmployeeID = car.EmployeeID
INNER JOIN Calls c ON c.CarID = car.CarID
WHERE c.DropOffLocation = 'улица Мира' GROUP BY e.Name ORDER BY COUNT(c.CallID) DESC

-- Вывести данные об автомобилях, которые имеют пробег более 250 тысяч. километров и которые не проходили ТО в текущем году. 
SELECT * FROM Cars WHERE Mileage > 250000 AND YEAR(LastRepair) != YEAR(GETDATE())

-- Сколько раз каждый пассажир воспользовался услугами таксопарка? 
SELECT Passengers.Name, COUNT(*) AS Calls FROM Passengers
JOIN Calls ON Passengers.PassengerID = Calls.PassengerID
GROUP BY Passengers.Name

-- Вывести данные пассажира, который воспользовался услугами таксопарка максимальное число раз.
SELECT TOP 1 P.Name, COUNT(C.CallID) as NumberOfTrips FROM Passengers P
JOIN Calls C ON P.PassengerID = C.PassengerID
GROUP BY P.Name
ORDER BY NumberOfTrips DESC

-- Вывести данные о водителе, который ездит на самом дорогом автомобиле. 
SELECT e.Name, c.Brand, c.ModelName, c.Price FROM Employees e
INNER JOIN Cars c ON e.EmployeeID = c.EmployeeID
WHERE c.Price = (SELECT MAX(Price) FROM Cars)

-- Вывести данные пассажира, который всегда ездит с одним и тем же водителем. 
SELECT TOP 1 P.*, E.Name AS 'Employee name' FROM Passengers P
JOIN Calls C ON P.PassengerID = C.PassengerID
JOIN Cars CA ON C.CarID = CA.CarID
JOIN Employees E ON CA.EmployeeID = E.EmployeeID
GROUP BY P.PassengerID, P.Name, E.EmployeeID, E.Name, P.PhoneNumber
HAVING COUNT(DISTINCT E.EmployeeID) = 1
ORDER BY COUNT(*) DESC -- Кто больше всех ездит с одним водителем

-- Какие автомобили имеют пробег больше среднего пробега для своей марки.
SELECT * FROM Cars c WHERE c.Mileage > (SELECT AVG(Mileage) FROM Cars c2 WHERE c2.Brand = c.Brand)

-- сведения о незанятых на данный момент водителях
SELECT * FROM availableDrivers

-- зарплата всех водителей за вчерашний день
SELECT * FROM yesterdayDriverSalary

-- Прибыль за месяц
EXEC CalculateTotalIncomeLastMonth

-- Все вызовы за определенный интервал
EXEC GetPassengersByTimeInterval '2023-11-01', '2023-11-05'

-- Вывести конечные точки пассажира по номеру телефона
EXEC GetPassengerDOL -- НОМЕР
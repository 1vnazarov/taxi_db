USE master
USE taxi

-- ¬ывести данные о водителе, который чаще всех доставл€ет пассажиров на заданную улицу. 
SELECT TOP 1 e.Name AS DriverName, COUNT(c.CallID) AS TotalDeliveries FROM Employees e
INNER JOIN Cars car ON e.EmployeeID = car.EmployeeID
INNER JOIN Calls c ON c.CarID = car.CarID
WHERE c.DropOffLocation = 'улица ћира' GROUP BY e.Name ORDER BY COUNT(c.CallID) DESC

-- ¬ывести данные об автомобил€х, которые имеют пробег более 250 тыс€ч. километров и которые не проходили “ќ в текущем году. 
SELECT * FROM Cars WHERE Mileage > 250000 AND YEAR(LastRepair) != YEAR(GETDATE())

-- —колько раз каждый пассажир воспользовалс€ услугами таксопарка? 
SELECT Passengers.Name, COUNT(*) AS Calls FROM Passengers
JOIN Calls ON Passengers.PassengerID = Calls.PassengerID
GROUP BY Passengers.Name

-- ¬ывести данные пассажира, который воспользовалс€ услугами таксопарка максимальное число раз.
SELECT TOP 1 P.Name, COUNT(C.CallID) as NumberOfTrips FROM Passengers P
JOIN Calls C ON P.PassengerID = C.PassengerID
GROUP BY P.Name
ORDER BY NumberOfTrips DESC

-- ¬ывести данные о водителе, который ездит на самом дорогом автомобиле. 
SELECT e.Name, c.Brand, c.ModelName, c.Price FROM Employees e
INNER JOIN Cars c ON e.EmployeeID = c.EmployeeID
WHERE c.Price = (SELECT MAX(Price) FROM Cars)

-- ¬ывести данные пассажира, который всегда ездит с одним и тем же водителем. 
SELECT TOP 1 P.*, E.Name AS 'Employee name' FROM Passengers P
JOIN Calls C ON P.PassengerID = C.PassengerID
JOIN Cars CA ON C.CarID = CA.CarID
JOIN Employees E ON CA.EmployeeID = E.EmployeeID
GROUP BY P.PassengerID, P.Name, E.EmployeeID, E.Name, P.PhoneNumber
HAVING COUNT(DISTINCT E.EmployeeID) = 1
ORDER BY COUNT(*) DESC --  то больше всех ездит с одним водителем

--  акие автомобили имеют пробег больше среднего пробега дл€ своей марки.
SELECT * FROM Cars c WHERE c.Mileage > (SELECT AVG(Mileage) FROM Cars c2 WHERE c2.Brand = c.Brand)

-- сведени€ о незан€тых на данный момент водител€х
SELECT * FROM availableDrivers

-- зарплата всех водителей за вчерашний день
SELECT * FROM yesterdayDriverSalary